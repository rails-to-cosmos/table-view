# Changelog

Notable changes to `table-view`. Versions follow the `;; Version:` header;
the rails-to-cosmos ELPA archive publishes date-stamped snapshots.

## Unreleased

### Added
- Browser renderer: **row marking**, behind `marks: true` — dired's, and
  `table-view.el`'s. A leading checkbox column, chrome the way the pager
  is, so `columns` and `cells` are untouched and SCHEMA.md goes on
  calling marking renderer-local; blank header, org's own `[ ]`/`[X]` for
  a box (drawn from the row's class, so the state has one home and a held
  movement key rewrites no cell), and a click on it toggles that row
  without moving the selection. On a coarse pointer the box widens to a
  44px target and takes the tap, the long press staying the row's.
  Marks are keyed by `id` and held apart from the rows, so one survives a
  `setRows`, an upsert, a filter that hides its row, a page it is not on
  and a re-sort; `deleteRow` and a delta's `delete` take the mark with the
  row, `setView` drops all of them. Handle: `toggleMark(id)` →
  its new state, `getMarked()` (rows on show first in display order, then
  the hidden ones in mark order), `clearMarks()`, `markedCount()`. The
  status line leads with `N marked · `, counting every mark rather than
  the shown ones. One predicate gates the column, the wash and the count,
  so without the option there is nothing to hide rather than something
  hidden. A marked row wears a wash of `--tv-muted` — neither the chips'
  frost (the applied filter) nor `--tv-sel` (the cursor), whose rule
  follows so a row that is both reads as the cursor and keeps its box; it
  replaces the zebra stripe rather than layering over it. The wash is
  faint because the tag ink *is* `--tv-muted`, so each theme washes only
  as far as that ink stays above 4.5:1 on it (light 4.6, dark 6.3).
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
- Browser renderer: **fixed** — a title word wearing punctuation composed
  a suggestion that read like a tag. "Episode 84: Dick Gabriel on Lisp:"
  indexed `lisp:` with its colon, so a scoped completion rendered
  `:article:lisp:`, tag-shaped, for a `:lisp:` tag that does not exist.
  Word extraction now strips edge punctuation (`:,.;!?"'()[]{}`) before
  indexing, and the same cleanup runs on the typed prefix so the two
  forms agree; interior hyphens and underscores stay. A colon in a
  suggestion now comes from a real tag or from nowhere.
- Browser renderer: **fixed** — the multi-valued-column verdict was
  memoized and never invalidated, so a table mounted before its rows
  arrived (an empty store, a query matching nothing, a mount filled by
  `setRows` a moment later) decided there was no such column and never
  looked again: no tag keys, `tag:a tag:b` ORing instead of intersecting,
  and the raw `:a:b:` cells offered as values. It now dies with the
  vocabulary it belongs to.
- Browser renderer: **fixed** — date-column detection vetoed on the first
  cell it could not parse, so one org-spelled stamp in a `scheduled`
  column cost the whole column its prefix matching. It now weighs
  evidence the way multi-valued detection does: dates for, cells that
  could not be dates against, and anything that might be one abstaining.
- Browser renderer: tags have a reading of their own — small muted text,
  lowercased, several separating on a middot, with no box of any kind.
  That completes a three-role grammar: a filled pill is a state, a frost
  chip is an applied filter, and a tag is neither. The multi-valued
  column's cells show one per value and the suggestion list wears a tag
  the same way; applied-filter chips stay uniformly frost, filter
  identity outranking tag identity there. The lowercasing is presentation
  (a stylesheet transform), so a copy takes the case the file holds while
  what is shown is the form a query spells.
- Browser renderer: **paging**. `pageSize` shows the filtered, sorted set
  a page at a time, with the window, spacers, scroll band and
  `getVisible()` all operating inside the page — column widths still
  measure the whole filtered set, so they hold still as pages turn. The
  pager is part of the status line (`1–100 of 12,870 · ‹ prev · next ›`)
  and vanishes entirely at one page, leaving the line byte-identical to
  what it is without `pageSize`. A query or sort change reads from the
  top again; `setRows` and upserts clamp rather than stranding the reader
  past the last page.
- Browser renderer: `selectStep(±1)` moves the selection a row and off
  the end of a page onto the next — first row going forward, last going
  back, carrying the column, with the scroll band placing the arrival.
  `nextPage()`, `previousPage()` and `pageInfo()` round out the handle.
  No keys are bound renderer-side; a consumer binds its own to these.
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
  Backspace goes no further than the characters: the applied chips are on
  the page behind the overlay, not in the box being edited, so the key
  cannot reach them and an emptied box is a stable no-op however often it
  is pressed. Chips are removed there by their own click, or by the key a
  consumer binds over the table. On the page, where the box and the chips
  sit together, Backspace still walks the chips off and ends by handing
  the table over. Applied chips render in the theme's frost (see the
  entry under Changed). It supersedes `omnibox`, which stays for
  consumers that want the control on the page.
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
  #000000, `--tv-alt` #F8F8FF, `--tv-border` #E3E6EA, `--tv-muted`
  #667071, `--tv-sel` #F0FFF0, `--tv-accent` #31769F) plus a new
  `--tv-hover` role (#FAFAFA). Four roles are lightness-only adjustments
  of the theme's own: `--tv-muted` and `--tv-accent` to clear WCAG's
  4.5:1 against the light ground, `--tv-border` to stop a hairline
  reading as a rule, and `--tv-sel` because golden is the applied
  filter's colour and the cursor row must not read as the same thing.
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
  when nothing exact was found, up to five tags whose rows merely
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
- Browser renderer: Enter and Escape in the filter box are ladders, not
  single actions. **Enter** cancels the pending debounce so the query is
  delivered exactly once, commits the typed text to a chip, then puts the
  selection on the first visible row and blurs — every time, and under
  `onFilter` without waiting for the producer's `setRows`. **Escape**
  walks out one step per press: close the suggestion list, drop the typed
  text, drop the chips, leave. Both keys stop at the input rather than
  bubbling into a consumer's keymap. (The stage-aware refinement for a
  half-typed `key:` and the palette's one-step-further ladder are the
  entries above; this is the shape they refine.)

### Added
- Browser renderer: **row flags** — `flagRow(id)` (toggles, returning the
  state it landed in), `unflagRow(id)`, `getFlagged()`, `clearFlags()`
  and `flaggedCount()`. A flag is a *pending* action, the two-press `d` a
  consumer drives before confirming, where a mark is a *standing*
  selection; they are separate id-keyed sets, so a row can carry both and
  neither clear touches the other. Flags ride the existing `marks: true`
  opt-in — one chrome opt-in for both, the leading box column being where
  either is read — and share its whole survival matrix: a filter, a page,
  a sort, `setRows` and an upsert keep them; `deleteRow`, a delta delete
  and `setView` take them. A flagged row wears an amber wash (one
  `AMBER` constant, per-theme strengths of 22% light and 26% dark, tuned
  so `--tv-muted` stays above 4.5:1 on it either way) plus an amber left
  edge on the box cell — a second channel, since the background is one
  slot and the cursor wins it. Precedence there is cursor, flag, mark,
  zebra, which is the rules' source order. Either count nonzero leads the
  hint line, the pending one first: `2 flagged · 3 marked · …`.
- Browser renderer handle: **`markAll()`** marks every row of the current
  filtered set — all of it, not the page on show, since a filter is what
  the reader narrowed to and a page is only how much of it fits at once;
  unfiltered, that is every row. Idempotent (already-marked rows stay
  marked), returns how many carry a mark afterwards, updates the hint
  line's count, and answers 0 without doing anything when `marks` is off.
  Mirrors the mark-all gap left open when row marking landed.
- Browser renderer: **`actionHints: false`** mount option drops the
  `KEY label` pairs from the hint line, leaving the counts, the sort and
  the pager where they were. For a consumer that prints its own keymap
  and would otherwise print a second, disagreeing one. Presentation only
  — the actions still dispatch — and the default is to show them, so a
  consumer that says nothing sees the line it always saw.

### Removed
- The **outline guides** experiment and SCHEMA's row `depth` field, both
  added earlier in this same unreleased cycle and neither ever shipped:
  the `tree: true` mount option, the guide drawing and its degradations,
  the `depth` row field with its section, and the 28 driver checks that
  covered them. The consumer they were built for moved to serving
  first-level rows only, which needs no nesting hint at all, and a
  contract field with no producer behind it and one renderer ignoring it
  is a cost with nothing on the other side. Nothing depended on it —
  `getVisible`, `selectStep` and the pager are untouched, and a view that
  never sent `depth` rendered identically before and after, which is why
  this is a removal rather than a deprecation.

### Changed
- **Browser renderer: applied-filter chips are a frost wash, not a solid
  golden slab.** The role's colour moves from the theme's selection
  golden (`#FFD600` with black ink) to its **frost** (`#D0E1F9`,
  danneskjold's own link colour): the chip ground is frost at a low alpha
  over the theme's background, the hairline is the same frost at a little
  more, and the ink is the ordinary `--tv-fg` rather than black. A solid
  golden chip was the loudest thing on the page, and with a default
  filter resident from boot it took the attention the table wants; frost
  is calm by nature and still an identity, being used for applied filters
  and nothing else. The alpha is theme-split (`.45` light, `.18` dark)
  because frost is pale enough that a sixth of it reads over black while
  it takes nearly half to read over white. The three-role grammar reads
  filled pill = state, frost chip = applied filter, bare muted text =
  tag. Remove affordance, click-to-drop and the Backspace ladder are
  unchanged.
- **Browser renderer: a column's completion domain merges its `values`
  with its badge palette** instead of letting the first shadow the
  second — declared values in their own order, then any badge value they
  did not already name. A producer adding meta-values to a badge column
  no longer thereby deletes that column's concrete keywords from the
  suggestion list. Values wrapped in asterisks (`*active*`) are read as
  **producer metas**: dimmed and italic, offered with no count (a local
  count would read 0 and mislead — the semantics live producer-side, as
  SCHEMA's meta-values already allow), and accepted verbatim as
  `state:*active*`. The local evaluator still matches such a token
  literally, so a view declaring metas is expected to filter through
  `onFilter`.
- **Browser renderer: sorting follows SCHEMA on all three points it used
  to differ.** A column's `compare` now outranks its `values`/`badges`
  order, and `"string"` joins `"number"` and `"natural"` as a comparator
  name — a column naming both no longer silently sorts by the value
  order. Empty cells sort last on every column type and stay last when
  the direction reverses, rather than leading an ascending text sort;
  `direction: "asc-nulls-first"` and `"desc-nulls-first"` are the
  spelling that asks for the other rule, and `direction` is now read at
  all, outranking `ascending` when both are given.
- **Browser renderer: `applyDelta` indices count in the window, as SCHEMA
  says.** With a local sort, filter or page in force the ops splice
  against the displayed order and no longer land on whatever row happened
  to sit at that index in the store; with nothing reordering the rows the
  two readings coincide and the mapping costs nothing. The domain caches
  drop once per batch instead of once per op.
- **Browser renderer: a column may declare `multi: true`.** The
  cell-shape heuristic stays as the fallback for producers that say
  nothing, but a column that declares itself is believed — which is the
  only way to get tag keys, scoped completions and value counts out of a
  multi-valued column whose cells are not org-shaped.
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

### Fixed
- Browser renderer: the filter box no longer loses focus and caret on a
  re-render — the chrome is built once at mount and only the row window,
  hint, arrows and chips are rewritten.
- Browser renderer: a multi-valued column is detected by weighing evidence
  rather than by a percentage of well-formed cells, so one hand-edited or
  imported headline no longer costs a corpus its whole tag vocabulary.

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
