# table-view

> Declarative, backend-agnostic table views for Emacs — render a JSON/alist
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
| [`paginate.el`](examples/paginate.el)           | server-side pagination over a fake backend (`page-fn`, push-down sort/filter, cross-page marks) |
| [`org-links.el`](examples/org-links.el)         | Org links in cells (`[[target][desc]]`), followed by `C-c C-o` or mouse |
| [`native.el`](examples/native.el)               | **1,000,000 rows** sorted/filtered in a Rust backend (`table-view-native-display`) |
| [`native-live.el`](examples/native-live.el)     | live updates through the backend (`table-view-native-patch` → `$/delta`), plus Rust `count`/`aggregate` |

Open one and `M-x eval-buffer`.

> The two `native*` demos use the optional Rust backend (`tvx`).  On first run
> table-view offers to build it (needs [cargo](https://rustup.rs)); accept and
> the buffer shows build progress, then loads once the build finishes.  Decline
> and it runs pure elisp with a warning.  See
> [`docs/proposals/native-backend.org`](docs/proposals/native-backend.org).

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
| `sortable` | whether `^` can sort by this column — **opt-in**: a column declares it or `^` passes over it, per [SCHEMA.md](SCHEMA.md). The spec's own `sort` opens as written either way |
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
  a total or random jumps. When the backend can't count, pass `:total nil` and
  the view infers "more" from a full page.

See [`examples/paginate.el`](examples/paginate.el) for a complete runnable demo
over a fake in-memory backend.

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
| `openFilter()`     | summon the filter — raises the palette, or focuses the resident box |
| `closeFilter()`    | dismiss it and give the keyboard back to the table            |
| `stripLastToken()` | drop the typed text, else the last chip, and reapply; false if nothing was left |
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

Without the option the chrome is not merely hidden — one predicate gates the
column, the wash and the count together, so a consumer who never asked for
marking cannot get half of it.

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

**Flags** ride the same `marks: true` opt-in, the leading box column being where
either state is read. A flag is a *pending* action — the two-press `d` a
consumer drives before confirming — where a mark is a *standing* selection, so
they are separate id-keyed sets. A row can carry both; `clearMarks()` leaves
flags alone and `clearFlags()` leaves marks alone, so a consumer wanting both
gone asks for both. They survive what marks survive (a filter, a page, a sort,
`setRows`, an upsert) and die where marks die (the row going away, or the view).
A flagged row takes a red wash and, on the box cell, a red left edge —
a second channel, because the background is one slot and the cursor wins it, so
without the edge a flagged row under the cursor would stop saying it is
flagged. Precedence on that one slot is cursor, then flag, then mark, then
zebra. When either count is nonzero it leads the hint line, the pending one
first: `2 flagged · 3 marked · 40 rows · sort …`.

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
what it always did. The column is clamped to the ones that exist, never wrapped,
and every mark is re-derived on every render, so they survive a scroll, an upsert
and a `setRows` that still carries the id. `getSelection()` reports `{id, col}`
— read it, add a step, hand it back to `select` — which is how a consumer binds
cell movement to keys.

The whole selection is grounds: no outline, border or shadow on any of the
three. The bands wash `--tv-col`, a pale amber that is the one hue nothing else
here uses and light enough that laying it over a marked or flagged row shifts
the hue without spending the contrast the tag ink needs. They sit on the cells,
where the table paints them above the rows, so the stripe, a mark, a flag and
the cursor all still read through the column they cross; the crossing takes one
step more of the same wash, on the same background slot, the cell's rule
following the column's. Each strength is the most the ink allows on the grounds
it lands on, which is why the two themes are far apart.

**Actions have no buttons.** They render on the hint line as `KEY label` pairs,
the way `table-view.el` prints its legend: the keys are the interface, and a
consumer binds them and dispatches the command (`onAction`, or the
`tableview-action` event). A double click still runs the default action.

**Three roles, three readings.** A *state* is a filled pill in its palette
colour; an *applied filter* is a frost chip; a *tag* is small muted lowercase
text with no box at all, several separating on a middot. The multi-valued column's cells render a chip per value — split by
the same splitter the tag vocabulary uses — and the suggestion list wears a tag
the same way wherever it names one. Presentation only: what is searched, sorted
and measured is still the text you sent.

### The filter box

Its placeholder teaches the grammar rather than naming the box —
`tag:book · state:active · -word · "some phrase"` — since what a filter box is
for is obvious and what it accepts is not.

It speaks [`SCHEMA.md`](SCHEMA.md)'s query micro-syntax: `key:value` field
predicates — only where `key` names a column, so org text like `:work:` or
`=code=` never becomes one by accident — plus `"quoted text"`, `-negation`, and
free text for everything else. Predicates sharing a key group by the field's
**arity**: a single-valued field **ORs** (a row has one state), a multi-valued
one **ANDs** (a row carries several tags). Distinct keys, free text and
negations **AND**. So `state:TODO state:NEXT tag:web tag:api review` reads
*either state, carrying both tags, mentioning review*. A column is multi-valued
when its cells hold delimited lists (`:a:b:`) — decided by their shape, so the
column may be called `tag`, `tags` or anything else.

```js
TableView.parseQuery('state:TODO -tags:done', ["state", "tags"])
// [{ negated: false, key: "state", value: "TODO", quoted: false, start: 0, end: 11, sep: 5 },
//  { negated: true,  key: "tags",  value: "done", quoted: false, start: 12, end: 22, sep: 17 }]
```

The tokenizer is exported so a consumer can highlight the box and a producer can
implement the same grammar at the other end. Filtering locally applies the
parsed query; with `onFilter` the raw text goes to the producer and the grammar
is its business.

A key may also be one the **rows imply** — SCHEMA's virtual keys. The derivation
a producer and a renderer both arrive at is org's: every distinct tag in the
`tags` column is a key, so `contact:tanik` means tagged `contact` and matching
`tanik`. Membership is whole-tag (`con:` is not `:contact:`), an empty value is
presence alone (`-contact:` is everything untagged), and a column of the same
name shadows the tag.

A **suggestion list** under the box completes it. A bare word offers, in order:

1. the **keys** it opens — the view's columns, then the tags the rows imply
   (`boo` → `book:`, with the count of rows holding it);
2. the columns whose declared domain holds it as a **value** (`TODO` →
   `state:TODO`) — exact facts about the data;
3. and, only when nothing exact was found, up to five **word completions**,
   dimmed: whole title words starting with what was typed, paired with the tags
   their rows carry (`tan` → `contact:tanik`). Every one of them is a query that
   finds something, by construction — it was counted from the rows it came from.

Exact beats fuzzy, and fuzzy never crowds. After `key:` comes that column's
value domain: its declared `values` in their own order, then any **badge value
they did not already name**, else the distinct cell values — each with the
number of rows behind it. The two are merged rather than one shadowing the
other, so a column that declares meta-values keeps its concrete keywords in the
list. A virtual key has no domain to offer, so what follows it is ordinary text.

**Producer meta-values.** A domain value written between asterisks —
`*active*`, `*inactive*` — is a *producer* meta: a name for a set of values
that only the producer can resolve. It renders dimmed and italic, apart from
the concrete values beside it, and **carries no count**, because counting it
here would print 0 (no cell holds the literal string) beside an entry that in
fact matches plenty. Accepting one inserts it verbatim, asterisks and all:
`state:*active*`.

The local evaluator matches such a token **literally**, which is to say it
matches nothing. That is deliberate rather than a gap: a view that declares
metas is one whose filtering belongs to the producer, and it is expected to
pass `onFilter` so the query is answered where the meaning lives. glance does
exactly this, so its users never reach the literal path. **Arrows** move, **Tab**/**Enter**
accept, **Escape** dismisses, a click accepts without taking focus. Only a
column name starts highlighted — a tag name is often the word you were actually
searching for — so Enter still commits the word as typed.

**Tab** completes and stays, at either stage. **Enter** is stage-aware:
completing a *key* leaves the caret past the colon with that key's values
already listed — `ta` → RET → `tag:` and the tags with their counts — because
`tag:` is half a predicate; only a *finished* token sends Enter on to commit and
hand the table over. Nothing at the value stage starts highlighted, so RET with
`tag:` typed and no value chosen commits the presence predicate you wrote rather
than whichever value sorted first. **C-n**/**C-p** move the list too,
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
the CHANGELOG, under "chips are a frost wash". `initialQuery`, `getQuery()` and `stripLastToken()` behave exactly
as they do elsewhere — the chips are the same state, only styled. The overlay
sits at `z-index` 90/91, leaving 100 and up for a consumer's own modal.

Pass **`omnibox: true`** to make the filter the bar's centrepiece: the title
goes, the input takes the full width, and the applied chips move to a row of
their own beneath it that collapses when empty. Without it the bar
is exactly as it was.

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
it deletes what was typed and then stops at the first chip. A click takes any chip off, and
`onFilter` is handed the whole query joined — a producer never learns that chips
exist.

**Enter** means one of two things, depending on whether the suggestion list is
open:

| state | Enter does |
|-------|------------|
| suggestion list open | accept the highlighted suggestion, and stay in the box |
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
blurs. Both keys stop at the input rather than bubbling into a consumer's own
keymap, and nothing else moves focus or the selection: a debounce firing on its
own leaves both where the typist left them.

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
