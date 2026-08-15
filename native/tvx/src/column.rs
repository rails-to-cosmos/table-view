//! Columnar storage; string columns are dictionary-encoded with a precomputed `rank[]`.

use crate::wire::{json_i64, json_to_string};
use serde_json::{json, Value};
use std::collections::HashMap;

const WORDS: [&str; 8] = ["core", "lib", "utils", "http", "json", "async", "test", "cli"];

/// Dictionary-encoded string column; `rank[code]` is the codepoint-sorted
/// position, stale exactly when `rank.len() != values.len()` (see CLAUDE.md).
pub struct StrCol {
    pub codes: Vec<u32>,
    pub values: Vec<String>,          // unique display strings, by code
    pub lower: Vec<String>,           // lowercased uniques (substring filter)
    pub rank: Vec<u32>,               // rank[code] = codepoint-sorted position
    pub lookup: HashMap<String, u32>, // value -> code, for interning + empty_code
}

impl StrCol {
    pub fn from(strings: Vec<String>) -> StrCol {
        let mut c = StrCol { codes: Vec::new(), values: Vec::new(), lower: Vec::new(),
                             rank: Vec::new(), lookup: HashMap::new() };
        c.codes = strings.into_iter().map(|s| c.code_of(s)).collect();
        c.rebuild_rank();
        c
    }
    /// Code for VALUE, interning a new unique if unseen.
    pub fn code_of(&mut self, value: String) -> u32 {
        if let Some(&code) = self.lookup.get(&value) {
            return code;
        }
        let code = self.values.len() as u32;
        self.lower.push(value.to_lowercase());
        self.lookup.insert(value.clone(), code);
        self.values.push(value);
        code
    }
    /// Rebuild rank[code] = codepoint-sorted position; Rust byte-Ord = elisp `string<`.
    pub fn rebuild_rank(&mut self) {
        let mut order: Vec<u32> = (0..self.values.len() as u32).collect();
        order.sort_by(|&a, &b| self.values[a as usize].cmp(&self.values[b as usize]));
        self.rank = vec![0u32; self.values.len()];
        for (pos, &code) in order.iter().enumerate() {
            self.rank[code as usize] = pos as u32;
        }
    }
}

pub enum Col {
    Int(Vec<i64>),
    Str(StrCol),
}

impl Col {
    pub fn cell(&self, r: usize) -> Value {
        match self {
            Col::Int(v) => json!(v[r]),
            Col::Str(c) => json!(c.values[c.codes[r] as usize]),
        }
    }
    /// Total-ordered u64 key matching the elisp comparator (signed ints, codepoint strings via rank).
    pub fn order_key(&self, r: usize) -> u64 {
        match self {
            Col::Int(v) => (v[r] as u64) ^ (1u64 << 63),
            Col::Str(c) => c.rank[c.codes[r] as usize] as u64,
        }
    }
    /// Dictionary code of the empty-string ("null") cell, if any; always None for
    /// a `Col::Int` (missing ingests as 0, so the nulls flag is inert there).
    pub fn empty_code(&self) -> Option<u32> {
        match self {
            Col::Int(_) => None,
            Col::Str(c) => c.lookup.get("").copied(),
        }
    }
    pub fn is_empty_cell(&self, r: usize, empty_code: Option<u32>) -> bool {
        matches!((self, empty_code), (Col::Str(c), Some(ec)) if c.codes[r] == ec)
    }
    pub fn set(&mut self, r: usize, v: &Value) {
        match self {
            Col::Int(col) => col[r] = json_i64(v),
            Col::Str(c) => {
                let code = c.code_of(json_to_string(v));
                c.codes[r] = code;
            }
        }
    }
    pub fn push(&mut self, v: &Value) {
        match self {
            Col::Int(col) => col.push(json_i64(v)),
            Col::Str(c) => {
                // A missing (Null) string cell stores "" (matching the build path).
                let s = if v.is_null() { String::new() } else { json_to_string(v) };
                let code = c.code_of(s);
                c.codes.push(code);
            }
        }
    }
}

/// Synthetic column for the `gen` source; the elisp benchmark replicates this formula.
pub fn gen_col(key: &str, num: bool, n: usize) -> Col {
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
