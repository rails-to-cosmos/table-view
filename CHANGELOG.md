# Changelog

Notable changes to `table-view`. Versions follow the `;; Version:` header;
the rails-to-cosmos ELPA archive publishes date-stamped snapshots.

## Unreleased

### Added
- Browser renderer: Enter in the suggestion list is stage-aware.
  Completing a **key** (`ta` → `tag:`) keeps focus and reopens the list at
  that key's values with their counts, since `tag:` is half a predicate;
  only a **finished** token sends Enter on to commit and hand the table
  over. Values are no longer preselected, so Enter with `tag:` typed and
  nothing chosen commits the presence predicate as written rather than
  the first value. Tab is unchanged — accept and stay, at either stage.
- Browser renderer: touch support. On `pointer: coarse` the targets grow
  to ~44px — rows, suggestion rows and chips — by padding rather than a
  set height, so rows stay uniform and the *measured* row height carries
  the change into the virtualization and scroll arithmetic unchanged; the
  filter input reaches 16px so iOS does not zoom on focus; and a chip's
  remove mark no longer waits for a hover. A long press (500ms, finger
  still, cancelled by 10px of drift or any scroll) runs the row's default
  action, selecting the cell under the finger first, and swallows only
  the touchend that completed it so no click or context menu follows.
- Browser renderer: the filter box's placeholder teaches the query
  language rather than naming the box — `tag:book · state:active ·
  -word · "some phrase"`, in every mode, muted. Four concrete forms
  instead of a description of a grammar; keys stay out of it, the legend
  and the suggestion list already teaching those.
- Browser renderer: **fixed** — the chip row's collapsed state was
  stamped both at creation and by `renderChips`, so a mount that never
  called the latter was collapsed by the former. One owner now: mount
  calls `renderChips()` unconditionally, so the path a raw mount takes
  and the path the checks drive are the same path.
- Browser renderer: the palette filters on **commit alone**. Typing moves
  the suggestion list and delivers nothing — no debounce, no per-keystroke
  query — and RET or a chip strip is what reaches the rows. Narrowing a
  table as each character lands animates something the typist is looking
  away from, and every half-written token is a query of its own. The
  resident bar and omnibox modes keep their 120 ms debounce.
- Browser renderer: a delivery that would repeat the last one is skipped.
  Local filtering already worked this out for itself; a producer had no
  way to, and was being asked the same question twice by Escape dropping
  text it never heard, by a commit on an unchanged box, and by a debounce
  settling where it settled before.
- Browser renderer: the selected row is a **background alone**, in the
  theme's secondary highlight — `#F0FFF0` light, `#373D4F` dark — with
  the inset accent stripe removed. Golden is the applied filter's colour
  and stays on the chips; the cursor row must not read as the same thing.
- Browser renderer: where the browser eats **C-n**/**C-p** before the page
  sees them (Chrome and family bind them to new window and print), the
  suggestion list now says so in a footer note rather than leaving two of
  its four documented keys silently dead. Firefox, webview shells and
  Safari are told nothing, having no such problem.
- Browser renderer: `palette: true` mount option and `openFilter()` /
  `closeFilter()` on the handle — the filter becomes something you
  summon rather than something resident. The page keeps only the chip
  row, so an unfiltered table carries no filter chrome at all, and
  `openFilter()` raises a centred overlay (upper third, `min(560px,
  80vw)`, hairline border, `z-index` 90/91 so a consumer's own modal at
  100+ still wins) holding the input and its completions. Every ladder
  ends one step further out: RET commits and dissolves, Escape goes list
  → typed text → dissolve, and a click on the backdrop is Escape.
  Backspace walks the chips off and then stops — inside the palette a key
  that erases is not the one that leaves, so an emptied box stays open
  and focused however often it is pressed. On the page, where there is no
  overlay to dismiss, Backspace still ends by handing the table over. Applied chips render in the theme's
  selection golden, black on `#FFD600`. It supersedes `omnibox`, which
  stays for consumers that want the control on the page.
- Browser renderer: `omnibox: true` mount option — the filter becomes the
  bar's centrepiece: no title, no placeholder, the input takes the full
  width, and the applied chips move to a row of their own beneath it that
  collapses to nothing when empty. Without it the bar is unchanged.
- Browser renderer: `initialQuery` mount option — a query a consumer is
  *restoring* rather than running. It arrives as committed chips with the
  box empty and nothing delivered, so a remount after a reconnect or a
  `?q=` load puts the filter back intact. Without it the only way in was
  `input.value`, which left the existing chips looking as though they had
  vanished into the box.
- Browser renderer: both themes are now danneskjold's, and text roles are
  held to WCAG floors — body 7:1, muted/hint/dimmed and chip/dropdown
  text 4.5:1, selected-row text 7:1 — verified in the driver. Three
  values are lightness-only adjustments of the theme's own (hue held):
  light muted `#7F8C8D`→`#667071`, light accent `#4CB5F5`→`#31769F`.
  Borders are exempt and stay hairlines: 1px, `#E3E6EA` light and
  `#2a2d3d` dark.
- Browser renderer: badge colours are made legible per theme. A
  producer's hex is the badge's identity; the renderer darkens or
  lightens it — hue held — until the pill's label clears 4.5:1 against
  its own tint, and redraws when the theme flips.
- Browser renderer: **C-n**/**C-p** move the suggestion list while it is
  open and the filter has focus, alongside the arrows. Chrome-family
  browsers take C-n for a new window before the page sees it, so the
  arrows remain the fallback there; Firefox and webview shells deliver
  both. With the list closed the keys are untouched. Tab completes and
  stays in the box; Enter completes and then commits, so picking a
  suggestion and running it is one keystroke and one delivery.
- Browser renderer: a **danneskjold light palette**, mapped role for role
  from the theme's own `light-*` block (`--tv-bg` #FFFFFF, `--tv-fg`
  #000000, `--tv-alt` #F8F8FF, `--tv-border` #BDC3C7, `--tv-muted`
  #7F8C8D, `--tv-sel` #FFD600, `--tv-accent` #4CB5F5) plus a new
  `--tv-hover` role (#FAFAFA light). Dark is untouched.
- Browser renderer: selection movement is smooth. The marks crossfade in
  place (80ms), and the viewport eases toward the row — one rAF loop that
  covers 30% of the remaining distance per frame and *retargets*, so a
  held movement key converges on the latest row instead of replaying a
  backlog. Any wheel, touch or drag cancels the ease, as does a rows,
  filter or sort change, and `prefers-reduced-motion: reduce` turns off
  both the crossfade and the ease. The target keeps a margin under the
  cursor (Emacs `scroll-margin` / vim `scrolloff`): down stops the row's
  foot at two thirds of the viewport, up stops its head at one third,
  clamping at both ends. A click never scrolls.
- Browser renderer: `select()` paints on an animation frame. It updates
  the state and returns as before (`getSelection()` stays synchronous
  truth), but the window rewrite, marks and scroll it implies coalesce to
  once per frame — a consumer holding a movement key at ~30 calls a
  second went from 117ms and 548KB of HTML per burst to 44ms and 274KB.
  Consumers reading `.tv-sel` from the DOM immediately after `select()`
  now see it on the next frame.
- Browser renderer: **fixed** — one tag cell that was not a delimited
  list cost the whole column its vocabulary. Multi-valued detection
  asked every sampled cell to be well formed, so a single import or
  hand-edited headline anywhere in the sample decided a corpus had no
  tags at all: no tag keys, no values under them, no completions, and
  the raw `:a:b:` cells offered as values instead — `alb` returning
  nothing for `tag:alberblanc`. Detection now weighs evidence both ways:
  two or more org-shaped cells make the column, a cell holding a single
  bare value cannot argue either way (it has no delimiter to show, and
  reads as the one value it is), and only a colon arranged some other
  way — a time, a URL — rules the column out.
- Browser renderer: same-key predicates group by the field's **arity** —
  a single-valued field ORs (`state:TODO state:DONE` is either), a
  multi-valued one ANDs (`tag:a tag:b` is a row carrying both,
  GitHub-label style), and repeated virtual tag keys AND likewise. A
  column counts as multi-valued when its cells hold delimited lists,
  decided by their shape rather than by the column's name — so glance's
  rename from `tags` to `tag` needed nothing here.
- Browser renderer: the selection keeps its **place** when the row under
  it goes. Filtered away, deleted or paged past, it stays at that visual
  index (clamped to what is left) instead of vanishing, so the next
  keypress carries on from where the eye is.
- Browser renderer: Backspace's chip-strip and hand-over ignore key
  repeat — one press, one part. Holding it deletes the typed characters
  natively and then stops at the first chip.
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
  Backed by a sorted word index with per-word tag postings, built when the
  rows settle rather than when someone types — 200ms of quiet then an idle
  turn, re-queued by an edit burst, and built synchronously only if a
  keystroke beats it. Prefix lookup is a binary search.
- Browser renderer: domain-value completions match by **prefix** as well
  as in full — `TOD` reaches `state:TODO`, `alberbl` reaches
  `tags:alberblanc` (the tags column's values are the tags themselves).
  Exact hits rank first and suppress the dimmed word completions; a
  prefix-only hit is a guess like they are, so they stand together.
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
  tints the ground and writes the label.
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
