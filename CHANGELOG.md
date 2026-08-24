# Changelog

Notable changes to `table-view`. Versions follow the `;; Version:` header;
the rails-to-cosmos ELPA archive publishes date-stamped snapshots.

## Unreleased

### Added
- **Whole values or none in the multi-valued column, and `tv-multi` to reach
  them.** A run wider than the 40-character cap now drops the values that do not
  fit *entire* and writes `…` in their place — `alice · document · task ·
  travelogue` becomes `alice · document · task …` — where the cell used to be
  cut mid-value by the stylesheet's ellipsis. A first value too long for the
  column leaves the mark alone. The column is measured on what it DRAWS, in the
  smaller type a tag is set in, so the run a column was sized for is always
  drawn entire — the raw `:a:b:c:` measure ran short of the drawing from three
  values up. Truncation is paint alone: the cell still filters, sorts and
  searches whole. Each cell of that column carries `tv-multi`, the one hook a
  consumer needs to open a door over the values; the renderer's own click has
  already selected the row under it.
- **`filterDock: "overlay" | "strip"` — where a summoned box LANDS, told apart
  from what summons it.** `overlay` raises the veil the palette always did;
  `strip` lays the box on the CHIP STRIP'S OWN ROW, the chips taking their width
  and the box the slack, with nothing drawn over the table. `palette` docks
  overlay and `inline` docks strip unless the option says otherwise, so every
  existing mount is what it was. Named on a plain mount it is what makes the box
  summoned at all: the mount keeps its filling table, its sort marks and its
  hint line with the pager, and takes the SUMMONED LADDER — Escape in two steps,
  a dead Backspace over an emptied box, and delivery on COMMIT alone. The
  picker's rungs stay the picker's: one Escape, a Backspace that eats the box,
  and rows that narrow as they are typed. The `.tv-dock` rules are the geometry
  `inline` used to carry alone, and `.tv-inline` now wears them beside its own
  compact furniture — the twelve-row cap, the hidden arrows, the small face.
- **`inline: true` — a compact mount for a box someone else framed.** It implies
  `omnibox`, drops the mount's own border, title, hint line and sort marks, and
  caps the window at twelve rows. The filter box is SUMMONED rather than
  resident: chips alone until `openFilter()` puts the input on the chips' own
  line. Two keys leave that editor in ONE step — Escape, dropping whatever was
  half-typed, and Backspace over an already-empty box, which takes the box
  itself rather than the chip behind it. The chips stay the consumer's own key
  to walk, through `stripLastToken()`. What a picker hung at a caret wants.
- **`filtering()` and `destroy()` on the handle.** `filtering()` answers whether
  the filter box holds the keyboard, so a consumer binding keys globally over a
  mount can ask rather than probe the DOM. `destroy()` releases the two theme
  watchers — one on `document.documentElement`, one on a `matchMedia` list —
  which are registered outside the container and outlive its being emptied; a
  mount-per-gesture consumer leaked one of each without it.
- **`substring:` is the canonical spelling on screen.** A chip over a bare word
  now reads `substring:asdf`, and the completion's text-search row inserts that
  rather than the bare word — so committing a search writes the grammar's own
  `key:value` and the strip reads one way throughout. The query still accepts a
  bare word; only what is shown and what the completion commits changed.
- **`substring:VALUE` is free text under a key** (SCHEMA.md, Filter query), so
  the grammar is `key:value` throughout and a bare word is that spelling with
  the key elided. ONE matcher answers both spellings. What the key buys is a
  value that may spell a separator's neighbour — a leading `-`, a colon, a bar
  — under quotes without being read as something else.

### Fixed
- **`setQuery(q)` paints the strip it seeds.** `pushChip` fills the chips array
  and draws nothing, and the repaint sat in the empty-query branch — so a
  consumer restoring a non-empty query got chips in the state and an unchanged
  strip on screen. `initialQuery` was unaffected, having a repaint of its own
  after the mount.
- **A summoned box that loses the keyboard is no longer left drawn.** Tab walks
  out of the filter natively and a row click takes the focus; under `inline`
  either left the editor on screen with the keys elsewhere, so `filtering()` and
  the screen disagreed. A blur now un-summons it.
- **`palette` and `inline` are one decision.** Passed together they gave
  Backspace and Escape opposite precedence; `palette` now wins outright, it
  being the mode that draws its own overlay.

### Changed
- **A crumb chip is struck through.** The trail's chips are a query that is no
  longer in force; muting alone said quiet, where the line says the tokens
  under it are narrowing nothing on screen. A drill leaves the whole query it
  came from standing in the strip, and it now reads apart from the applied one
  at a glance.
- **The stylesheet is one declaration per line.** The whole embedded CSS block
  reads the way the palette blocks already did: a rule opens on its selector,
  each declaration sits on its own line, and the closing brace has a line too.
  Same rules, same order, same values — a re-layout, so nothing a host sees
  moves.

### Added
- **A sort token spells a whole chain: `sort:title->priority:desc`
  (SCHEMA.md, both halves of the wire).** Sugar, and ONE semantics — the
  segments are read as exactly the tokens they compose, in the places
  they are written, so `sort:a->b` and `sort:a sort:b` are the same query
  and nothing downstream can tell them apart. Every rule the grammar had
  reaches across an arrow unchanged: written order is precedence,
  first-wins dedup spans the segments and the token boundaries alike, a
  refusal is the segment's and the rest of the chain stands, `sort:COL->`
  is a segment half typed and orders nothing, and `*none*` takes no
  companion wherever in a chain it is written. The one exception is
  NEGATION, which is written before the key and so covers every segment
  of the token.
  The CANONICAL form is that one token, with `:asc` unwritten. The
  browser renderer now folds every sort token of an applied query into
  one canonical chip AT THE CHIP DOOR: typing `sort:title sort:priority`
  leaves the single chip `sort:title->priority`, promotion writes the
  order as one token, and the arrow is what the URL carries and what the
  producer is asked. A token the renderer reads no order from folds into
  nothing — it stays its own chip as spelled, which is what leaves a
  producer something to refuse. Since the chip IS the chain,
  `stripLastToken()` gives up its last tie-breaker per press and takes
  the chip off with the last key, so `DEL` still walks a promoted chain
  back one column at a time.
  Completion follows the same shape as an alternation's: a `->` re-opens
  the domain, the prefix is what follows the last arrow, the columns
  already chained are out of the offer, and accepting appends a segment
  rather than replacing the token. The amber sort chip asks for
  contextual ligatures, so a coding face draws the arrows.
- **Sort chains are composed by PROMOTION (browser renderer).** Both
  renderers already ran a declared chain; only Emacs could build one, and
  it built it with a prefix argument — `C-u ^` appends a tie-breaker at
  the bottom. A page has no prefix arguments, so the browser gets the
  other spelling of the same idea: `sortPromote(col)` puts a column at
  the HEAD of the chain ascending, shifts the rest down, and drops that
  column from wherever it sat below; promoting the column already leading
  flips that key alone. A chain is therefore built by pressing over
  columns in reverse priority order — promote deadline, then state, then
  title, and the chain is title > state > deadline. One key, no prefix,
  no mode.
  `getSort()` and `setSort(chain)` join the handle as the read and write
  of the whole chain (`setSort([])` is the clear), and `normalizeSort`
  now reads a boolean `nullsFirst` where `direction` is absent, which is
  what makes a chain read out and handed back the chain that was read.
- **The ORDER is a query token, and the headers wear it (SCHEMA.md, both
  halves of the wire).** `sort:COL` and `sort:COL:desc` join the filter
  grammar as the one token that is no predicate: it narrows NOTHING and
  states the order instead, written order being precedence, so
  `sort:state sort:deadline` is a chain and a query naming any sort key
  replaces the view's declared `sort`. A query naming none leaves the
  declaration standing, which keeps a default order invisible until a
  reader diverges from it.
  A sort token names one column in one direction. A negation, an
  alternation, a column the view does not carry and a direction that is
  neither `asc` nor `desc` are each an error a producer refuses by name;
  a renderer has nobody to refuse to, so it drops the key and the token
  goes on narrowing nothing — a refused ordering never empties a table.
  `sort:` with nothing after it is the `key:` rule and orders nothing,
  and `sort:COL:` is the direction half typed, which ascends like an
  unspelled one. A column named twice is NO error on either side: the
  FIRST spelling stands and the later one is dropped, a chain never
  naming a column twice. `sortable` gates the reader's GESTURE alone —
  promotion, and a header click with it — so a query naming a column that
  opts out opens as written, the way a declared `sort` does.
  `sortPromote` now WRITES that query rather than a chain beside it, so
  the order is one of the query's own terms: it rides the ordinary
  filter chip strip, `stripLastToken()` takes a key off it, a URL carries
  the order, and a producer filtering server-side is told what to answer
  in. What a promotion composes onto is the chain in force, declared keys
  and all, so only the promoted key ever moves.
  The chain in force is drawn where it is about: every sorted column's
  own HEADER carries its direction and, past one key, its place in the
  chain (`Headline ▲¹`), the leading key in full ink and the tie-breakers
  muted. The dedicated sort-chip widget is gone with the second store
  behind it — the query says the order and the headers show it — and the
  column widths pay for the marks a header wears.
  The suggestion list completes the token: after `sort:` come the columns
  a reader may order by — `sortable`'s list, since completing is the
  gesture — each offered again with its other direction once named in
  full.
  New parity vectors (`fixtures/parity/sort-tokens.json`, a `query-sort`
  capability the browser harness runs: a query in, the row ids in the
  order it leaves them) cover ordering, direction, precedence, stability,
  nulls, mixing with predicates and free text, the duplicate-column rule
  and every refusal.
- **`sort:*none*` is the EMPTY chain (SCHEMA.md + browser renderer).** A
  declared `sort` was the one thing a reader could not take off: every
  sort token replaced it with another order, and taking the last token
  off came home to the declaration. `sort:*none*` NAMES a sort key, so it
  replaces the declaration the way any other sort token does — with
  nothing, leaving the rows in the order they arrived. It joins the
  starred family as its one member on a key that is no predicate, reading
  no cell and answering no column, and it completes star-blind like the
  rest (`non` reaches it), offered under `sort:` where no `sortable`
  gates it. It admits no companions: `sort:*none* sort:title` is an error
  a producer refuses, and a renderer drops the `*none*` and lets the
  companions stand — the producer the stricter of the two, which is every
  other sort refusal's asymmetry, and no row moves either way. Thirteen
  parity vectors, over a view whose rows arrive in an order its declared
  sort does not put them in, that being the only way to tell the empty
  chain from the declared one.
- **A token spelled twice collapses (browser renderer).** Every token is
  idempotent under the one combination rule — a repeated predicate
  narrows to what it narrowed, a repeated sort key is the position it
  already holds — so `tag:game tag:game tag:game` was three chips'
  worth of noise in the strip, the URL and what the producer was asked.
  A chip the strip already carries is no longer added: the FIRST
  occurrence keeps its place AND its spelling, so precedence survives the
  collapse, and a near twin (`tag:game` beside `tag:games`) is two tokens
  and stays two. A SORT token counts as carried by its COLUMN rather than
  by how it is spelled, the chain keeping a column's first spelling and
  dropping the rest: `sort:title` beside `sort:title:asc` is one ordering
  written twice, and beside `sort:title:desc` it is an ordering and a
  token that does nothing — either way the second chip described an order
  the rows were not in, which is the one thing the strip may not do. A
  negated one stays as spelled, being a refusal the reader typed and one
  the producer is owed verbatim.
- **A sort chip wears the COLUMN's hue (browser renderer).** The strip
  drew ordering and narrowing as one chip, so a query carrying both said
  nothing about which of its terms moved the rows. A live chip this
  renderer orders by now wears `--tv-col` — the pale amber the column
  band and the crosshair already carry, `sort:` being the one token that
  speaks about a column — while an applied filter keeps its frost. The
  GROUND carries the whole of it: one silhouette, one ink, one `×`, one
  hover, and the two washes sit the same distance from the page they are
  drawn on (light 24.7 against frost's 24.9, dark 73.6 against 71.2), so
  the identities differ by hue and neither chip reads as the louder.
  Amber is the paler hue (luminance .899 against .741), which is what
  the light theme's own strength pays for — `--tv-sort-wash`, 52%
  against the chip's 45; over black the two travel alike, so the dark
  theme asks for the chip's own 18. The edge takes the chip's strength
  in either theme, a hairline carrying no information. Chip ink clears
  19.96:1 light and 13.97:1 dark on the wash, and the accent a hover
  lands clears 4.5:1 in both.
  Only a token the renderer ACCEPTS as sort wears the class —
  `sort:COL`, `sort:COL:desc` and `sort:*none*`, a column that opts out
  of `sortable` among them, that gating the reader's gesture rather than
  the token. Every refusal (a negation, an alternation, an unknown
  column, a direction that is neither word) is dropped from the chain
  and narrows nothing either, so it orders no rows and keeps the
  ordinary chip: the strip promises an order where there is one and
  shows what was typed where there is not. A crumb is a label rather
  than a token and takes neither identity, staying muted as it was.
- **`sort` chains, spelled out (SCHEMA.md).** The array form was one
  line; it now says what a chain means — every key run in order, the
  first that separates two rows deciding, ties keeping arrival order
  (stable on both renderers), direction per key, and empty cells settled
  per key and outside the direction. New parity vectors
  (`fixtures/parity/sort-chain.json`, six cases run by both harnesses):
  tie-breaking, per-key direction, stability under a full tie, nulls
  inside a chain, a badge key over its palette with a text tie-breaker,
  and a chain of one being the single sort it always was.

- **`flags`, a mount option of the flag ground's own (browser
  renderer).** It DEFAULTS to `marks`, which is the one option flags
  shipped under, so every existing mount draws byte for byte what it
  drew. Named, it is its own answer: `flags: true` alone gives the
  leading gutter and the flag's inset edge in it with **no checkbox** —
  the box rules are scoped to a `tv-marking` root class that only
  `marks` puts on — and the gutter click, being a mark toggle, selects
  the row there like any other cell. `flags: false` under `marks: true`
  takes the flag drawing off and leaves the marking. The gutter belongs
  to either state, so either one asks for it, and either way the option
  gates the DRAWING alone: the ids still go in and come back out of
  `getFlagged()`, the way `marks` has always worked. For a consumer
  whose rows carry a pending action and no standing selection.
- **`linked`, an optional Row field (SCHEMA.md + browser renderer).** A
  producer sends `linked: true` on a row that leads somewhere — it holds a
  link a consumer can follow — and the browser renderer draws that row's
  `title` cell AS A LINK: link colour and underline, over the whole cell.
  Sparse: `true` or absent, never `false`, so a row with nowhere to go is
  byte for byte the row it was before the field existed. It is ONE rule
  with the anchors a cell's own Org markup produces, so a title that is
  part markup and part plain words comes out one colour rather than two.
  The ink is `--tv-link`, a palette value of its own: the accent's blue
  moved in lightness alone (light `#30739B`, dark `#7CC9F8`) until it
  clears 4.5:1 on every ground a cell can wear rather than on the page
  alone — the zebra, a mark, a flag, the cursor, the column band over each
  of those and the crosshair, eleven grounds a theme, worst 4.69 light and
  4.63 dark. The accent was under the floor on dark's amber grounds (3.70
  at the crosshair), which is what makes this a value rather than an
  alias. For consumers who OVERRODE the link colour: it came off
  `--tv-accent` and no longer does, so an accent override stops reaching
  links and `--tv-link` is what to set instead — in every theme block a
  consumer redeclares, the variable being declared in all four
  (`.tv-root`, the `prefers-color-scheme` block, and both `data-theme`
  roots). It is read through `var()` at paint rather than baked into the
  row HTML the way a badge's ink is, so an override repaints on its own
  and needs no re-render or `setRows`.
  Ink and decoration and no ground, which is what keeps it
  orthogonal to every other row state: the zebra, the mark, the flag, the
  cursor and the two selection bands all write BACKGROUNDS, so a linked
  row under the cursor with a band across its title still reads as a
  link. Chosen by column KEY rather than by
  position, and a view with no `title` column is marked nowhere — the
  flag says the row leads somewhere and there is no other cell that would
  be true of. `table-view.el` ignores it by the unknown-fields rule, with
  an ERT case asserting the propertized buffer is the one the same view
  without the field renders.
- **`planned`, a reserved virtual filter key over the date columns
  (SCHEMA.md + browser renderer).** A row is planned when any of the
  view's date columns holds anything, so `planned:*empty*` is a row
  nobody has put a day on, `-planned:*empty*` is everything with a date,
  and a value is the prefix a date column already takes, asked of every
  one of them at once — `planned:2026-08` is a schedule *or* a deadline in that
  month. It obeys the one combination rule like every key. It is RESERVED because both
  halves of the wire decide it off the cells alone: no producer set, no
  vocabulary, no clock, which is what a key with no column behind it has
  to be to work on both sides. WHICH columns are dates carries the
  asymmetry the prefix rule already has — a producer knows its own, this
  renderer samples cell shape — so a page holding fewer than two dated
  rows finds no date column and answers more narrowly than the producer.
  `fixtures/parity/filter-query.json` gains ten cases over two views of
  their own; the driver gains the key's standing (offered as a key,
  offered once, and no value list to enumerate). `table-view.el` has no
  query grammar and is untouched.
- **`sortBy(column, ascending)` on the browser renderer's handle.** A
  header click TOGGLES; this STATES an order, so a consumer applying a
  canned view — glance's agenda — lands on the same one every time it is
  asked for rather than reversing on the second press. It replaces the
  sort in force, answers `false` when no column carries the key, and
  ignores `sortable`: the opt-in gates what a READER may reach, not what
  the embedding page may ask for. `toggleSort` is now that function plus
  the toggle, so the two cannot drift.
- **A drill-down crumb strip on the handle** (browser renderer).
  `pushCrumb({label, query})`, `popCrumb()`, `setCrumbs(list)` and
  `getCrumbs()` keep the path a reader took to get here, drawn as muted
  chips to the **left** of the live filter chips in the same row — each
  showing its `label`, never its query — so one strip reads left to
  right as the reader walked it. **`popCrumb` pops and RETURNS; it never
  applies.** Whoever owns the fetching owns what a query means: a
  producer-filtered view answers it over the wire, a local one narrows
  in place, and a consumer may want a sort or a selection restored
  alongside it, so the renderer hands the crumb back and stays out of
  it. Past four crumbs the oldest fold into one `… +N` counter,
  leftmost; the counter takes a chip of its own, so the fifth crumb
  folds the first two away and the strip is never wider than four chips
  however deep the drilling went. Handle state the way a mark is: it
  survives `setRows`, an upsert, a delete, a re-sort and every filter
  change, and `setView` drops it with the world it described. A crumb is
  inert — no remove mark, no `data-i` — which is also the guard on the
  chip click, where a crumb wearing the chip's shape would otherwise
  read as index `NaN` and take the FIRST live chip off. It wears that
  shape down to the border — same weight, radius and colour as the live
  chip beside it, the palette's frost-tinted edge included, with the
  padding equalized on the side a remove mark shortens so the two
  silhouettes match. Ink and ground carry the muting alone: `--tv-muted`
  instead of the foreground, the page's own ground instead of the chip
  panel's. Hovering a crumb moves nothing, the hover rules declining to
  select one. The ink is the floor that binds, as with every
  wash here — `--tv-muted` clears 4.5:1 on `--tv-bg` in both themes (5.1
  light, 11.5 dark) while reading quieter than a live chip's ink on its
  own ground (19.9 and 15.4). No grammar moved: SCHEMA.md gains a line
  putting the strip beside row marking as renderer-local, and
  `table-view.el` is untouched.
- **`chipLabel`: a live chip may show something other than its token**
  (browser renderer). A `(token) => string|null` mount option aliases
  what an applied chip displays — `state:*active*` reading `active`, an
  id reading a name — while the **query is untouched**: `getQuery()`,
  what `onFilter` is handed, and the token a click or `stripLastToken()`
  removes are all the text as written. A chip may lie prettily; the
  grammar does not. Anything but a non-empty string leaves the token
  raw, so one formatter aliases the two tokens it knows and passes the
  rest through. Crumbs never reach it — a crumb's label is already a
  label, and running a token formatter over one would ask a query
  question about a word that is not a query.
- **Parity vectors: one manifest, two harnesses** ([`fixtures/parity/`](fixtures/parity/)).
  Nothing executed the same contract case on both renderers, so a
  divergence could sit quietly in two green suites — which is how the
  `sortable` default survived as long as it did. A vector is a view plus
  what it must produce; the manifest gives each file a capability and
  names which harness runs which, and a harness fails on a capability
  listed for it with no runner rather than skipping, so the manifest
  cannot claim one that is missing. `sort` (15 cases: the `compare` →
  `values` → badge-palette → `type: "number"` → collation ladder,
  unlisted values last, a multi-key chain, and where blanks land under
  each direction and each nulls spelling) and `render` (7 cases, 9 cell
  assertions: a link's description, a link without one, control
  characters collapsing, badge ink present and absent, empty cells) run
  on both. `query` (20 cases) is the browser renderer's alone —
  `table-view.el`'s `/` is a plain substring over the row, with no
  grammar to hold to — and the manifest carries that asymmetry rather
  than either side assuming it. `make web-perf` runs 54 checks over the
  vectors, `make test` the 22 el-capable cases as two ERT tests that
  name the failing case and cell. A vector file the manifest forgot to
  list is itself one of the checks.
- **SCHEMA.md: `group` on a Badge, and one rule for every unknown field.**
  `group` is an optional producer label over palette entries — glance
  emits `active`/`inactive` across the org keyword groups — and carries
  no meaning to the contract: colour, sort priority and matching all
  still read `value`. Neither renderer reads it today, which the
  contract now says outright rather than leaving a producer to guess,
  alongside the general rule that makes sending it safe: **an unknown
  field renders as if it were absent**, in every object the document
  defines. That rule is what lets a field land in a producer before the
  renderers read it, and it is also how a field one renderer implements
  alone travels in the same object — `Sort`'s `direction` is the
  browser's and `nulls` is this renderer's, so a view wanting nulls
  first everywhere sends both and each takes the half it knows. A
  conformance note now says that where the Sort object is defined, and
  the parity vectors do exactly that. `table-view.el`'s tolerance of
  `group` is pinned by a test rather than assumed.
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
  over. Tab is unchanged — accept and stay, at either stage.
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
- Browser renderer: the selection keeps its **place** when the row under
  it goes. Filtered away, deleted or paged past, it stays at that visual
  index (clamped to what is left) instead of vanishing, so the next
  keypress carries on from where the eye is.
- Browser renderer: Backspace's chip-strip and hand-over ignore key
  repeat — one press, one part. Holding it deletes the typed characters
  natively and then stops at the first chip.
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
  reports `{id, col}`, and an index outside the table is no column at
  all. `select(id)` with no column is the whole-row
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
  otherwise; tokens AND and alternatives OR, which is the one combination
  rule. `TableView.parseQuery(q, columnKeys)` is the tokenizer,
  exported for consumers highlighting the box and producers implementing
  the grammar server-side. Filtering locally applies the parsed query,
  by column type: badge exact, text/number substring, date cells by
  prefix, `*empty*` for the empty cell.
- Browser renderer: a staged suggestion list under the filter box. A
  bare word offers, in order: the column keys it opens; the columns whose
  declared domain holds it as a value (`TODO` → `state:TODO`); and, only
  when nothing exact was found, up to five tags whose rows merely
  contain it, dimmed — exact beats fuzzy, and fuzzy never crowds. After
  `key:` comes that column's value domain (`values`, else the badge
  palette, else the distinct cell values), each shown with the number of
  rows behind it. Arrows move, Tab/Enter accept, Escape dismisses before
  it clears anything, a click accepts without taking focus.
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
- Browser renderer: **two presentations under `pageSize`**, so that
  selection-driven page crossing is smooth while explicit paging stays
  crisp. *Paged* is the existing slice, with the window running inside one
  page; *continuous* lets the window run over the whole filtered set — the
  machinery paging was layered on top of. `selectStep` crossing a page
  boundary switches to continuous at that moment: instead of turning the
  page and snapping the scroller, the cursor steps onto the row that was
  always next and the band eases as within a page, so a held movement key
  crosses the seam with nothing to see and the window briefly holds rows
  of both pages. Every explicit turn — `nextPage`, `previousPage`, a pager
  click — snaps back to paged at the page requested, landing first or last
  as before; a new query, a sort toggle and `setRows` return to paged. In
  continuous the pager reads as **orientation**: `pageInfo()` derives the
  page from the cursor, so the range moves as the cursor crosses. "On
  show" means the cursor's page throughout — `getVisible`, `getMarked` and
  `getFlagged` agree with the pager either way. Marks, flags, the
  selection and its column carry across untouched, being id-keyed.
- Browser renderer: **`flagHelp`** mount option — a string such as
  `"d/D archive · u unflag"` that replaces the flagged-count segment with
  a reminder while the cursor sits on a flagged row, the token before each
  label marked up as a key. The whole string is the consumer's, since the
  keys are theirs to bind and to name; the renderer contributes the count
  and the styling and hardcodes no key of its own. Off a flagged row, or
  with the option absent, the segment is the plain count.
- Browser renderer: **row flags** — `flagRow(id)` (toggles, returning the
  state it landed in), `unflagRow(id)`, `getFlagged()`, `clearFlags()`
  and `flaggedCount()`. A flag is a *pending* action, the two-press `d` a
  consumer drives before confirming, where a mark is a *standing*
  selection; they are separate id-keyed sets, so a row can carry both and
  neither clear touches the other. Flags ride `marks: true` by default —
  the leading box column being where either is read — and share its whole
  survival matrix: a filter, a page,
  a sort, `setRows` and an upsert keep them; `deleteRow`, a delta delete
  and `setView` take them. A flagged row wears a red wash (one `FLAG`
  constant, `#E74C3C`, at per-theme strengths of 8% light and 30% dark)
  plus a red left edge on the box cell — a second channel, since the
  background is one slot and the cursor wins it. The strengths are
  measured rather than picked: red is dark enough that on white it drags
  `--tv-muted` under 4.5:1 by 10%, so 8% is the most the tag ink allows,
  where black has room to spare and 30% is set by what reads. Precedence there is cursor, flag, mark,
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

### Changed
- **THE `title` COLUMN FILLS AND EVERY OTHER COLUMN IS ITS OWN CONTENT
  (browser renderer).** The table was `table-layout:auto` with a `width`
  hint per column, so the window's slack was handed to every column in
  proportion: the gutter, the state column and the date columns all grew
  with the window while the one column whose text actually runs long —
  the headline — stayed as narrow as the rest. A priority column of
  `[#A]` badges measured about twice its badge.
  The layout is now `table-layout:fixed` whenever the view carries a
  `title` column, which makes the `<col>` widths authoritative and leaves
  the ONE column carrying no width — the title's — to take every pixel
  the others leave. Two rules decide the others:
  **the cells decide the width, and a header never widens a column.** A
  column is exactly
  as wide as its own widest cell (plus a badge's pill and, where the
  column is in the sort chain, its mark). A header longer than that
  ellipsizes into it rather than pushing it open — which is what makes a
  badge column read as tight as its badges — and what an ellipsis eats
  is the WORD: the header is now two boxes, `.tv-hn` flexing and
  `.tv-arrow` declining to, so a squeezed header still says which way it
  is sorted and where it sits in the chain. A column holding no cell at
  all has no content measure, so there the header is the only measure
  there is.
  **A sized column is capped at 40 characters** and ellipsizes past it,
  which bounds the pathological cell (a long tag run) that would
  otherwise eat the title's share. The number is measured rather than
  chosen: over a 12,674-headline Org corpus the widest non-title cell is
  exactly 40 characters — one compact timestamp range, with the tag runs
  topping out at 33 — so the cap is the tightest ceiling that clips
  nothing in it.
  The **gutter** joins the same rule: `[X]` is three characters and 24px
  is the cell padding both sides, so `.tv-fill col.tv-gut` is
  `calc(3ch + 24px)` and nothing over it. It moves to the `<col>` because
  a cell's `width` is not what fixed layout reads, and the coarse-pointer
  44px target is restated there as a width for the same reason — the
  `min-width` on the cell is inert under fixed layout.
  The **table keeps a `min-width`** of the sized columns plus a
  40-character floor for the title (or the title's own content, where
  that is narrower, so a table of short titles costs no scrollbar). That
  is where a window too narrow for them begins to scroll sideways, which
  is what `overflow:auto` on the scroller already did.
  Nothing measures the container: every number written is characters and
  the one padding constant, so the remainder is arithmetic the browser
  redoes on a resize for nothing and there is no observer to keep in step
  with it. A view carrying **no `title` column** has nothing to fill with
  and keeps the auto layout, widths as hints, headers paid for — exactly
  what it always had; `title` is the same convention `linked` reads. The
  crosshair bands, the row washes, the sort marks and the linked
  underline are all grounds and ink, so none of them moves.
- **A header click PROMOTES rather than replaces (browser renderer).**
  It is the pointer's spelling of `^` and is now one command with it, so
  a click no longer throws away a chain the keyboard just built. Clicking
  a second column leaves the first as a tie-breaker instead of dropping
  it; the headers say so. `sortBy` is unaffected — a producer stating an
  order still replaces the chain outright.
- **The hint line spells the whole chain (browser renderer).** It named
  the primary key alone, so a view declaring `[{state},{scheduled}]`
  read as `sort state asc` and lied by omission about what the rows were
  in. It now prints `sort state asc → scheduled asc`, which is what
  `table-view.el` has always printed.
- **Marks and flags are ONE mechanism, instantiated twice (browser
  renderer).** They were two sets with two of everything around them —
  twin toggles, twin clears, and `getMarked`/`getFlagged` as nine-token
  twins — so each answer had two homes to drift between. One id-keyed
  row state now holds every operation (does a row wear it, toggle it,
  take it off, put it on a whole set, take it off every row, list the
  ids) and marks and flags are two instances of it, which is what makes
  the listing order, the clear's independence and the survival matrix
  true of both by construction rather than by two implementations
  agreeing. They stay two SETS: a flag is a PENDING action where a mark
  is a STANDING selection. The two asymmetries are kept and moved to
  where they belong — the HANDLE offers `markAll` on marks alone and
  `unflagRow` on flags alone, being what only that state is used for,
  while the mechanism holds both. `isFlagged` loses the `marks &&`
  conjunct it carried, which is what the new `flags` option needed. The
  handle's surface is unchanged.
- **Every row and cell class is derived ONCE (browser renderer).** The
  window's HTML and the re-stamp that runs when a selection or a mark
  moves each spelled the classes out for themselves, so a state could be
  drawn one way when the row was built and another when it was
  re-stamped. Both now read `[name, on]` pairs off one derivation: the
  builder joins the names that are on, the stamper toggles each pair.
  The stamper covers the stripe, the alignment and the link mark it used
  to leave alone, and writes only what MOVED — `classList` is asked what
  it holds before it is asked to change it — so re-deriving a window a
  held movement key never altered writes nothing. The window remembers
  the display order it was drawn from, which is how a `<tr>` gets back
  to its row and its index without asking the state a second time.
  Mount, filter, page-flip and select-burst benchmarks hold within
  run-to-run noise. One visible byte: a `class` attribute no longer
  carries a leading space.
- **One sampler behind `multiColumn` and `dateColumn` (browser
  renderer).** The two ran the same loop over up to 40 non-empty cells,
  counting evidence for and evidence against and requiring at least two
  for and none against, with both thresholds spelled twice. They are now
  one `sampledShape(i, shapedBy, contraryTo)` and the thresholds are
  named once. Same verdicts.
- **`planned` is a cell SET (browser renderer).** A
  filter key names cells by index — a column's own, or every date column
  for `planned` — and one `valueTest` runs over them: `*empty*` asks
  that they all be empty, any other value that any of them pass, each by
  its own column's semantics. A key naming one cell is that rule with
  one cell in it, so the reserved key stopped needing a branch of its
  own. Term for term with glance's producer-side half. One consequence:
  a date column a producer also declared `type: "badge"` is now read by
  `planned` the way its own key reads it (whole value) rather than by
  prefix, so the two keys agree where they used to differ.
- **BREAKING: combination is one rule — TOKENS AND, ALTERNATIVES OR
  (SCHEMA.md + browser renderer).** Every token narrows, whether or not
  another token names its key. `tag:a tag:b` is a row carrying both, as
  before; `state:TODO state:DONE` now asks a cell holding one value to
  hold two, which is no row, **where it used to answer either state**.
  The replacement idiom is the new alternation: `state:TODO|DONE`. A
  predicate's VALUE splits on `|` and each alternative is read as that
  key's own value, the results OR'd — uniform over every key and every
  kind of value, so `tag:work|home` carries either, `scheduled:2026-08|2026-09`
  is either month by prefix, `planned:A|B` is either, and a starred meta
  alternates like any other value (`state:*active*|DONE`,
  `tag:*web*|*archive*`). A negation covers the whole token, so
  `-tag:a|b` carries neither. **A saved query or bookmark spelling a
  same-key OR now answers nothing; rewrite it with `|`.**
  Empty alternatives are DROPPED — `a|` is `a`, `|a` is `a`, `a||b` is
  `a|b` — and a value spelled with bars alone is left with none, which
  narrows nothing, the same answer `key:` has always given. The bar is a
  PREDICATE's: a free-text token is the text it spells, bar and all, and
  a token opening with a quote is free text whatever it spells; a
  predicate's value has had its quotes taken out by the tokenizer, so a
  bar inside one is always the operator and a literal bar is free text's
  alone.
  What it buys is the arity rule's death: `manyValued` is gone,
  `queryMatcher` is a list of tests with no grouping in it, and `multi`
  is left saying only what its name says — the cells hold a delimited
  list, which the whole-entry meta, the chip rendering and the value
  domain read. The suggestion list is alternation-aware: a `|` re-opens
  the value domain, the prefix is what follows the last bar, and
  accepting lands the alternative behind it, so the committed token stays
  one token. The filter placeholder teaches the operator
  (`state:TODO|DONE` in place of `state:active`).

- **BREAKING: `key:none` is gone; the empty cell is `key:*empty*`
  (SCHEMA.md + browser renderer).** The bare word reserved a spelling a
  cell can hold, and what it cost was exactly that: a cell reading
  `none` was unreachable by predicate, which SCHEMA wrote down as an
  accepted cost rather than a rule anyone wanted. It is a meta now, so
  the stars carry the meaning and the word carries none: `state:*empty*`
  is the empty state cell and `state:none` is a state spelled `none`,
  found at last. Every key answers it — every column and `planned`, so
  `-planned:none` is `-planned:*empty*`. **A saved query or URL holding
  `key:none` now reads as a literal value and matches nothing it used
  to**; there is no migration and no alias, the point being that no bare
  word is reserved any more.
- **A starred word on a MULTI-VALUED column is the whole entry**
  (SCHEMA.md + browser renderer). `tag:*book*` is the tag `book` where
  `tag:boo` is any tag holding those letters — the whole-tag reading
  that went with the virtual tag keys, back as a meta on the one
  spelling. Decided from the cell, delimiter and all, so a producer and
  this renderer answer it identically; it is what glance's
  `tag:*archive*` is built on.
  A producer may also attach meaning to a meta being NAMED AT ALL
  (SCHEMA.md): glance leaves archived rows out of an answer unless the
  query names `tag:*archive*`, in any polarity. A renderer reads the
  token as the predicate it is; a producer reads its PRESENCE as well,
  and the two answers differ by the rows the producer was withholding.
- **A meta takes no sort position** (browser renderer). A column
  declaring `values: ["*active*"]` sorted every real value into the one
  "unlisted" bucket, which is no order at all — glance's state column
  has been unsorted by its own palette since it began declaring metas.
  `valueOrder` drops the starred entries, and a `values` list that was
  metas alone falls through to the badge palette the way a column
  declaring nothing does.
- **The suggestion list offers `*empty*` under every key** (browser
  renderer), at the foot of each column's value domain, declared or not
  — and a multi-valued column's domain now carries the metas its column
  DECLARES beside the vocabulary its cells spell, which is how
  `tag:*archive*` becomes reachable by typing `arch`. Star-blind
  completion already reached both.
- **The typed text is an offer of its own, and so is a whole title**
  (browser renderer; the bare-word stage, renderer-local, no grammar or
  SCHEMA change). Row one is what RET takes, which had left a plain text
  search reachable only by quoting the word or by dismissing the list —
  a grammar lesson charged for a search. The list now carries what it
  will do: **the literal**, drawn quoted with a muted `text search`
  aside and committed BARE, the quoting being the grammar's notation for
  text rather than part of the token (quotes are written into the commit
  only where the text holds whitespace or a colon and a bare token would
  break up); and **up to five whole titles the text is inside**, each
  shown in full with a `title` aside and committed quoted, since a
  reader typing a fragment of a headline is after the ROW. Ranking:
  an offer that SPELLS what was typed still leads (`book` still
  preselects `tag:book`, `tag` still preselects `tag:`), the literal
  takes row one otherwise, the titles sit under the key and value tiers
  and ABOVE the derived `contact:tanik` pairings — a title is a thing
  the reader has seen, where the pairing is a key the renderer worked
  out — and prefix hits lead the merely-contained ones within the tier.
  The title vocabulary is the loaded rows', deduplicated, read off the
  same index the word completions use and built with it on the same idle
  pass; the tier takes their two-character floor for their reason, and
  its five sit inside the twelve the whole list takes. A title carrying
  a `"` is not offered — the grammar has no escape inside a quoted
  token, so the offer would commit as something that no longer matches
  the row it came from. Neither offer is dimmed (both are facts), and
  each takes the slot a count would have used, so no row shows both. A
  bare word therefore always has a list; a quoted token still asks for
  no suggestions at all (`"boo"` is free text as written), and the value
  stage is untouched — a half-typed `key:value` is already an intent.
  Driver 1027 → 1046.
- **A starred meta completes star-free** (browser renderer). The
  asterisks of `*active*`/`*inactive*` are READING notation — the mark
  that says the producer decides this one — so they are no longer
  something to type: display and commit wear them and matching ignores
  them. `state:act` and `state:active` both offer `*active*`, the
  starred spelling `state:*act` still answers to itself, and the bare
  word `active` surfaces `state:*active*` through the column that
  declares it. Spelled in full either way it counts as exact, so it
  leads the list and RET commits `state:*active*` from four letters.
  One `starless` beside `META`, read by the two predicates the
  completion matches through (`opensWith`, `spells`); the local
  evaluator is untouched, still matching a meta literally, because what
  a meta MEANS stays the producer's to say.
- **The suggestion list always opens on row one** (browser renderer).
  Selection was conditional — a column completion started highlighted
  and everything else started with nothing chosen, so RET meant "accept"
  or "commit the word as typed" depending on what the list happened to
  hold. It is now one rule: a list with anything to offer opens with its
  first row chosen, and RET takes that row. The consequence is stated
  rather than hidden — **with suggestions showing, RET commits the top
  suggestion and not the letters typed** — and the literal stays the
  grammar's to give: a quoted token asks for no suggestions at all
  (`"boo"`), Escape puts the list away so the next RET commits what is
  written, and a word nothing completes never opened a list. The bare
  presence predicate `tag:` is therefore RET, Escape, RET.
  Ranking carries the whole weight now, so it was made honest at both
  stages: what the word SPELLS IN FULL leads what it merely opens.
  A bare word puts the value some column holds at the head — `book` is
  `tag:book`, ahead of the `book:` key beside it, which asks for the
  same rows in a token still half written — seeded before the key and
  guess tiers so their twelve-row cap cannot crowd it out; a key the
  word spells in full leads the keys it only opens; and after `key:` the
  value typed in full heads the domain whatever order that column
  declared, looked for past the twelve on offer. `acAt` is no longer
  ever `-1`, so `moveAc`'s wrap-from-nothing branch and the `acAt >= 0`
  guard on Tab/Enter are gone; `pick` leaves the item shape with them.
  The driver's preselection, C-n/C-p and stage-aware-RET checks are
  restated against row one (17 checks net, 1001 → 1018), and one of them
  was vacuous: `sync` completes nothing in the fixture, so "nothing is
  preselected when only tags are offered" was passing over an empty
  list. `table-view.el` has no suggestion list and is untouched.
- **A cell step off either end gives the column up** (browser renderer).
  `select(id, col)` clamped the index to the columns that exist, so a
  reader stepping right on the last column or left on the first stayed
  where they were. An index outside the table is now no column at all:
  the band, the crosshair and `getSelection().col` go, and the row cursor
  stays exactly where it is — the whole-row selection, which is the look
  the table drew before cells were selectable. Cell movement is the
  consumer's loop (read `getSelection().col`, add a step, hand it back to
  `select`), so the index one past an end is the only spelling either end
  has, and an edge that swallows the key answers nothing where walking
  off it lands in a state the table already draws. Entry is untouched —
  a row-only selection takes the column its consumer names — and
  `select(id)` with no column is byte-for-byte what it was.
  `select(id, 99)` answers like a step past the end, there being no such
  cell either way. The handle grows nothing: `col` has always been `null`
  for a whole-row selection and consumers already read it that way.
  `table-view.el` has no cell selection and is untouched. The driver's
  four clamp checks are replaced by thirteen: both exits, the band gone
  from cell, column and header at each, the row cursor unmoved, re-entry
  after an exit, and a middle-column step re-anchored so it reads the same
  whatever the ends do.
- **`state:*active*` matches the empty cell (SCHEMA.md + browser
  renderer).** SCHEMA's badge meta-values gain a rule they were silent
  on: `*active*` covers the unstated row as well as the producer's
  active values — an entry nobody has stated is live work, and the
  default view is what would otherwise hide it — while `*inactive*`
  covers stated values alone. The two groups therefore do not partition
  the column, and `-state:*active*` excludes the empty cell. `key:*empty*`
  is a subset of `*active*`. In `tokenTest` this is
  the one term of a producer meta a renderer can decide for itself:
  which keywords are in a group needs the producer's sets, an empty cell
  does not, so `state:*active*` locally answers the stateless rows
  rather than nothing. `*inactive*` stays the literal it was. The
  autocomplete still shows a meta dimmed and uncounted — these counts
  are per cell value, and a fraction of what the producer will match is
  no better a number than zero. `fixtures/parity/filter-query.json`
  gains a stateless row and four cases (both metas, the negation, and
  `state:none` beside them); `table-view.el` has no query grammar and is
  untouched.
- **Breaking — `sortable` is opt-in in `table-view.el` too.** SCHEMA.md
  has always read it that way and so has the browser renderer: a column
  declares `sortable` or it is not sorted on. This renderer took the
  opposite default, sorting by any column that did not opt *out*, so one
  view answered `^` differently in the two. `table-view--sortable-keys`
  now requires the flag, which is the list `^` walks, the list it cycles
  when point is off a column, and the list it refuses a named column
  against. **A consumer relying on the default must now declare it** —
  `(sortable . t)`, or `"sortable": true`, on every column `^` should
  reach. The repo's own `examples/` are the enumeration and all eleven
  were living off the default; seven teach `^` in their header comments
  and were plainly broken by the flip — `minimal`, `org-links`,
  `native`, `native-live` and `paginate` declared it on no column at
  all, `multi-sort` invites `^` on "any column" while its badge column
  had none, and `sort-methods`, the example *about* per-column sort
  methods, reached three of its five columns by the default alone. The
  other four (`bulk`, `delete`, `fill-function`, `upsert`) advertise the
  key through the hint line rather than their prose. Every one now
  declares what it demonstrates. A spec's own `sort` is untouched by
  this: that says what the view opens as, while the flag says what the
  user may reach — how the browser renderer has always read the pair. The old
  test pinned the wrong side of the divergence —
  `tv-test-sortable-defaults-true-opt-out-false` asserted that an
  omitted flag meant sortable, so it pinned the bug rather than the
  contract; it is replaced by `tv-test-sortable-is-opt-in` and by a
  second test that carries the flag all the way to `^` refusing to
  sort. The Rust side needed nothing: `tvx` is handed a sort chain and
  executes it, and reads no sortability anywhere, so the differential
  oracle covers exactly what it covered before.
- **A cell selection draws its whole column, and every part of the
  selection is a ground** (browser renderer). `select(id, col)` used to
  outline the one `td` in the accent colour. It now washes the column it
  names — `.tv-colsel` on every rendered cell of that column and on its
  header, since a band stopping short of its header reads as broken — and
  `.tv-cell-sel`, where that band crosses the cursor row, is one step more
  of the same wash. Nothing in the selection draws an edge any more: three
  backgrounds, and the suite sweeps every rule whose selector names one of
  them for `border`, `outline` and `box-shadow`, counting the rules so a
  rename cannot quietly empty the sweep. The flag's left edge on the box
  cell is untouched, being the one edge the table does draw and a channel
  no selection rule names. `select(id)` with no column is byte-for-byte
  what it was: the band is written nowhere rather than merely undone, which
  the suite pins by comparing those rows against a mount that never had a
  column at all.
- **`--tv-col`, the selected column's identity** (browser renderer), spelled
  once for both themes the way `--tv-frost` and `--tv-flag` are, washed at
  `--tv-col-wash` for the band and `--tv-cell-wash` for the crossing. It is
  a pale amber (`#FFF3D0`) for two reasons, and the second is the binding
  one. Amber is the one hue nothing else on the table occupies — frost at
  215°, the flag at 6°, the light cursor at 120°, the mark's ink at 185°
  and 215°. And at luminance .899 it sits level with the darkest ground a
  row can wear, so washing it over a marked or a flagged row shifts the hue
  without spending the contrast the tag ink needs. Every darker candidate,
  the muted ink of the original sketch included, dragged that ink under
  4.5:1 on a marked row well before it became visible at all: the light
  mark and flag washes already sit at the ink's cap (4.62:1 and 4.61:1
  against a 4.5 floor), so a wash that composites over one has almost
  nothing to spend. The band goes on the cells and the row states stay on
  the row, so the two never contest a background slot, and the band being
  translucent is what leaves the stripe, the mark, the flag and the cursor
  all still telling themselves apart inside it — measured rather than
  assumed: each keeps more than half the step it has outside the band. Both
  strengths are measured against the grounds each can land on, and those
  differ, the band falling on the page, the stripe, a mark and a flag while
  the crossing falls on the cursor row alone. Dark's crossing is the most
  the ink allows — 9% leaves the tag ink at 4.61:1 there and one point more
  puts it under the floor — while light has headroom and is set by what
  reads, its band moving a ground between half and nine tenths as far as a
  mark moves the page, a locator staying quieter than a state. The two
  strengths are far apart (35% against 8%) for the reason the chip's are:
  a pale colour needs much more of itself over white than over black.
  `washIn` in the driver is now general over any colour-and-strength pair
  rather than the flag's alone, and `apart` joins `ratio` beside it —
  contrast answers "can this be read on that" and says almost nothing about
  "can this band be seen", the light cursor row being 1.04:1 against the
  page it sits on and perfectly plain to the eye.
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
  nothing, and a column that declares itself is believed — which is the
  only way to get the whole-entry `*word*` meta, the chip rendering and
  the value domain out of a multi-valued column whose cells are not
  org-shaped.
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

### Removed
- **Virtual tag keys, from the grammar and from the suggestion list
  (SCHEMA.md + browser renderer).** An org tag no longer names a filter
  key: `course:text` is free text, colon and all, and `tag:course text`
  is the one spelling — the predicate reads the tags cell, the free text
  reads the row, and nothing expressible is lost. What is bought is the
  worst divergence the grammar had: the keys a query could name were
  DERIVED FROM ROWS, and a producer and a renderer hold different rows,
  so the same token was a predicate for whoever held the tagged row and
  free text for whoever did not. The two readings differ in one respect
  and it is written down: `tag:` matches its column by SUBSTRING where
  the tag key matched whole-tag, so `tag:glan` finds a row tagged
  `:glance:` where `glan:` found nothing.
  `tokenTest`'s virtual-key branch, `queryKeys`'s vocabulary half (it
  and `namedKeys` are now one function) and `manyValued`'s tag arity go
  with it. `tagVocab` stays, as the tags column's VALUE DOMAIN: `tag:`
  completes and counts against it, and the cells still render a chip per
  value from the same splitter.
  What a producer may still do is name a key of its OWN — one it NAMES
  rather than derives from rows — provided a renderer reading that token
  as free text narrows to a SUBSET of what the producer answers:
  glance's `ref:ROWID`, over a link graph only the store holds, is one.
  That is the rule the derived keys broke, and SCHEMA.md writes it down
  as the condition a producer-named key has to meet.
- **Scoped word completions from the suggestion list.** The tier that
  offered `contact:tanik` for `tan` — whole title words paired with the
  tags their rows sat under — composed a token the grammar no longer
  has. Its machinery goes: the title WORD index and its postings (the
  index is the distinct titles now), `scopedCompletions`, `lowerBound`,
  the punctuation-stripping `bareWord`/`EDGES` pair that existed so a
  title word could not compose a tag it was not, `tagVocab`'s per-row
  map, and the suggestion row's tag ornament. The whole-TITLE tier
  stands, which is what a reader typing a fragment of a headline was
  reaching for.

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

### Fixed
- **A priority reads through its brackets here too (browser renderer +
  SCHEMA.md).** Org spells a priority `[#A]` and glance now draws the
  cell that way, folding the decoration off BOTH sides of a `priority:`
  predicate so `priority:A` and `priority:[#A]` are one query at the
  producer. This renderer matched a badge cell whole, decoration and all,
  so the same query answered nothing on a page filtering locally — one
  grammar, two answers, which is the one thing the shared syntax exists
  to prevent. A whole-value match now reads through the brackets on
  either side, and completion reaches the cell's own spelling from either
  (`priority:a` and `priority:[#a` both offer `[#A]`, and what commits
  still wears the decoration) — the starred metas' rule from the cell's
  side rather than the vocabulary's. Five parity vectors and twelve
  driver checks. Both spellings of the value are worked out once per
  query, so the fold is a second string compare in the row loop rather
  than a regex.
- **A page's last row no longer parks under the hint bar (browser
  renderer).** The hint is the scroller's next sibling, so its top IS
  the fold, and the viewport's clamp modelled the content it had to stop
  at as `header + rows × geom.row`. `geom.row` is ONE row's
  `getBoundingClientRect().height`, and a browser snaps every rect it
  hands back over a row box that is fractional (`13px/1.5`, padding, a
  hairline) — so the sample is a rounding of the height rather than the
  height, and the error compounds a fraction of a pixel per row. Over a
  hundred-row page it came to 20px in Firefox: `>`, `G` and a held `n`
  all stopped twenty pixels short of the end with the last row two
  thirds under the bar, whatever the window size or the row count — the
  constant that made it read as a layout bug. `maxScroll` now reads the
  scroller's own `scrollHeight`, which is that sum without the rounding
  and is the number the browser itself clamps `scrollTop` against. It
  answers for the rows in the TBODY, so where their count differs from
  the page on show — a page turn, the continuous seam — the modelled sum
  still stands in until the render lands.
- **An ease against a clamp ends rather than running for ever (browser
  renderer).** `scrollTop` snaps to a device pixel and `scrollHeight` is
  rounded over content that is not, so a target can sit a pixel past
  anything a scroller will hold. Ending the ease only on ARRIVAL left a
  `requestAnimationFrame` loop turning at 60fps for as long as the page
  was open, which Firefox did at BOTH ends of the travel and did before
  ever a target came off `scrollHeight` — 60 refused writes a second,
  now none. A refused step is an arrival.
- **The driver's DOM shim reports a spacer's own height, and a row's
  snapped (`web/perf-driver.js`).** Two gaps that between them hid the
  bug above: the shim parsed `style` as an opaque attribute, so a spacer
  row standing in for sixty measured one row tall; and every row rect
  came back exactly `ROW_PX`, so no arithmetic that multiplied one rect
  by a page could ever be wrong. Rects are now snapped against where the
  row falls, `scrollHeight` is the unsnapped sum, and a fractional
  `ROW_PX` is what the new checks set. At a whole `ROW_PX` every number
  is what it was.
- **A `values` list holding starred metas alone no longer orders a
  column (`table-view.el`).** SCHEMA.md has said since the metas landed
  that a meta is filter vocabulary rather than a cell value and takes no
  sort position; the browser renderer filtered them out of the value
  order and Emacs did not. A producer shipping `values:
  ["*active*","*inactive*"]` beside a badge column — glance's state
  column does exactly this — had every real keyword tie at the end of
  that two-element list, so sorting by state ordered nothing. The badge
  palette below it now rules, as it does in the browser.

- **A selection run no longer parks short of the row it chose** (browser
  renderer). Moving the selection aims the viewport at a row and eases
  there, and the target was worked out once, at the moment of the move,
  from the geometry the last render had read. Two ways that target went
  stale. A synchronous burst of `selectStep` sets every target before a
  single frame runs, so the one that survived was derived from the
  stalest geometry of the run and nothing followed to derive it again —
  the viewport parked less than half way with no selected row drawn at
  all. And a run at one move a frame ends on a frame whose aim is taken
  before `renderRows` re-measures, so a header or row height that moved
  during the run left the last row about 16px under the fold.
  The ease now keeps the AIM — the row, the direction it was reached
  from, and the origin — and re-derives the target every frame, with the
  geometry re-read inside the frame loop rather than only where a row is
  drawn (`renderRows` turns back at the door when the window has not
  moved, so an ease could otherwise run to its end without ever
  re-measuring). Both cases now land the last row whole with the
  selection rendered; `web/perf-driver.js` pins them.
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
