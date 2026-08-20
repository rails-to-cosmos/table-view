# table-view

> Declarative, producer-agnostic table views for Emacs — render a JSON/alist
> spec into an aligned, sortable, filterable, org-table-styled buffer.

`table-view` is a tiny core (no dependencies beyond Emacs ≥ 28.1) that
turns a declarative table description — columns, actions, default sort
— into a live read-only Emacs buffer and dispatches keys to
consumer-registered command handlers.

## Example

```elisp
(require 'table-view)

(table-view-display
 "*books*"
 '((title . "Books")
   (columns . (((key . "title") (header . "Title") (sortable . t))
               ((key . "year")  (header . "Year") (type . "number") (sortable . t))))
   (rows . (((id . "1") (cells . ((title . "SICP") (year . 1996))))
            ((id . "2") (cells . ((title . "PAIP") (year . 1992)))))))
 nil)
```

…opens a read-only buffer:

```
Books
sort: unsorted (^)
| Title | Year |
|-------+------|
| SICP  | 1996 |
| PAIP  | 1992 |
```

## Installation

Requires Emacs **28.1+**.

### `package-vc-install` (Emacs 29+)

```elisp
(package-vc-install "https://github.com/rails-to-cosmos/table-view")
```

### `use-package` with `:vc` (Emacs 30+)

```elisp
(use-package table-view
  :vc (:url "https://github.com/rails-to-cosmos/table-view" :rev :newest))
```

### straight.el

```elisp
(straight-use-package
 '(table-view :host github :repo "rails-to-cosmos/table-view"))
```

### Manual

```sh
git clone https://github.com/rails-to-cosmos/table-view
```

```elisp
(add-to-list 'load-path "/path/to/table-view")
(require 'table-view)
```

## Quick start

```elisp
(require 'table-view)

(let ((spec '((title . "Books")
              (columns . (((key . "title") (header . "Title") (sortable . t))
                          ((key . "year")  (header . "Year") (type . "number")
                           (align . "right") (sortable . t))))
              (actions . (((key . "RET") (label . "Open") (command . "open"))))
              (sort . ((column . "year") (ascending . nil)))   ; descending
              (rows . (((id . "1") (cells . ((title . "SICP") (year . 1996))))
                       ((id . "2") (cells . ((title . "PAIP") (year . 1992))))))))
      (handlers `(("open" . ,(lambda (id _row) (message "Opened %s" id))))))
  (table-view-display "*books*" spec handlers))
```

Runnable demos live in [`examples/`](examples/):

| File                                            | Shows                                              |
|-------------------------------------------------|----------------------------------------------------|
| [`minimal.el`](examples/minimal.el)             | inline rows from a JSON spec                       |
| [`fill-function.el`](examples/fill-function.el) | populate via a fill function (Emacs subprocesses)  |
| [`upsert.el`](examples/upsert.el)               | streaming row updates via a timer                  |
| [`multi-sort.el`](examples/multi-sort.el)       | column navigation, reordering, + multi-column (`C-u ^`) sorting |
| [`sort-methods.el`](examples/sort-methods.el)   | per-column sort methods (`values`, `compare`) + a default sort |
| [`delete.el`](examples/delete.el)               | row deletion gated on a custom pre-delete step |
| [`bulk.el`](examples/bulk.el)                   | marking (`m`), narrowing (`/`), and bulk actions (`bulk: t`) |
| [`paginate.el`](examples/paginate.el)           | server-side pagination over a fake producer (`page-fn`, push-down sort/filter, cross-page marks) |
| [`org-links.el`](examples/org-links.el)         | Org links in cells (`[[target][desc]]`), followed by `C-c C-o` or mouse |
| [`native.el`](examples/native.el)               | **1,000,000 rows** sorted/filtered in a Rust accelerator (`table-view-native-display`) |
| [`native-live.el`](examples/native-live.el)     | live updates through the accelerator (`table-view-native-patch` → `$/delta`), plus Rust `count`/`aggregate` |

Open one and `M-x eval-buffer`.

> The two `native*` demos use the optional Rust accelerator (`tvx`).  On first run
> table-view offers to build it (needs [cargo](https://rustup.rs)); accept and
> the buffer shows build progress, then loads once the build finishes.  Decline
> and it runs pure elisp with a warning.  See
> [`docs/proposals/native-accelerator.org`](docs/proposals/native-accelerator.org).

## Keybindings

| Key                      | Action                                                                                                                                         |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| `n` / `p`                | next / previous data row (stops on the last / first row, never leaving the table body)                                                        |
| `f` / `b`                | forward / backward — by **column** (cell) on any table line (header or data row), by **char** elsewhere                                        |
| `M-<left>` / `M-<right>` | move the column at point left / right (org-table style); point follows the column                                                              |
| `^`                      | sort by the column at point — a data cell **or its header**, and only a column declaring `sortable`; repeat cycles asc → asc nulls-first → desc → desc nulls-first (empty cells sort last by default); off a column, cycles every sortable column asc/desc |
| `C-u ^`                  | add the column at point as a secondary (tie-breaker) sort key; a following run of `^` then toggles that key's direction                        |
| `g`                      | revert: `revert-buffer` (`special-mode`) runs `table-view-revert` — clear filter/narrow & refresh (client) or re-fetch the current page (paged), preserving the sort |
| `m` / `u` / `M` / `U`    | toggle mark on the current row / unmark it / mark all visible rows / unmark all (marked rows get a `*` gutter column) |
| `/`                      | narrow to the marked rows, or — when nothing is marked — filter by substring |
| `C-c C-o`                | follow the Org link at point (cells may hold `[[target][desc]]`; links are also mouse-clickable)                                               |
| `>` / `<` (or `.` / `,`) | next / previous page (server-paged buffers only)                                                                                               |
| `M->` / `M-<`            | last / first page; `M-g` go to page N (offset paging)                                                                                          |
| `q`                      | quit window                                                                                                                                    |
| *action keys*            | dispatched to your handlers (e.g. `RET`)                                                                                                       |

Unless the spec declares a `sort`, tables open **unsorted** (in load order);
sorting is otherwise opt-in via `^` (with point on a data cell or its column
header).  Repeating `^` on the same column walks four stages — ascending,
ascending nulls-first, descending, descending nulls-first — then wraps.  A
"null" is an **empty cell** (nil or the empty string); empties sort **last** by
default, and the nulls-first stages pull them to the top instead.  Null
placement is absolute (top or bottom of the whole view), independent of the
asc/desc direction.  `C-u ^` adds the column at point as a lower-priority
tie-breaker, so you can sort within groups — e.g. by name, then by year.  A
spec `sort` may itself be a list for a multi-column default.

The hint line prints the chain as `dept asc -> score desc`, so what the rows
are in is always on screen.  The browser renderer composes the same chains
without a prefix argument — see [Sorting in the browser](#sorting-in-the-browser).

Refresh is `table-view-revert` (clears a filter/narrow in client buffers,
re-fetches the current page in paged ones) without imposing a sort it wasn't
already in.  It is not bound in table-view's own map; it runs through the
standard `revert-buffer` (`g`) that `special-mode` provides.

## Spec format

The spec is a plain alist — hand-write it (the usual way), or convert a JSON
string with `table-view-parse` when your data already arrives as JSON.  Column
`key`s are strings; a row's `cells` use the **matching symbols** (`(name . …)`
for a column whose key is `"name"`). Booleans are `t` / omitted.

**Top level**

| Key       | Meaning                                                                                                                                                                                      |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `title`   | buffer title line                                                                                                                                                                            |
| `columns` | list of column definitions (see below)                                                                                                                                                       |
| `actions` | list of action keybindings (see below)                                                                                                                                                       |
| `sort`    | default sort, applied on open when the spec supplies rows: a single `{ "column": KEY, "ascending": BOOL, "nulls": "first"\|"last" }` (`nulls` optional, default `"last"`), or a **list** of them `[{…}, {…}]` for a multi-column default (order = priority) |
| `rows`    | initial rows (optional; can be filled later)                                                                                                                                                 |
| `pagination` | server-side pagination config (with a `page-fn`, see below): `page-size` (rows per page, default 50) and `strategy` (`"offset"`, the default, or `"keyset"`)                             |

**Column**

| Key        | Meaning                                                                                                                                                                                             |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `key`      | unique column id; matches keys in each row's `cells`                                                                                                                                                |
| `header`   | header label                                                                                                                                                                                        |
| `type`     | `"number"` (numeric sort), `"badge"` (colored from a palette), or omitted (string)                                                                                                                  |
| `align`    | `"right"` to right-justify; omitted means left                                                                                                                                                      |
| `sortable` | whether `^` can sort by this column — **opt-in**: a column declares it or `^` passes over it, per [SCHEMA.md](SCHEMA.md). The spec's own `sort` opens as written either way, and so does a `sortBy()` call: the opt-in gates what a READER may reach, not what the embedding page may ask for |
| `values`   | ordered list of the column's expected values, e.g. `["low","medium","high"]`; that order becomes the sort order (categorical). Colours stay in `badges` — `values` is ordering only                 |
| `compare`  | sort method override: `"number"`, `"string"`, or `"natural"` (number-aware, so `2 < 10`); a name registered in `table-view-comparators`; or (in an elisp spec) a `(a b) -> bool` predicate function |
| `badges`   | for `type: "badge"`: list of `{ "value": V, "color": C }`; declared order is also the sort priority. A badge's optional `group` (a producer's own label, e.g. glance's `active`/`inactive`) is read by neither renderer and ignored here                    |

**Action**

| Key       | Meaning                                                                 |
|-----------|-------------------------------------------------------------------------|
| `key`     | a `kbd` spec, e.g. `"RET"` or `"x"`                                     |
| `label`   | shown in the hint line                                                  |
| `command` | looked up in the handler alist; the handler is invoked as `(FN ID ROW)` |
| `bulk` | `t` makes this a **bulk action**: its handler is invoked as `(FN ROWS)` with the marked rows (or the row at point when none are marked) |

**Row**

| Key     | Meaning                                                                              |
|---------|--------------------------------------------------------------------------------------|
| `id`    | unique identifier (used for upsert and for keeping point on a row across re-renders) |
| `cells` | maps each column `key` to its value                                                  |

## API

| Function                                                      | Purpose                                                                                                                                                             |
|---------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `(table-view-parse JSON-STRING)`                              | parse JSON into the alist shape the core expects                                                                                                                    |
| `(table-view-display BUFFER SPEC HANDLERS &optional FILL-FN PAGE-FN)` | render `SPEC` into `BUFFER`, install `HANDLERS` (alist of command-name → `(FN ID ROW)`), and populate via `FILL-FN` (all rows) **or** `PAGE-FN` (server-side pagination, see below); returns the buffer |
| `(table-view-set-rows BUFFER ROWS)`                           | replace all rows                                                                                                                                                    |
| `(table-view-upsert-row BUFFER ROW)`                          | add `ROW`, or replace the existing row with the same `id` in place                                                                                                  |
| `(table-view-delete-row BUFFER ID)`                           | remove the row with `ID` (point moves to a neighbour). Wire deletion via an action handler that does any pre-delete work and calls this only on success             |
| `(table-view-marked-rows &optional BUFFER)`                   | the marked rows (in row order; in a paged buffer, every marked row across all visited pages) |
| `(table-view-current-or-marked-rows &optional BUFFER)`        | the marked rows, or the row at point when none are marked — what a `bulk` handler receives |
| `(table-view-refresh BUFFER)`                                 | re-invoke the fill function, or (paged) re-fetch the current page                                                                                                   |
| `(table-view-set-page BUFFER ROWS &rest META)`                | **paged delivery**: install `ROWS` as the current page. `META` keywords: `:total`, `:has-next`, `:next-cursor`/`:prev-cursor` (keyset), `:offset`                   |
| `(table-view-page-error BUFFER MESSAGE)`                      | **paged delivery**: report a fetch failure — keeps the current page, shows `MESSAGE`, `g` retries                                                                    |
| `(table-view-page-request &optional BUFFER)`                  | the live paging query (`:sort` `:filter` `:strategy` `:page-size`) — for pushing a whole-result server op from a bulk handler                                        |

Populate up front via the spec's `rows`, in bulk via `table-view-set-rows`, or
incrementally via `table-view-upsert-row` (ideal for streaming sources — rows
with a known `id` update in place without moving).

## Server-side pagination

For datasets too large to hold in memory, pass a **`page-fn`** (the 5th
argument to `table-view-display`) and a `pagination` block in the spec. The
buffer then holds only the **current page**; sort and filter are **pushed
down** into each request rather than run client-side.

The table calls your `page-fn` with a request plist and shows `loading…`; you
fetch (synchronously *or* asynchronously) and deliver the page with
`table-view-set-page`, or `table-view-page-error` on failure:

```elisp
(defun my-page-fn (req)
  ;; req: (:buffer BUF :limit N :sort ((COL . DIR)…) :filter STR-or-nil
  ;;       :offset M          ; offset strategy
  ;;       :cursor C :direction 'forward|'backward)  ; keyset strategy
  ;; Each sort key is (COL . DIR); DIR encodes both direction and null
  ;; placement, so read it with the accessors rather than the raw cdr:
  ;;   (table-view--sort-key-asc KEY)   -> t (asc) / nil (desc)
  ;;   (table-view--sort-key-nulls KEY) -> 'first / 'last  (empties top/bottom)
  ;; e.g. translate to SQL `ORDER BY COL [ASC|DESC] NULLS FIRST|LAST'.  See
  ;; examples/paginate.el for a worked page-fn.
  (let* ((rows  (my-query :where (plist-get req :filter)   ; filter pushes down
                          :order (plist-get req :sort)      ; sort pushes down
                          :offset (plist-get req :offset)
                          :limit (plist-get req :limit)))
         (total (my-count :where (plist-get req :filter))))
    (table-view-set-page (plist-get req :buffer) rows :total total)))

(table-view-display "*rows*"
                    '((title . "Rows")
                      (columns . (((key . "name") (header . "Name"))))
                      (pagination . ((page-size . 50) (strategy . offset))))
                    handlers
                    nil            ; fill-fn — unused in paged mode
                    #'my-page-fn)  ; page-fn
```

- **`>` / `<`** (or **`.` / `,`**) turn pages; **`M->` / `M-<`** jump to the
  last / first page; **`M-g`** goes to a page number (offset paging).
- **`/`** and **`^`** push the filter and sort to the server and re-fetch page
  1, so they act on the whole dataset — the indicator counts the filtered
  total, not just the loaded page.
- **Marks span pages**: `m` caches the row, so a mark survives paging away, `/`
  (narrow) shows your whole selection, and a `bulk` action operates on every
  marked row across all pages — not just the ones on screen.
- **`strategy`**: `offset` (default) gives random page access and exact totals;
  `keyset` uses opaque forward/back cursors (`:next-cursor` / `:prev-cursor`
  from `table-view-set-page`) — stable on large, changing datasets, but without
  a total or random jumps. When the producer can't count, pass `:total nil` and
  the view infers "more" from a full page.

See [`examples/paginate.el`](examples/paginate.el) for a complete runnable demo
over a fake in-memory producer.

## Org links

A cell whose value contains Org bracket links renders each as a followable
link:

```elisp
(cells . ((repo . "[[https://github.com/rails-to-cosmos/table-view][table-view]]")
          (docs . "[[file:README.md][readme]]")))
```

The cell shows the **description** (`table-view`, `readme`); `C-c C-o` or a
mouse click follows the link. `https:` / `mailto:` / `ftp:` links open with
`browse-url`, and every other Org link type (`file:`, `id:`, custom
`org-link-parameters`) is handed to Org. Width, filtering, and sorting all use
the visible description, not the raw markup, so columns stay aligned and
`/ readme` matches. Rebind `table-view-open-link-function` (a function of the
target string) to customise what a followed link does, or set
`table-view-render-links` to nil to show cells verbatim.

## Browser renderer

[`web/table-view.js`](web/table-view.js) renders the same contract
([`SCHEMA.md`](SCHEMA.md)) in a browser: one dependency-free file, no build
step. [`web/demo.html`](web/demo.html) runs it by double-clicking.

```js
const tv = TableView.mount(document.querySelector("#app"), view, {
  onAction(command, id, row) { ... },   // like the Emacs handler alist
  onLink(target, row)        { ... },   // follow an Org link
  onFilter(q)                { ... },   // producer filters; `setRows' its answer
});
```

**The handle `mount` returns is this renderer's own surface**, versioned with
the package and documented here — SCHEMA.md governs what a *producer* sends,
not what an embedding page may call. Two statics come with it, and they are the
grammar the renderer itself uses rather than conveniences bolted on:

```js
TableView.parseQuery(q, keys)   // the filter micro-syntax, tokenized
TableView.displayText(cell)     // a cell rendered the way the table writes it
TableView.comparator(column)    // the column's sort function, SCHEMA's rules
```

A consumer sorting or filtering its own copy of the rows gets the same answers
the table shows by calling these, instead of reimplementing the precedence.

With `onFilter` the renderer stops narrowing locally: the debounced filter box
hands the query to the producer, and whatever `setRows` delivers is what shows.

`mount` returns a live handle:

| Method             | Purpose                                                        |
|--------------------|----------------------------------------------------------------|
| `setView(v)`       | replace the whole view (columns, actions, sort, rows)          |
| `setRows(rows)`    | replace all rows                                               |
| `upsertRow(row)`   | replace the row with that `id`, else append                    |
| `deleteRow(id)`    | drop the row with that `id`                                    |
| `applyDelta(ops)`  | apply windowed insert/delete/reset ops in order                |
| `getRows()`        | the rows as given, in store order                              |
| `getVisible()`     | the rows on display: filtered and sorted, in display order     |
| `select(id, col?)` | select that row — and optionally one cell of it — and scroll it into view; false if not visible |
| `getSelection()`   | `{ id, col }`; `col` is `null` for a whole-row selection       |
| `getQuery()`       | the filter query as last delivered (chips + what was committed) |
| `selectStep(±1)`   | move the selection a row, turning the page at either end       |
| `nextPage()` / `previousPage()` | turn a page, landing on its first / last row     |
| `pageInfo()`       | `{ page, pages, from, to, total }` over the filtered set       |
| `openFilter(how?)` | summon the filter — raises the palette, draws `inline`'s box onto the chips' line, or focuses the resident box. `{narrow: true}` opens it on the **filter half** of the grammar alone (below) |
| `closeFilter()`    | dismiss it and give the keyboard back to the table            |
| `filtering()`      | is the filter box holding the keyboard? — what a consumer binding keys over the whole document asks before claiming one |
| `destroy()`        | let the mount go: releases the theme watchers — one on `document.documentElement`, one on a `matchMedia` list — registered outside the container and outliving your emptying it |
| `stripLastToken()` | drop the typed text, else the last chip — a sort chain gives up its last key per press — and reapply; false if nothing was left. Under `inline` this is the ONLY route to a chip from the keyboard, the box's own Backspace stopping at the box |
| `sortBy(col, asc?)` | sort on that column key, ascending unless `asc` is `false`, replacing the chain; false if no column carries the key |
| `sortPromote(col)` | `^`: put that column at the **head** of the sort chain ascending, flipping it where it already leads, and write the chain into the query as one `sort:a->b` token; false if it is not `sortable` |
| `getSort()` / `setSort(chain)` | read the chain in force, highest priority first; replace it (an empty one clears the sort) |
| `pushCrumb(c)`     | leave a `{label, query}` crumb behind; returns how deep the trail is now |
| `popCrumb()`       | take the last crumb off and hand it back — `{label, query}`, or `null` on an empty trail. It applies nothing |
| `setCrumbs(list)` / `getCrumbs()` | replace the trail; read it back as copies |
| `toggleMark(id)`   | mark that row, or unmark it; returns the state it landed in   |
| `markAll()`        | mark the whole filtered set, every page of it; returns the marked count |
| `flagRow(id)`      | flag that row, or unflag it; returns the state it landed in    |
| `unflagRow(id)`    | take the flag off, whether or not it had one                   |
| `getFlagged()`     | the flagged ids, ordered like `getMarked()`                    |
| `clearFlags()`     | take every flag off; marks are left alone                      |
| `flaggedCount()`   | how many rows are flagged, the hidden ones counted             |
| `getMarked()`      | the marked ids: those on show in display order, then the rest |
| `clearMarks()`     | take every mark off                                            |
| `markedCount()`    | how many rows are marked, the hidden ones counted             |
| `el`               | the root element, which also emits the two CustomEvents        |

### Sorting in the browser

A view's `sort` may be one key or a **chain** of them (SCHEMA.md, Sort object),
and both renderers run every key: the first that separates two rows decides,
and rows equal on all of them keep the order they arrived in.

Emacs composes a chain with a prefix argument — `C-u ^` appends a tie-breaker at
the bottom. **A page has no prefix arguments, so the browser composes by
promotion instead.** `sortPromote(col)` — what a consumer binds `^` to, and what
a header click does — puts a column at the **head** of the chain ascending,
shifts the rest down behind it, and drops that column from wherever it sat
below. Pressing it again on the column already leading flips that key alone.

So a chain is built by pressing over columns in **reverse priority order**:

```
^ on Deadline    →  deadline ▲
^ on State       →  state ▲ · deadline ▲
^ on Title       →  title ▲ · state ▲ · deadline ▲
```

One key, no prefix, no modes, and nothing to remember: the chain is visible as
it grows, on the **headers** of the columns it orders — each carries its
direction and, past one key, its place in the chain (`Headline ▲¹`), the leading
key in full ink and the tie-breakers muted — and the hint line spells it in
words.

**Promotion writes the query.** The new chain goes into the applied filter query
as ONE arrow-chained `sort:` token (`sort:state->deadline:desc` — SCHEMA.md,
Filter query), which is delivered like any other query change. So the order is
one of the query's own terms: it shows as a chip, `stripLastToken()` takes a key
off it, a consumer that writes the query into a URL has written the order too,
and a producer filtering server-side is told what order to answer in. Nothing
keeps a second copy of it.

**One order, one chip.** Every sort token of an applied query folds into that
same canonical form at the chip door, so typing `sort:title sort:priority` leaves
one chip reading `sort:title->priority` and the arrow is what the URL carries.
Folding is safe for the reason repeating is — a repeated sort key is the position
it already holds — and first-wins dedup spans the segments and the token
boundaries alike. A token the renderer reads no order from is left alone as its
own chip: it is the reader's text, and the producer's chance to say what is wrong
with it. Since the chip IS the chain, `stripLastToken()` gives up its last
tie-breaker per press and takes the chip off with the last key.

What a promotion composes onto is the chain **in force**, declared keys and all,
so only the promoted key ever moves — the first press is where a declared chain
becomes tokens, spelled in full because that is what the rows are in.

`sortBy` is the producer's door and is unchanged: it *states* an order,
replacing the chain, ignoring `sortable` and touching no query — it restates
what a query naming no sort key falls back to. `sortPromote` is the reader's and
is gated by `sortable`, exactly as a header click is. `setSort([])` is the clear.

### Column widths

**The `title` column fills; every other column is exactly its own content.**
A view carrying a column keyed `title` — the same convention `linked` reads —
is laid out `table-layout:fixed`, every other column declares a width, and the
title declares none, so it takes every pixel the others leave.

What the others are worth is decided by **the cells**; a header never widens a
column. A column is as wide as its own widest cell, plus a badge's pill and, where the
column is in the sort chain, its mark. A header longer than that ellipsizes
into it rather than pushing the column open — which is what makes a column of
`[#A]` badges read as tight as its badges rather than as wide as the word
*Priority*. What the ellipsis eats is the **word**: a header is two boxes, the
word flexing and the mark declining to, so a squeezed header still says which
way it is sorted and where it sits in the chain. A column holding no cell at
all has no content measure, so there the header is the only measure there is.

A sized column is **capped at 40 characters** and ellipsizes past it, which
bounds the pathological cell — a long tag run — that would otherwise eat the
title's share. The number is measured: across a 12,674-headline Org corpus the
widest non-title cell is exactly 40 characters, so the cap is the tightest
ceiling that clips nothing in it. The cap cannot reach the title, which has no
width to cap.

The leading gutter is the same rule at its narrowest: `[X]` is three
characters and 24px is the cell padding, and it is nothing over that.

The table keeps a **`min-width`** of the sized columns plus a 40-character
floor for the title (or the title's own content, where that is narrower). That
is where a window too narrow for them starts scrolling sideways instead of
crushing the title. Nothing measures the container — every number is characters
and the one padding constant — so a resize is the browser's arithmetic to redo
and there is no observer to keep in step with it.

A view with **no `title` column** has nothing to fill with: it keeps the auto
layout, widths as hints, and headers paid for in the width, exactly as before.

### Theme and layering

Theme is a handshake and the page leads: set `data-theme="dark"` or `"light"`
on `<html>` and that decides; with neither, `prefers-color-scheme` does. Both
are watched, so toggling the attribute repaints without a remount.

One z-band, so a consumer knows what it is layering against — the selection's
marks at 1, the suggestion list at 5, the palette backdrop at 90 and its panel at 91.
Nothing goes higher: 100 and up is yours, and a consumer's own modal is meant
to win over the palette.

### Touch

On a coarse pointer the targets grow to ~44px — rows, suggestion rows and chips
— by **padding**, not by a set height, so rows stay uniform and the measured row
height carries the change into the virtualization and scroll arithmetic on its
own. The filter input reaches 16px (under which iOS zooms the page on focus),
and a chip's remove mark is always visible rather than waiting for a hover.

A **long press** (500ms, finger still) runs the row's default action — the same
one RET and a double click run — selecting the cell under the finger first.
Drift past 10px or a scroll of any size calls it off, because every touch on a
list might be the start of a scroll; only the touchend that completes a press is
swallowed, so no click or context menu follows the action.

### Row marking

Pass **`flagHelp`** a string — `"d/D archive · u unflag"` — to turn the flagged
count into a reminder while the cursor sits on a flagged row: `2 flagged · d/D
archive · u unflag · 40 rows · …`, with the token before each label marked up
as a key. The whole string is the consumer's, because the keys are the
consumer's to bind and to name; the renderer supplies only the count and the
styling, and hardcoding a `d` or a `u` here would be asserting a keymap it does
not own. Off a flagged row, or without the option, the segment is the plain
count it always was.

Pass **`actionHints: false`** to drop the `KEY label` pairs from the hint line
while the counts, the sort and the pager stay. For a consumer that prints its
own keymap and would otherwise print a second one that disagrees with it.
Presentation only — the actions still dispatch — and the default shows them, so
a consumer that says nothing sees the line it always saw.

Pass **`marks: true`** for dired's row marking. Every row gets a leading
checkbox — chrome, the way the pager is, so `columns` and `cells` mean exactly
what they meant and SCHEMA.md goes on calling marking renderer-local. Its header
is blank, its box is org's own `[ ]`/`[X]` drawn from the row's class, and a
click on it toggles that row **without moving the selection**: a mark is a
standing choice about a row and says nothing about where the cursor is. On a
coarse pointer the box widens to a 44px target and takes the tap; the long
press that runs a row's default action belongs to the rest of the row.

Without the option, one predicate gates the column, the wash and the count
together, so a consumer who never asked for marking cannot get half of it.

Marks are keyed by `id` and held apart from the rows, so one survives a
`setRows`, an `upsertRow`, a filter that hides its row, a page it is not on and
a re-sort. `deleteRow` and a delta's `delete` take the mark with the row;
`setView` drops all of them with the view. `getMarked()` reads the rows on show
first, in display order, then the hidden ones in the order they were marked —
stable, so a bulk action over it runs the same way twice.

While anything is marked the status line leads with `N marked · `, counting
**every** mark — the ones a filter or a page is hiding included, since that is
the number a bulk action would run over. The rest of the line is unchanged.

A marked row wears a wash of `--tv-muted`, which is neither of the two washes
that already mean something: frost is the applied filter and `--tv-sel` is the
cursor. It replaces the zebra stripe rather than layering over it — one
background slot, and a mark outranks a stripe — while the cursor's rule follows
the mark's, so a row wearing both reads as the cursor and keeps its checked box,
the way dired draws its mark under point. The wash is faint because the floor
binds: the tag ink is `--tv-muted` too, so each theme washes only as far as that
ink stays above 4.5:1 on it.

**The keys stay yours** — nothing here binds them. `table-view.el` spells them
`m` (toggle and advance), `u` (unmark and advance) and `U` (unmark all); bind
those to `toggleMark`/`markAll`/`clearMarks` and the two renderers rhyme.
`markAll()` takes the **filtered set**, every page of it — a filter is what the
reader narrowed to, where a page is only how much of it fits at once.

**Flags** are the same mechanism instantiated a second time. A flag is a
*pending* action — the two-press `d` a consumer drives before confirming — where
a mark is a *standing* selection, so they are separate id-keyed sets and one
mechanism answers everything about either: does a row wear it, toggle it, take
it off, put it on a whole set, take it off every row, list the ids. A row can
carry both; `clearMarks()` leaves flags alone and `clearFlags()` leaves marks
alone, so a consumer wanting both gone asks for both. They survive what marks
survive (a filter, a page, a sort, `setRows`, an upsert) and die where marks die
(the row going away, or the view). The **handle** is where the two differ:
`markAll()` is offered on marks alone and `unflagRow()` on flags alone, being
what only that state is used for.
A flagged row takes a red wash and, on the box cell, a red left edge —
a second channel, because the background is one slot and the cursor wins it, so
without the edge a flagged row under the cursor would stop saying it is
flagged. Precedence on that one slot is cursor, then flag, then mark, then
zebra. When either count is nonzero it leads the hint line, the pending one
first: `2 flagged · 3 marked · 40 rows · sort …`.

**`flags`** is the flag ground's own opt-in, and it **defaults to `marks`** —
flags shipped under that one option, so a consumer that never names this gets
the table it already had. Named, it is its own answer. `flags: true` alone draws
the leading gutter and the flag's edge in it with **no checkbox**: the box is
scoped to a `tv-marking` root class that only `marks` puts on, and the gutter
click, being a mark toggle, selects the row there like any other cell. The
gutter belongs to either state, so either one asks for it. `flags: false` under
`marks: true` takes the flag drawing off and leaves the marking alone. Either
way the option gates the **drawing**: the ids still go in and come back out of
`getFlagged()`, exactly as `marks` has always worked.

### Paging

Pass **`pageSize`** to show the filtered, sorted set a page at a time. The
window, spacers, scroll band and `getVisible()` all work *inside* the page, so
the virtualizer knows nothing about paging; column widths are the exception and
measure the whole filtered set, or they would change every time the page turned.

The pager lives in the status line rather than in a control of its own —
`1–100 of 12,870 · ‹ prev · next ›` — and is absent entirely while there is one
page, leaving the line exactly as it is without `pageSize`. A query or sort
change reads from the top again; a shorter set clamps rather than stranding the
reader past the end.

**Two presentations.** Under `pageSize` the rows are drawn either *paged* — the
window running inside one page's slice — or *continuous*, the window running
over the whole filtered set. It boots paged, and an explicit turn is always
paged: `nextPage()`, `previousPage()` and the pager's own controls each snap to
that presentation at the page they asked for. What switches to continuous is
`selectStep` crossing a page boundary, at that moment: rather than turning the
page and jumping the scroller, the cursor steps onto the row that was always
next and the scroll band eases as it does within a page, so a held movement key
flows across the seam with nothing to see. A new query, a sort toggle and
`setRows` all return to paged.

In continuous the pager becomes **orientation**: `pageInfo()` derives the page
from where the *cursor* is, so `101–200 of 250` appears the moment the cursor
crosses into that range. "On show" means the cursor's page throughout —
`getVisible()`, `getMarked()` and `getFlagged()` all agree with the pager, so
buffer-end keys still mean the ends of the page being read. Marks, flags, the
selection and its column are id-keyed and carry across untouched; the
presentation decides what renders, not what is true.

Movement is continuous across the boundary. `selectStep(+1)` off the last row of
a page turns to the next and lands on its first; `selectStep(-1)` off the first
lands on the previous page's last, carrying the selected column either way, with
the scroll band placing the landing row. **The keys stay yours** — nothing here
binds them; bind `n`/`p` (or `j`/`k`) to `selectStep`, and `[`/`]` to
`previousPage`/`nextPage`.

Rows are **virtualized**: only the scrolled-to window plus a small overscan
has DOM, so a 13k-row view mounts and filters without freezing the tab. A row
outside the window has no element to click — move the selection with
`select(id)`, over ids from `getVisible()`, rather than by driving row
elements. The filter input is built once and never re-created, so focus and
caret survive typing.

Movement is smooth in two places. The selection marks **crossfade in place**
(80ms), and the viewport **eases** toward the row rather than jumping — one rAF
loop that covers 30% of the remaining distance per frame and retargets, so a
held key converges on the latest row instead of replaying a backlog. Any wheel,
touch or drag cancels it, and `prefers-reduced-motion: reduce` turns off both.

The ease keeps a **margin under the cursor**, like Emacs's `scroll-margin` or
vim's `scrolloff`: moving down, the row's foot stops at two thirds of the
viewport; moving up, its head stops at one third; between those the viewport
holds still, so a held run follows one row at a time with the cursor pinned to
the band edge. It clamps at both ends, where the cursor walks into the margin
instead. A **click never scrolls** — the row is already under the pointer.
`select()` returns at once and `getSelection()` is synchronous truth, but the
painting it implies coalesces to one animation frame: a consumer holding `n`/`j`
at ~30 calls a second costs one paint per frame rather than thirty.

When the row under the selection goes — filtered away, deleted, paged past —
the selection keeps its **place** rather than its id, staying at that visual
index (clamped), so movement carries on from where the eye is.

**Selection** is a row and, optionally, one cell of it. `select(id, 2)` washes
the third column — `.tv-colsel` on every rendered cell of it and on its header —
and stamps `.tv-cell-sel` where that band crosses the cursor row, which is the
crosshair; `select(id)` selects the whole row with no band anywhere, which is
what it always did. `getSelection()` reports `{id, col}` — read it, add a step,
hand it back to `select` — which is how a consumer binds cell movement to keys,
and a column index outside the table is **no column**, so that loop walks off
either end into the whole-row selection instead of stalling on the edge. Every
mark is re-derived on every render, so they survive a scroll, an upsert and a
`setRows` that still carries the id.

The whole selection is grounds: no outline, border or shadow on any of the
three. The bands wash `--tv-col`, a pale amber that is the one hue nothing else
on the table uses — the sort chip in the strip above borrows it deliberately,
being about a column too — and light enough that laying it over a marked or
flagged row shifts the hue without spending the contrast the tag ink needs.
They sit on the cells, where the table paints them above the rows, so the
stripe, a mark, a flag and the cursor all still read through the column they
cross; the crossing takes one step more of the same wash, on the same
background slot, the cell's rule following the column's. Each strength is the
most the ink allows on the grounds it lands on, which is why the two themes are
far apart.

**Actions have no buttons.** They render on the hint line as `KEY label` pairs,
the way `table-view.el` prints its legend: the keys are the interface, and a
consumer binds them and dispatches the command (`onAction`, or the
`tableview-action` event). A double click still runs the default action.

**Three roles, three readings.** A *state* is a filled pill in its palette
colour; an *applied filter* is a frost chip; a *tag* is small muted lowercase
text with no box at all, several separating on a middot. The multi-valued
column's cells render a chip per value, split by the same splitter that builds
that column's value domain. Presentation only: what is searched, sorted and
measured is still the text you sent.

**A link reads as a link, wherever one is drawn.** A cell holding Org markup
draws each `[[target][desc]]` as an anchor, and a row sent with `linked: true`
draws its whole `title` cell the same way — `--tv-link` and an underline, one
declaration for both, so a title that is part markup and part plain words is one
colour rather than two. The ink is the accent's own blue at a lightness that
clears 4.5:1 on every ground a cell can wear: the zebra, a mark, a flag, the
cursor, the column band over each of those, and the crosshair — a harder floor
than the page, which is why it is a palette value rather than the accent. Ink
and decoration and no ground, so it survives every row state at once; a view
with no `title` column carries no row mark.

### The filter box

Its placeholder teaches the grammar rather than naming the box —
`key:value · status:open|closed · -word · "some phrase"` — since what a filter box is
for is obvious and what it accepts is not.

It speaks [`SCHEMA.md`](SCHEMA.md)'s query micro-syntax: `key:value` field
predicates — only where `key` names a column, so org text like `:work:` or
`=code=` never becomes one by accident — plus `"quoted text"`, `-negation`, and
free text for everything else.

**Combination is one rule: tokens AND, alternatives OR.** Every token narrows,
whether or not another names its key: `tag:web tag:api` carries both, and
`state:TODO state:DONE` asks a one-value cell for two values, which is no row. A
row matching **either** is the one token `state:TODO|DONE` — a predicate's value
splits on `|` and each alternative is read as that key's own value. So
`state:TODO|NEXT tag:web tag:api review` reads *either state, carrying both tags,
mentioning review*. Empty alternatives drop (`a|` is `a`), a value left with
none narrows nothing the way `key:` does, and a negation covers the whole token
(`-tag:a|b` carries neither). The bar is a predicate's: free text is the text it
spells, bar and all.

A column is **multi-valued** when its cells hold delimited lists (`:a:b:`) —
decided by their shape, so the column may be called `tag`, `tags` or anything
else. Its cells hold several values at once, which is what a repeated key can
meet, and it is the column the whole-entry meta below reads.

```js
TableView.parseQuery('state:TODO -tags:done', ["state", "tags"])
// [{ negated: false, key: "state", value: "TODO", quoted: false, start: 0, end: 11, sep: 5 },
//  { negated: true,  key: "tags",  value: "done", quoted: false, start: 12, end: 22, sep: 17 }]
```

The tokenizer is exported so a consumer can highlight the box and a producer can
implement the same grammar at the other end. Filtering locally applies the
parsed query; with `onFilter` the raw text goes to the producer and the grammar
is its business.

An org **tag names no key**. `tag:course` is the one spelling of a tag facet,
and the facet-then-search that `course:text` used to be is the two tokens
`tag:course text` — the predicate reads the tags cell, the free text reads the
row. A key derived from the ROWS could not work: a producer and a renderer hold
different rows, so the same token was a predicate for whoever held the tagged
row and free text for whoever did not.

One key that is not a column is **reserved**: `planned` reads the view's date
columns together, so `planned:*empty*` is a row nobody has put a day on,
`-planned:*empty*` is everything with a date, and `planned:2026-08` is a
schedule *or* a deadline in that month. Reserved because both sides of the wire
decide it off the cells alone — no producer set, no vocabulary, no clock — where
the producer metas below need the producer.

A **suggestion list** under the box completes it. A bare word offers, in order:

1. the **value or key it already spells** (`book` → `tag:book`, `tag` → `tag:`)
   — the one offer that needs no more typing;
2. the **text itself**, as a free-text token (`rf` → `"rf"`, committed `rf`);
3. the **keys** it opens — the view's columns, and `planned` — a key it spells
   in full ahead of the ones it only opens;
4. the columns whose declared domain holds it as a **value** by prefix (`TOD` →
   `state:TODO`, `boo` → `tag:book` with the count of rows holding it) — exact
   facts about the data;
5. up to five whole **titles** it is inside, prefix hits first (`tanik` →
   `"tanik's birthday gift and party"`).

Exact beats fuzzy.

**Two of those offers are free text**, and each says which it is in a muted
aside where the others print a count.

The **literal** (`text search`) is what was typed. It is drawn **quoted**,
because that is the grammar's own notation for "this is text" and the row is
where you learn it, and it commits **bare**, because bare is what a reader who
knew the grammar would have written — the two match identically. Quotes are
written into the commit only where the text holds whitespace or a colon and a
bare token would break up. Its rank is the point: under *row one is always the
choice* a plain search would otherwise be reachable only by quoting or by
Escape, which is a grammar lesson charged for a search.

A **title** (`title`) is a whole title one of the loaded rows carries, committed
quoted because titles hold spaces: a reader typing a fragment of a headline is
after the **row**, and a title is a thing that reader has seen. The set is the
loaded rows', deduplicated; the tier is capped at five inside the twelve the
list takes, and waits for two characters, one letter being inside most of a
store and saying nothing about any of it. Neither offer is dimmed: both are
facts.

After `key:` comes that column's value domain: its declared `values` in their
own order, then any **badge value they did not already name**, else the distinct
cell values — each with the number of rows behind it, and the value typed in
full at their head whatever that order says. The two are merged rather than one
shadowing the other, so a column that declares meta-values keeps its concrete
keywords in the list. `*empty*` closes every one of those lists, declared or
not. Neither free-text offer appears here: a half-typed `key:value` is already
an intent. `planned` has no domain to offer at all — what follows it is a date
prefix over several columns at once.

A `|` **re-opens** that domain: `state:DONE|` asks for the values again, the
prefix is what follows the last bar, and accepting lands the alternative behind
it — so an alternation is built one value at a time and the committed token
stays one token.

**Starred metas.** A value written between asterisks is a **meta**: a value with
semantics of its own rather than cell text. A bare word is never one, so
everything a cell can spell stays reachable as itself — `state:none` is a state
reading `none`. Three kinds, of which the renderer answers the first two in full:

- `*empty*` — the **empty cell**, on every key including `planned`. No producer
  needed: a cell is empty or it is not.
- `*word*` on a multi-valued column — the **whole entry**, where the bare word
  is a substring of the delimited cell: `tag:*book*` is the tag `book` and
  `tag:boo` is any tag holding those letters.
- anything else — a **producer meta**, a name for a set only the producer can
  resolve (`*active*`, `*inactive*`).

A meta renders dimmed and italic, apart from the concrete values beside it, and
**carries no count**, because counting it here would print 0 (no cell holds the
literal string) beside an entry that in fact matches plenty. Accepting one
inserts it verbatim, asterisks and all: `state:*active*`. It also takes no
**sort** position for the same reason — a `values` list of metas alone orders
nothing, and the badge palette under it still does.

**A meta completes star-free.** The asterisks are reading notation — the mark
that says this value has semantics — so **display and commit wear them and
completion matches through them**: `state:act` and `state:active` both offer
`*active*`, `state:*act` still does, `emp` reaches `*empty*`, and the bare word
`active` surfaces `state:*active*` through the column that declares it. Typed in
full, star-free or not, it leads the list, so RET commits `state:*active*` from
four letters. What a query **means** reads the stars, so `state:active` filters
for the literal `active`.

**And a decorated cell reads through its brackets.** Org draws a priority `[#A]`
and means `A`, so the same rule runs from the cell's side: `priority:a` and
`priority:[#a` both offer `[#A]`, the bare word `a` surfaces it through its
column, and what commits wears the decoration. Matching folds it too, and on
both halves of the wire — `priority:A` and `priority:[#A]` are one query
([`SCHEMA.md`](SCHEMA.md), Filter query) — where the producer metas above are
the renderer's to match literally.

The local evaluator matches a **producer** meta literally, which is to say it
matches nothing. That is deliberate rather than a gap: a view that declares such
metas is one whose filtering belongs to the producer, and it is expected to pass
`onFilter` so the query is answered where the meaning lives. glance does exactly
this, so its users never reach the literal path. **Arrows** move, **Tab**/**Enter**
accept, **Escape** dismisses, a click accepts without taking focus.

**Row one is always the choice.** A list with anything to offer opens with its
first row highlighted, so RET takes it and the common case costs no arrow. The
ordering above is therefore the whole of what RET means, and the consequence is
worth stating plainly: **with suggestions showing, RET commits the top
suggestion rather than the letters you typed.** Which is exactly why the letters
you typed are an offer of their own, at the head of the list unless something
spells them: what RET does is on show rather than implied, and a bare word
therefore always has a list. A **quoted** token still asks for no suggestions at
all (`"boo"` is free text as written), and **Escape** still puts the list away
so the next RET commits what is in the box.

**Tab** completes and stays, at either stage. **Enter** is stage-aware:
completing a *key* leaves the caret past the colon with that key's values
already listed — `tag` → RET → `tag:` and the tags with their counts — because
`tag:` is half a predicate; only a *finished* token sends Enter on to commit and
hand the table over. A second RET there takes the value at row one, so the bare
presence predicate `tag:` is RET, Escape, RET. Typed as the prefix `ta` the key
is one arrow down, the literal having row one. **C-n**/**C-p** move the list too,
while it is open and the box has focus — the
Emacs minibuffer and vim's insert-mode completion agree on those. Platform
reality: Chrome-family browsers take C-n for a new window before the page sees
it, so the arrows are the fallback there; Firefox and system-webview shells
deliver both.

Pass **`palette: true`** to make the filter something you *summon*. The page
keeps the chip row and nothing else — an unfiltered table carries no filter
chrome at all — and `openFilter()` raises a centred overlay holding the input
and its completions, the way a minibuffer or a Telescope prompt appears. Every
ladder then ends one step further out:

| key | in the palette |
|-----|----------------|
| **RET** | commit the token, dissolve, hand the table over |
| **RET** on an empty box | dissolve and hand over |
| **Escape** | close the list → drop the typed text → dissolve |
| **Backspace** on an empty box | nothing — the chips are on the page behind, not in the box being edited |
| click on the backdrop | as Escape |

The palette also **filters on commit alone**: typing moves the suggestion list
and nothing else, and RET or a chip strip is what reaches the rows. Narrowing a
table as each character lands animates something the typist is looking away
from, and every half-written token is a query of its own. The resident bar and
omnibox modes keep their 120 ms debounce.

The applied chips render in the theme's **frost**, washed over the page rather
than laid on it, with the ordinary `--tv-fg` for ink. Frost is the applied
filter's colour and nothing else's, so no two of the three roles read as one
thing. Swapping it is a one-line edit: `FROST` in `injectStyle`, which every
palette mixes from. The reasoning behind the colour and the two strengths is in
the CHANGELOG, under "chips are a frost wash".

A chip that states the **order** wears `--tv-col` instead — the column band's
own amber, `sort:` being the one token that speaks about a column. The ground
carries the whole difference: one silhouette, one ink, one `×`, one hover, and
the two washes sit the same distance from the page, so ordering and narrowing
are told apart by hue rather than by weight. Only a token the renderer accepts
as a sort key wears it; a negation, an unknown column or a direction that is
neither word is dropped from the chain, orders nothing and keeps the ordinary
chip. A crumb takes neither identity and stays muted. The amber chip asks for
contextual ligatures, so a coding face draws its `->` as the arrow it is.

`initialQuery`, `getQuery()` and `stripLastToken()` behave exactly
as they do elsewhere — the chips are the same state, only styled. The overlay
sits at `z-index` 90/91, leaving 100 and up for a consumer's own modal.

Pass **`omnibox: true`** to make the filter the bar's centrepiece: the title
goes, the input takes the full width, and the applied chips move to a row of
their own beneath it that collapses when empty. Without it the bar
is exactly as it was.

Pass **`inline: true`** for a mount that lives inside chrome someone else has
drawn — a picker hung at a caret, a box in a panel. It implies `omnibox`, drops
the mount's own border, title, hint line and sort marks, and caps the window at
twelve rows. The filter box is summoned rather than resident: the chips are all
that shows until `openFilter()` (or `/`, wherever the consumer binds it) puts
the input on the chips' own line. Escape out of it is **one step** — the
half-typed filter is dropped and the cursor lands on a row in a single press,
because a compact table is a thing to pick from. **Backspace** over an
already-empty box lands in the same place for the same reason: the box was the
last thing put there, so it is the first thing taken back. Both leave the mount
with no focus of its own, so a consumer that wants the *next* press must listen
on the document rather than on the mount's root, and can ask `filtering()`
whether the box has the keys before claiming anything.

Pass **`initialQuery`** to restore a query rather than run one — it arrives as
committed chips with the box empty and nothing delivered, which is what a
consumer remounting after a reconnect or a `?q=` load wants. There is no other
entry point for committed state, and stuffing `input.value` instead is what
makes chips appear to vanish into the box.

A committed token leaves the box and becomes a **chip** beside it. The query is
always the chips and the box together — chips are where the finished tokens are
kept, so the box holds only what is still being typed and a long query stops
scrolling out of sight. Enter commits the box whole; a settling debounce commits
only the tokens something follows, so a word is never chipped out from under the
caret. **Backspace** walks the query down: characters first, then chips one at a time,
and with nothing left it hands the table over — one press per part, so holding
it deletes what was typed and then stops at the first chip. Under `inline` the chip
rungs are not the renderer's at all: an emptied box is the SUMMONED editor
itself, so the first Backspace takes the box and hands over however many chips
are applied — the chips behind it are the consumer's own key to walk, through
`stripLastToken()`. A click takes any chip off, and
`onFilter` is handed the whole query joined — a producer never learns that chips
exist.

**Enter** means one of two things, depending on whether the suggestion list is
open:

| state | Enter does |
|-------|------------|
| suggestion list open | accept the highlighted suggestion — row one unless an arrow moved it — staying in the box for a key, going on to commit for a finished token |
| list closed          | commit whatever is typed to a chip, deliver the query once, then select the first visible row and blur |

Enter always ends with the table focused — in both local and producer-filtered
modes, and without awaiting a producer's reply. A longer query is built by
coming back to the box, which reopens empty with its chips standing:

```
/  tanik  RET   /  passport  RET
   └ chip ┘ └ table    └ chip ┘ └ table
```

— two ANDed tokens and two queries sent. **Escape** walks out one step at a
time: it closes the list if one is open, else drops what is half-typed, else
blurs. Under `inline` those three collapse into one press, which drops the
half-typed filter and hands the table over together. Both keys stop at the
input rather than bubbling into a consumer's own
keymap, and nothing else moves focus or the selection: a debounce firing on its
own leaves both where the typist left them.

Pass **`chipLabel`** a `(token) => string|null` formatter to alias what an
applied chip *shows*: `state:*active*` can read `active`, a long id can read a
name. The **query is untouched** — `getQuery()`, what `onFilter` is handed, and
the token a click or `stripLastToken()` removes are all the text as written — so
a chip may lie prettily while the grammar does not. Anything but a non-empty
string leaves the token raw, which is how one formatter aliases the two tokens
it knows and passes the rest through.

### The narrowed door

The grammar has two halves: `sort:`, `columns:` and `view:` shape the table,
every other key narrows the rows in it. **`openFilter({ narrow: true })`** opens
the box on the narrowing half alone — a search box, where the plain
`openFilter()` is the whole expression.

The key stage offers the narrowing keys only: the view's columns, `planned`,
`substring`, and no `sort:`, `columns:`, `view:` or saved-view name among them.
Signs, metas and every value stage are exactly what they are anywhere, and the
placeholder names the half being edited. A **shaping token committed through
such a box is refused**: it never becomes a chip, never reaches the delivered
query, and is left standing in the box where the reader can see what was not
taken. `onRefused(token)` — a mount option — is handed the source text as
written, once per spelling per summons, so the consumer names the other door in
its own words. The box commits again on every settling debounce, and a refusal
repeated per keystroke is a refusal nobody reads.

The chips already applied **ride along untouched** — the strip is not the box —
so narrowing never loses the order or the column set. The narrowing is the
*session's*: it clears when the box closes, taking its refusals out of the box
with it, and a plain `openFilter()` is the whole grammar again however the last
one opened. Two doors, one query: the narrowed one is a restricted view over the
`?q=` the other writes, never a second query.

### Drill-down crumbs

A **crumb trail** is the path a reader took to get here: `pushCrumb({label,
query})` on the way in, `popCrumb()` on the way out. The trail renders as muted
chips to the **left** of the live filter chips, in the same row — each showing
its `label`, never its query — so one strip reads left to right as the reader
walked it: where they came from, then what is in force now.

```js
// drilling in
tv.pushCrumb({ label: currentName, query: tv.getQuery() });
apply(narrower);                    // your fetch, your query

// walking out — DEL on an empty query, say
const back = tv.popCrumb();
if (back) apply(back.query);        // still yours
```

**`popCrumb` pops and returns; it never applies.** Whoever owns the fetching
owns what a query means — a producer-filtered view answers it over the wire, a
local one narrows in place, and a consumer may want to restore a sort or a
selection alongside it. So the renderer hands the crumb back and stays out of
it. `setCrumbs`/`getCrumbs` are the same trail whole, for a consumer restoring
one after a remount; `getCrumbs()` answers with copies, so editing what you read
does not move the strip.

Past **four** crumbs the oldest fold into a single `… +N` counter, leftmost.
The counter takes a chip of its own, so the fifth crumb is what folds the first
two away and the strip is never wider than four chips however deep the drilling
went. Popping back over the boundary brings the labels out again.

Crumbs are handle state, the way marks are: they survive `setRows`, an upsert, a
delete, a re-sort and every filter change, and `setView` drops them with the
world they described. They are **inert** — a crumb carries no remove mark and no
`data-i`, so the click that takes a live chip off passes it by, which suits a
keyboard-first consumer binding a key to `popCrumb` (v1 has no click).

A crumb wears the live chip's silhouette exactly — same border weight, radius
and colour, and the same padding once the side a remove mark shortens is
equalized — so a crumb inside the palette carries the frost-tinted edge a chip
there carries. Ink and ground are the whole difference: `--tv-muted` instead of
the foreground, the page's own ground instead of the chip panel's. The ink is
the floor that binds, as with every wash here: `--tv-muted` clears 4.5:1 on
`--tv-bg` in both themes (5.1 light, 11.5 dark) while reading quieter than a
live chip's ink does on its own ground. Hovering one moves nothing — the hover
rules decline to select a crumb.

## Development

```sh
make check        # the full gate: typecheck both sides, then the ERT suite
make test         # the ERT suite, core and native, in batch mode
make compile      # byte-compile (surfaces warnings)
make elisp-check  # byte-compile with warnings as errors (the elisp type check)
make typecheck    # elisp-check + web-check
make web-check    # typecheck web/table-view.js (JSDoc + @ts-check, needs Node)
make web-perf     # benchmark and smoke-test the browser renderer at 13k rows
make clean        # remove *.elc
make patch|minor|major   # bump the version everywhere it appears
```

`make test` runs `table-view-native-test.el` alongside the core suite. The
native tests that need the `tvx` helper binary (`cargo build --release` in
`native/tvx`) **skip** when it is absent rather than failing, so a machine
without cargo still goes green — read ert's skip count to tell the two apart.

Both renderers also execute the shared conformance vectors in
[`fixtures/parity/`](fixtures/parity/) — one manifest, two harnesses, so a
change that moves one renderer's reading of [SCHEMA.md](SCHEMA.md) and not the
other's turns a suite red. The manifest names which capabilities each harness
runs: `sort` and `render` on both, `query` on the browser renderer alone, since
`/` here is a plain substring over the row with no grammar to hold to.

Or directly:

```sh
emacs -Q -batch -L . -l table-view-test.el -l table-view-native-test.el \
      -f ert-run-tests-batch-and-exit
```

## License

MIT © 2025-2026 Dmitry Akatov. See [LICENSE](LICENSE).
