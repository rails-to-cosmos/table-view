# Changelog

Notable changes to `table-view`. Versions follow the `;; Version:` header;
the rails-to-cosmos ELPA archive publishes date-stamped snapshots.

## Unreleased

### Added
- `web/perf-driver.js` + `make web-perf`: a dependency-free Node driver
  (its own DOM shim) that mounts 13,344 synthetic rows and reports the
  time, HTML bytes and listener count of a mount, a filter keystroke, an
  upsert, a delete and a scroll — and doubles as the renderer's smoke
  test.
- Browser renderer handle: `select(id)` selects a row and scrolls its
  place in the virtual list into view (rows outside the rendered window
  have no element to click), and `getVisible()` returns the filtered and
  sorted rows in display order.
- Browser renderer `onFilter` mount option: the debounced filter box
  hands its query to the producer instead of narrowing locally, for a
  store too large to hold client-side.
- Browser renderer: Enter in the filter box applies it at once
  (cancelling the pending debounce, so the query is delivered exactly
  once), blurs the box and puts the selection on the first visible row
  unless it is already on one — under `onFilter` that last step waits
  for the producer's `setRows`. Escape clears a filled box and blurs.
  Both keys stop at the input rather than bubbling into a consumer's
  keymap; nothing else moves focus or the selection.

### Changed
- The browser renderer no longer rebuilds itself on every keystroke. The
  chrome — bar, filter input, table skeleton, hint — is built once at
  mount; rows are virtualized (the scrolled-to window plus ~15 rows of
  overscan, between two spacer rows); row and header events are
  delegated from the scroll container; the filter is debounced 120ms and
  searches a per-row cached string; the sort comparator is built once
  per re-sort over a cached sorted list, so filtering never re-sorts and
  upsert/delete splice the cached lists in place. At 13,344 rows a
  keystroke went from ~4.4MB of HTML and ~33k listener attaches to
  ~17KB and none. The filter input keeps focus and caret while typing;
  streaming updates keep the scroll position; zebra striping comes from
  a class stamped from the row's global index rather than
  `:nth-child(even)`, which cannot see past the window.
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
