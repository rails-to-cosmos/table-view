# Changelog

Notable changes to `table-view`. Versions follow the `;; Version:` header;
the rails-to-cosmos ELPA archive publishes date-stamped snapshots.

## Unreleased

### Added
- Browser renderer: selection movement is smooth. The marks crossfade in
  place (80ms), and the viewport eases toward the row — one rAF loop that
  covers 30% of the remaining distance per frame and *retargets*, so a
  held movement key converges on the latest row instead of replaying a
  backlog. Any wheel, touch or drag cancels the ease, as does a rows,
  filter or sort change, and `prefers-reduced-motion: reduce` turns off
  both the crossfade and the ease.
- Browser renderer: `select()` paints on an animation frame. It updates
  the state and returns as before (`getSelection()` stays synchronous
  truth), but the window rewrite, marks and scroll it implies coalesce to
  once per frame — a consumer holding a movement key at ~30 calls a
  second went from 117ms and 548KB of HTML per burst to 44ms and 274KB.
  Consumers reading `.tv-sel` from the DOM immediately after `select()`
  now see it on the next frame.
- Browser renderer: filter keys may be **virtual** — SCHEMA's
  producer-defined keys, derived here as org tags: every distinct tag in
  the `tags` column is a key, so `contact:tanik` is tagged `contact` and
  matching `tanik`. Whole-tag membership (`con:` is not `:contact:`), an
  empty value is presence alone, same-key OR and negation as for columns,
  and a column of the same name shadows the tag. A tag prefix completes
  to the tag as a key, with the count of rows holding it.
- Browser renderer: scoped **word completions** in the suggestion list.
  Past two characters, a prefix completes to whole title words paired
  with the tags their rows carry — `tan` offers `contact:tanik` with the
  rows behind it — so every offer is a query that finds something.
  Backed by a lazily built sorted word index with per-word tag postings,
  rebuilt with the text cache; prefix lookup is a binary search.
- Browser renderer handle: `getQuery()` returns the filter query as last
  delivered, and `stripLastToken()` drops the typed text — else the last
  chip — and reapplies, returning whether anything went. For a consumer
  whose own key drives the query rather than recomposing it alongside.
- Browser renderer: cell-level selection. `select(id, col)` stamps one
  `td` with `.tv-cell-sel` beside the row's `.tv-sel`, `getSelection()`
  reports `{id, col}`, and `col` is clamped to the columns that exist
  rather than wrapped. `select(id)` with no column is the whole-row
  selection it always was; both marks are re-derived on every render, so
  they survive a scroll, an upsert and a `setRows` that keeps the id.
- Browser renderer: a committed filter token leaves the box and becomes
  a removable chip beside it. The query is always the chips and the box
  together — Enter commits the box whole, a settling debounce commits
  only the tokens something follows (so a word is never chipped out from
  under the caret), Backspace walks the query down — characters, then
  chips one at a time, then the table — a click takes any chip off, and
  `onFilter` is handed the whole query joined.
- Browser renderer: the filter box speaks SCHEMA.md's query micro-syntax
  — `key:value` predicates (only where `key` names a column, so `:work:`
  and `=code=` stay org text), `"quoted text"`, `-negation`, free text
  otherwise; predicates sharing a key OR, distinct keys and free text and
  negations AND. `TableView.parseQuery(q, columnKeys)` is the tokenizer,
  exported for consumers highlighting the box and producers implementing
  the grammar server-side. Filtering locally applies the parsed query,
  by column type: badge exact, text/number substring, date cells by
  prefix, `none` for empty.
- Browser renderer: a staged suggestion list under the filter box. A
  bare word offers, in order: the column keys it opens; the columns whose
  declared domain holds it as a value (`TODO` → `state:TODO`); and, only
  when nothing exact was found, up to three tags whose rows merely
  contain it, dimmed — exact beats fuzzy, and fuzzy never crowds. After
  `key:` comes that column's value domain (`values`, else the badge
  palette, else the distinct cell values), each shown with the number of
  rows behind it. Arrows move, Tab/Enter accept, Escape dismisses before
  it clears anything, a click accepts without taking focus; only a column
  completion starts highlighted, so Enter still commits the word typed.
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
- **Browser renderer: Enter in the filter box commits the typed token to
  a chip before handing the table over.** With the suggestion list
  closed, Enter chips whatever is typed, delivers the query once, then
  selects the first visible row and blurs — every time, in both local and
  producer-filtered modes, without awaiting a producer reply. A longer
  query is built by coming back to the box, which reopens empty with its
  chips standing: `/ tanik RET / passport RET` is two ANDed tokens, two
  queries sent, and the table focused after each RET. Enter with the list
  open still accepts a suggestion.
- **Browser renderer: the action toolbar is gone.** Actions render on
  the hint line as `KEY label` pairs, the way `table-view.el` prints its
  legend — the keys are the interface, and a button only offered a
  second way to reach what a key already reaches. Double click and
  `onAction` dispatch are unchanged. Consumers styling `.tv-btn` have
  nothing to style.
- Browser renderer: badge cells render as pills — the palette colour
  tints the ground, marks a dot and writes the label.
- Browser renderer: Escape in the filter box walks out one step at a
  time — it closes the suggestion list if one is open, else drops what
  is half-typed (the chips stand), else blurs. It previously cleared and
  blurred in one press.
- Browser renderer: Org links in cells are underlined always, rather
  than only under the pointer.
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
