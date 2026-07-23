# Changelog

Notable changes to `table-view`. Versions follow the `;; Version:` header;
the rails-to-cosmos ELPA archive publishes date-stamped snapshots.

## Unreleased

### Changed
- The action-key legend is multiline: `KEY:Label` tokens wrap to the
  displaying window's width (80 in batch) on their own lines below the
  spec `subtitle`. Line 2 keeps only the status (sort / filter / marks /
  page) with the `?:hide` / `?:help` affordance. `?` now does a full
  re-render (the legend's line count varies); the O(1) mark-gutter hint
  refresh still touches only the status line.

## 0.4.0 — 2026-07-19 (snapshot 20260719.825)

### Added
- `M` marks all visible rows (the filtered set; the loaded page when
  paged). Complements `U`.
- `table-view-layout` — consumer-facing read API for persisting a layout:
  `(:columns <live column alists> :sort <copy of the chain>)`.
- `table-view-set-sort` — set the sort chain (a copy) and apply it; nil
  clears.
- Nulls-first / nulls-last ordering: the `^` cycle is four-stage
  (asc/desc × nulls last/first), encoded in the sort key's cdr; plain
  `(COL . t)` / `(COL)` keys stay valid (nulls-last).
- `g` reverts via `revert-buffer-function` (`table-view-revert`).

### Fixed
- Restored after a bad merge: `table-view-mark-all`, the `?` help toggle
  (`table-view-toggle-help`, `table-view--show-help`) and spec `subtitle`
  rendering had been silently dropped from `table-view.el` while their
  tests survived.

## 0.2.x — 2026-07-14 (snapshot 20260714.945)

- Baseline of the published package: declarative specs, client-side
  sort/filter, marks + bulk actions, paged mode, upsert/`--goto-id`,
  value-fn columns, width caching.
