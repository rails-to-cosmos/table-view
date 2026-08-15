//! Live-layer value types: subscribed window (`Sub`), row snapshot (`RowSnap`), and the prefix/suffix diff.

use serde_json::{json, Value};

/// A client's subscribed window and its last-pushed rows; `gen` bumps on every
/// (re)subscribe so a client showing a stale window rejects the delta.
pub struct Sub {
    pub offset: usize,
    pub limit: usize,
    pub sort: Vec<(String, bool, bool)>, // (column, ascending, nulls_first)
    pub filter: String,
    pub last: Vec<RowSnap>,
    pub client_rev: u64,
    pub gen: u64,
    pub last_matched: usize,
    pub last_total: usize,
}

#[derive(Clone, PartialEq)]
pub struct RowSnap {
    pub id: String,
    pub cells: Value,
}

/// Prefix/suffix diff of two row windows into ops: deletes descend, inserts
/// ascend, applied left-to-right (mirrors the elisp incremental renderer).
pub fn diff_ops(old: &[RowSnap], new: &[RowSnap]) -> Vec<Value> {
    let (no, nn) = (old.len(), new.len());
    let mut p = 0;
    while p < no && p < nn && old[p] == new[p] {
        p += 1;
    }
    let mut s = 0;
    while s < no - p && s < nn - p && old[no - 1 - s] == new[nn - 1 - s] {
        s += 1;
    }
    let mut ops = Vec::new();
    for i in (p..no - s).rev() {
        ops.push(json!({"op": "delete", "index": i}));
    }
    for (i, row) in new.iter().enumerate().take(nn - s).skip(p) {
        ops.push(json!({"op": "insert", "index": i,
                        "row": {"id": row.id, "cells": row.cells}}));
    }
    ops
}
