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
   (columns . (((key . "title") (header . "Title"))
               ((key . "year")  (header . "Year") (type . "number"))))
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
              (columns . (((key . "title") (header . "Title"))
                          ((key . "year")  (header . "Year") (type . "number")
                           (align . "right"))))
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

Open one and `M-x eval-buffer`.

## Keybindings

| Key                      | Action                                                                                                                                         |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| `n` / `p`                | next / previous data row (stops on the last / first row, never leaving the table body)                                                        |
| `f` / `b`                | forward / backward — by **column** (cell) on any table line (header or data row), by **char** elsewhere                                        |
| `M-<left>` / `M-<right>` | move the column at point left / right (org-table style); point follows the column                                                              |
| `^`                      | sort by the column at point — a data cell **or its header** (repeat toggles asc/desc); off a column, cycles through every column and direction |
| `C-u ^`                  | add the column at point as a secondary (tie-breaker) sort key; a following run of `^` then toggles that key's direction                        |
| `g`                      | clear filter/narrow & refresh, preserving the current sort order |
| `m` / `u` / `U`          | toggle mark on the current row / unmark the current row / unmark all (marked rows get a `*` gutter column) |
| `/`                      | narrow to the marked rows, or — when nothing is marked — filter by substring |
| `>` / `<` (or `.` / `,`) | next / previous page (server-paged buffers only)                                                                                               |
| `M->` / `M-<`            | last / first page; `M-g` go to page N (offset paging)                                                                                          |
| `q`                      | quit window                                                                                                                                    |
| *action keys*            | dispatched to your handlers (e.g. `RET`)                                                                                                       |

Unless the spec declares a `sort`, tables open **unsorted** (in load order);
sorting is otherwise opt-in via `^` (with point on a data cell or its column
header), and `g` never imposes a sort it wasn't already in.  `C-u ^` adds the
column at point as a lower-priority tie-breaker, so you can sort within groups
— e.g. by name, then by year.  A spec `sort` may itself be a list for a
multi-column default.

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
| `sort`    | default sort, applied on open when the spec supplies rows: a single `{ "column": KEY, "ascending": BOOL }`, or a **list** of them `[{…}, {…}]` for a multi-column default (order = priority) |
| `rows`    | initial rows (optional; can be filled later)                                                                                                                                                 |
| `pagination` | server-side pagination config (with a `page-fn`, see below): `page-size` (rows per page, default 50) and `strategy` (`"offset"`, the default, or `"keyset"`)                             |

**Column**

| Key        | Meaning                                                                                                                                                                                             |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `key`      | unique column id; matches keys in each row's `cells`                                                                                                                                                |
| `header`   | header label                                                                                                                                                                                        |
| `type`     | `"number"` (numeric sort), `"badge"` (colored from a palette), or omitted (string)                                                                                                                  |
| `align`    | `"right"` to right-justify; omitted means left                                                                                                                                                      |
| `sortable` | whether `^` can sort by this column — **sortable by default**; set to `false` to opt out |
| `values`   | ordered list of the column's expected values, e.g. `["low","medium","high"]`; that order becomes the sort order (categorical). Colours stay in `badges` — `values` is ordering only                 |
| `compare`  | sort method override: `"number"`, `"string"`, or `"natural"` (number-aware, so `2 < 10`); a name registered in `table-view-comparators`; or (in an elisp spec) a `(a b) -> bool` predicate function |
| `badges`   | for `type: "badge"`: list of `{ "value": V, "color": C }`; declared order is also the sort priority                                                                                                 |

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
  ;; req: (:buffer BUF :limit N :sort ((KEY . ASC)…) :filter STR-or-nil
  ;;       :offset M          ; offset strategy
  ;;       :cursor C :direction 'forward|'backward)  ; keyset strategy
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

## Development

```sh
make test       # run the ERT suite in batch mode
make compile    # byte-compile (surfaces warnings)
make clean      # remove *.elc
```

Or directly:

```sh
emacs -Q -batch -L . -l table-view-test.el -f ert-run-tests-batch-and-exit
```

## License

MIT © 2025-2026 Dmitry Akatov. See [LICENSE](LICENSE).
