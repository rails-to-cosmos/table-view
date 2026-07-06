//! tvx — table-view native backend.
//! JSON-RPC 2.0 over stdio (Content-Length framed, like jsonrpc.el / LSP).
//! Methods: initialize, open, window, close.
//!
//! Phase 2 data model: dictionary-encoded string columns with a precomputed
//! `rank[]` array (string sort/filter become u32 work over uniques, not rows);
//! one-pass stable multi-key sort with a row-index tiebreak; substring filter
//! over dictionary uniques with numeric-column skip.  Codepoint collation and
//! signed-int order match table-view's elisp comparators (verified by the
//! differential test).  See docs/proposals/native-backend.org.

use serde_json::{json, Value};
use std::collections::HashMap;
use std::io::{self, Read, Write};

const PROTOCOL: u32 = 1;
const VERSION: &str = env!("CARGO_PKG_VERSION");

/// Dictionary-encoded string column: rows hold a u32 code into the unique table.
struct StrCol {
    codes: Vec<u32>,
    values: Vec<String>, // unique display strings, by code
    lower: Vec<String>,  // lowercased uniques (substring filter)
    rank: Vec<u32>,      // rank[code] = sorted position (codepoint order) => cmp is u32
}

impl StrCol {
    fn from(strings: Vec<String>) -> StrCol {
        let mut lookup: HashMap<String, u32> = HashMap::new();
        let mut values: Vec<String> = Vec::new();
        let codes: Vec<u32> = strings
            .into_iter()
            .map(|s| *lookup.entry(s.clone()).or_insert_with(|| {
                values.push(s);
                (values.len() - 1) as u32
            }))
            .collect();
        // rank[code] = position of that unique in codepoint-sorted order.
        // String Ord is bytewise UTF-8 = codepoint order = elisp `string<'.
        let mut order: Vec<u32> = (0..values.len() as u32).collect();
        order.sort_by(|&a, &b| values[a as usize].cmp(&values[b as usize]));
        let mut rank = vec![0u32; values.len()];
        for (pos, &code) in order.iter().enumerate() {
            rank[code as usize] = pos as u32;
        }
        let lower = values.iter().map(|s| s.to_lowercase()).collect();
        StrCol { codes, values, lower, rank }
    }
}

enum Col {
    Int(Vec<i64>),
    Str(StrCol),
}

impl Col {
    fn cell(&self, r: usize) -> Value {
        match self {
            Col::Int(v) => json!(v[r]),
            Col::Str(c) => json!(c.values[c.codes[r] as usize]),
        }
    }
    /// Order key for a row: total-ordered u64 so `cmp` matches the elisp comparator.
    fn order_key(&self, r: usize) -> u64 {
        match self {
            Col::Int(v) => (v[r] as u64) ^ (1u64 << 63), // signed total order
            Col::Str(c) => c.rank[c.codes[r] as usize] as u64,
        }
    }
}

struct Table {
    ids: Vec<String>,
    keys: Vec<String>,
    numeric: Vec<bool>,
    cols: Vec<Col>,
    cache: Vec<(String, Vec<u32>)>, // (sort|filter) -> view; tiny LRU
}

const WORDS: [&str; 8] = ["core", "lib", "utils", "http", "json", "async", "test", "cli"];

impl Table {
    fn build(columns: &[Value], source: &Value) -> Result<Table, String> {
        let keys: Vec<String> = columns.iter()
            .map(|c| c.get("key").and_then(Value::as_str).unwrap_or("").to_string())
            .collect();
        let numeric: Vec<bool> = columns.iter()
            .map(|c| c.get("type").and_then(Value::as_str) == Some("number"))
            .collect();

        let kind = source.get("kind").and_then(Value::as_str).unwrap_or("");
        let (ids, cols) = match kind {
            "gen" => {
                let n = source.get("n").and_then(Value::as_u64).unwrap_or(0) as usize;
                let ids = (0..n).map(|i| format!("r{i}")).collect();
                let cols = keys.iter().zip(&numeric)
                    .map(|(k, &num)| gen_col(k, num, n))
                    .collect();
                (ids, cols)
            }
            "rows" => {
                let rows = source.get("rows").and_then(Value::as_array).ok_or("source.rows missing")?;
                let ids = rows.iter().map(|r| r.get("id").map(json_to_string).unwrap_or_default()).collect();
                let cols = keys.iter().zip(&numeric).map(|(k, &num)| {
                    if num {
                        Col::Int(rows.iter().map(|r| cell_i64(r, k)).collect())
                    } else {
                        Col::Str(StrCol::from(rows.iter().map(|r| cell_str(r, k)).collect()))
                    }
                }).collect();
                (ids, cols)
            }
            other => return Err(format!("unknown source kind: {other}")),
        };
        Ok(Table { ids, keys, numeric, cols, cache: Vec::new() })
    }

    fn col_index(&self, key: &str) -> Option<usize> {
        self.keys.iter().position(|k| k == key)
    }

    fn view(&mut self, sort: &[(String, bool)], filter: &str) -> Result<Vec<u32>, String> {
        let cache_key = format!("{sort:?}|{filter}");
        if let Some((_, v)) = self.cache.iter().find(|(k, _)| *k == cache_key) {
            return Ok(v.clone());
        }
        // Validate sort columns up front.
        let sort_ci: Vec<(usize, bool)> = sort.iter()
            .map(|(k, asc)| self.col_index(k).map(|ci| (ci, *asc)).ok_or_else(|| format!("no column: {k}")))
            .collect::<Result<_, _>>()?;

        let mut v = self.filter_rows(filter);
        if !sort_ci.is_empty() {
            // Precompute per-key order-key arrays over the surviving rows' RowIx.
            // Stable sort_by + a final RowIx tiebreak => deterministic and
            // load-order stable (ties keep insertion order, matching elisp).
            let keys: Vec<(&Col, bool)> = sort_ci.iter().map(|&(ci, asc)| (&self.cols[ci], asc)).collect();
            v.sort_by(|&a, &b| {
                for (col, asc) in &keys {
                    let (ka, kb) = (col.order_key(a as usize), col.order_key(b as usize));
                    let ord = if *asc { ka.cmp(&kb) } else { kb.cmp(&ka) };
                    if ord != std::cmp::Ordering::Equal {
                        return ord;
                    }
                }
                a.cmp(&b)
            });
        }
        self.cache.push((cache_key, v.clone()));
        if self.cache.len() > 4 {
            self.cache.remove(0);
        }
        Ok(v)
    }

    /// Rows matching FILTER (empty = all).  Substring is tested against string
    /// columns' dictionary uniques (O(uniques)); numeric columns are consulted
    /// only when the needle looks numeric -- a non-numeric needle cannot match a
    /// decimal string, matching the elisp joined-cell filter.
    fn filter_rows(&self, filter: &str) -> Vec<u32> {
        let n = self.ids.len();
        if filter.is_empty() {
            return (0..n as u32).collect();
        }
        let needle = filter.to_lowercase();
        let numeric_needle = needle.bytes().all(|b| b.is_ascii_digit() || matches!(b, b'.' | b'-' | b'e'));
        // Per string column, a bitset over codes: does that unique contain the needle?
        let code_hit: Vec<Option<Vec<bool>>> = self.cols.iter().map(|c| match c {
            Col::Str(s) => Some(s.lower.iter().map(|u| u.contains(&needle)).collect()),
            Col::Int(_) => None,
        }).collect();
        (0..n as u32).filter(|&i| {
            let i = i as usize;
            self.cols.iter().enumerate().any(|(ci, c)| match c {
                Col::Str(s) => code_hit[ci].as_ref().unwrap()[s.codes[i] as usize],
                Col::Int(v) => numeric_needle && v[i].to_string().contains(&needle),
            })
        }).collect()
    }

    fn row_json(&self, r: usize) -> Value {
        let cells: serde_json::Map<String, Value> = self.keys.iter().enumerate()
            .map(|(ci, k)| (k.clone(), self.cols[ci].cell(r)))
            .collect();
        json!({"id": self.ids[r], "cells": Value::Object(cells)})
    }
}

fn gen_col(key: &str, num: bool, n: usize) -> Col {
    if num {
        if key == "num" {
            Col::Int((0..n).map(|i| ((i as i64).wrapping_mul(2654435761) % 100_000).abs()).collect())
        } else {
            Col::Int((0..n).map(|i| i as i64).collect())
        }
    } else {
        Col::Str(StrCol::from((0..n).map(|i| format!("{}-{:05}", WORDS[i % 8], i)).collect()))
    }
}

fn json_to_string(v: &Value) -> String {
    match v { Value::String(s) => s.clone(), other => other.to_string() }
}
fn cell_str(row: &Value, key: &str) -> String {
    row.get("cells").and_then(|c| c.get(key)).map(json_to_string).unwrap_or_default()
}
fn cell_i64(row: &Value, key: &str) -> i64 {
    match row.get("cells").and_then(|c| c.get(key)) {
        Some(Value::Number(n)) => n.as_i64().unwrap_or_else(|| n.as_f64().unwrap_or(0.0) as i64),
        Some(Value::String(s)) => s.parse().unwrap_or(0),
        _ => 0,
    }
}

fn parse_sort(v: &Value) -> Vec<(String, bool)> {
    v.as_array().map(|a| a.iter().filter_map(|p| {
        let p = p.as_array()?;
        Some((p.first()?.as_str()?.to_string(), p.get(1).and_then(Value::as_bool).unwrap_or(true)))
    }).collect()).unwrap_or_default()
}

fn main() {
    if std::env::args().any(|a| a == "--version" || a == "-V") {
        println!("tvx {VERSION} protocol {PROTOCOL}");
        return;
    }
    let mut tables: HashMap<u64, Table> = HashMap::new();
    let mut next_handle: u64 = 1;
    let stdin = io::stdin();
    let mut reader = stdin.lock();

    while let Some(msg) = read_frame(&mut reader) {
        let id = msg.get("id").cloned().unwrap_or(Value::Null);
        let method = msg.get("method").and_then(Value::as_str).unwrap_or("");
        let params = msg.get("params").cloned().unwrap_or(json!({}));

        let result: Result<Value, (i64, String)> = match method {
            "initialize" => {
                let want = params.get("protocol");
                let min = want.and_then(|p| p.get("min")).and_then(Value::as_u64).unwrap_or(1) as u32;
                let max = want.and_then(|p| p.get("max")).and_then(Value::as_u64).unwrap_or(1) as u32;
                if PROTOCOL < min || PROTOCOL > max {
                    Err((-32100, format!("protocol mismatch: server {PROTOCOL}, client [{min},{max}]")))
                } else {
                    Ok(json!({"serverInfo": {"name": "tvx", "version": VERSION}, "protocol": PROTOCOL,
                              "wire": "json", "capabilities": {"delta": false, "aggregate": false,
                                                               "patch": false, "count": false, "progress": false}}))
                }
            }
            "open" => {
                let empty = vec![];
                let columns = params.get("columns").and_then(Value::as_array).unwrap_or(&empty);
                let source = params.get("source").cloned().unwrap_or(json!({}));
                match Table::build(columns, &source) {
                    Ok(t) => {
                        let h = next_handle; next_handle += 1;
                        let total = t.ids.len();
                        tables.insert(h, t);
                        Ok(json!({"handle": h, "gen": 0, "rev": 0, "total": total, "protocol": PROTOCOL}))
                    }
                    Err(e) => Err((-32602, e)),
                }
            }
            "window" => {
                let h = params.get("handle").and_then(Value::as_u64).unwrap_or(0);
                match tables.get_mut(&h) {
                    None => Err((-32000, format!("no such handle {h}"))),
                    Some(t) => {
                        let offset = params.get("offset").and_then(Value::as_u64).unwrap_or(0) as usize;
                        let limit = params.get("limit").and_then(Value::as_u64).unwrap_or(50) as usize;
                        let sort = parse_sort(params.get("sort").unwrap_or(&Value::Null));
                        let filter = params.get("filter").and_then(Value::as_str).unwrap_or("").to_string();
                        let total = t.ids.len();
                        match t.view(&sort, &filter) {
                            Err(e) => Err((-32004, e)),
                            Ok(view) => {
                                let matched = view.len();
                                let end = (offset + limit).min(matched);
                                let rows: Vec<Value> = if offset < matched {
                                    view[offset..end].iter().map(|&i| t.row_json(i as usize)).collect()
                                } else { vec![] };
                                Ok(json!({"gen": 0, "rev": 0, "offset": offset, "total": total,
                                          "matched": matched, "hasNext": end < matched, "rows": rows}))
                            }
                        }
                    }
                }
            }
            "close" => {
                tables.remove(&params.get("handle").and_then(Value::as_u64).unwrap_or(0));
                Ok(json!({"ok": true}))
            }
            "shutdown" => Ok(json!({})),
            other => Err((-32601, format!("unknown method: {other}"))),
        };

        if id != Value::Null {
            let resp = match result {
                Ok(r) => json!({"jsonrpc": "2.0", "id": id, "result": r}),
                Err((code, msg)) => json!({"jsonrpc": "2.0", "id": id, "error": {"code": code, "message": msg}}),
            };
            write_frame(&resp);
        }
    }
}

fn read_frame<R: Read>(reader: &mut R) -> Option<Value> {
    let mut header = Vec::new();
    let mut byte = [0u8; 1];
    loop {
        if reader.read_exact(&mut byte).is_err() { return None; }
        header.push(byte[0]);
        if header.ends_with(b"\r\n\r\n") { break; }
    }
    let mut content_length = None;
    for line in String::from_utf8_lossy(&header).split("\r\n") {
        if let Some(v) = line.strip_prefix("Content-Length:") {
            content_length = v.trim().parse().ok();
        }
    }
    let len: usize = content_length?;
    let mut buf = vec![0u8; len];
    reader.read_exact(&mut buf).ok()?;
    serde_json::from_slice(&buf).ok()
}

fn write_frame(v: &Value) {
    let body = serde_json::to_vec(v).unwrap();
    let mut out = io::stdout().lock();
    let _ = write!(out, "Content-Length: {}\r\n\r\n", body.len());
    let _ = out.write_all(&body);
    let _ = out.flush();
}

#[cfg(test)]
mod tests {
    use super::*;

    fn cols() -> Vec<Value> {
        vec![json!({"key":"name","type":"text"}), json!({"key":"num","type":"number"})]
    }
    fn rows(specs: &[(&str, &str, i64)]) -> Value {
        json!({"kind":"rows","rows": specs.iter().map(|(id,name,num)|
            json!({"id":id,"cells":{"name":name,"num":num}})).collect::<Vec<_>>()})
    }
    fn ids(t: &mut Table, sort: &[(String, bool)], filter: &str) -> Vec<String> {
        t.view(sort, filter).unwrap().iter().map(|&i| t.ids[i as usize].clone()).collect()
    }

    #[test]
    fn string_sort_codepoint() {
        let mut t = Table::build(&cols(), &rows(&[("a","banana",1),("b","apple",2),("c","cherry",3)])).unwrap();
        assert_eq!(ids(&mut t, &[("name".into(), true)], ""), ["b","a","c"]); // apple<banana<cherry
    }
    #[test]
    fn numeric_sort_signed() {
        let mut t = Table::build(&cols(), &rows(&[("a","x",5),("b","y",-3),("c","z",0)])).unwrap();
        assert_eq!(ids(&mut t, &[("num".into(), true)], ""), ["b","c","a"]); // -3<0<5
    }
    #[test]
    fn desc_ties_keep_insertion_order() {
        // three rows tie on num=1 -> desc must keep a,b,c (load order), not reverse
        let mut t = Table::build(&cols(), &rows(&[("a","p",1),("b","q",1),("c","r",1)])).unwrap();
        assert_eq!(ids(&mut t, &[("num".into(), false)], ""), ["a","b","c"]);
    }
    #[test]
    fn filter_numeric_skip() {
        let mut t = Table::build(&cols(), &rows(&[("a","lib",12),("b","core",34)])).unwrap();
        assert_eq!(ids(&mut t, &[], "lib"), ["a"]);          // string hit
        assert_eq!(ids(&mut t, &[], "34"), ["b"]);           // numeric needle hits the int col
        assert_eq!(ids(&mut t, &[], "zzz"), Vec::<String>::new());
    }
    #[test]
    fn multi_key_stable() {
        let mut t = Table::build(&cols(), &rows(&[("a","same",2),("b","same",1),("c","diff",5)])).unwrap();
        // name asc, then num asc: diff, then same rows by num
        assert_eq!(ids(&mut t, &[("name".into(), true), ("num".into(), true)], ""), ["c","b","a"]);
    }
}
