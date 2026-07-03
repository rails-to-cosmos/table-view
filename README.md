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

Open one and `M-x eval-buffer`.

## Keybindings

| Key                      | Action                                                                                                                                         |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| `n` / `p`                | next / previous line                                                                                                                           |
| `f` / `b`                | forward / backward — by **column** (cell) on any table line (header or data row), by **char** elsewhere                                        |
| `M-<left>` / `M-<right>` | move the column at point left / right (org-table style); point follows the column                                                              |
| `^`                      | sort by the column at point — a data cell **or its header** (repeat toggles asc/desc); off a column, cycles through every column and direction |
| `C-u ^`                  | add the column at point as a secondary (tie-breaker) sort key; a following run of `^` then toggles that key's direction                        |
| `g`                      | clear filter/narrow & refresh, preserving the current sort order |
| `m` / `U`                | toggle mark on the current row / unmark all (marked rows get a `*` gutter column) |
| `/`                      | narrow to the marked rows, or — when nothing is marked — filter by substring |
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
| `(table-view-display BUFFER SPEC HANDLERS &optional FILL-FN)` | render `SPEC` into `BUFFER`, install `HANDLERS` (alist of command-name → `(FN ID ROW)`), and run `FILL-FN` (a function of `BUFFER`) to populate; returns the buffer |
| `(table-view-set-rows BUFFER ROWS)`                           | replace all rows                                                                                                                                                    |
| `(table-view-upsert-row BUFFER ROW)`                          | add `ROW`, or replace the existing row with the same `id` in place                                                                                                  |
| `(table-view-delete-row BUFFER ID)`                           | remove the row with `ID` (point moves to a neighbour). Wire deletion via an action handler that does any pre-delete work and calls this only on success             |
| `(table-view-marked-rows &optional BUFFER)`                   | the marked rows, in row order |
| `(table-view-current-or-marked-rows &optional BUFFER)`        | the marked rows, or the row at point when none are marked — what a `bulk` handler receives |
| `(table-view-refresh BUFFER)`                                 | re-invoke the registered fill function                                                                                                                              |

Populate up front via the spec's `rows`, in bulk via `table-view-set-rows`, or
incrementally via `table-view-upsert-row` (ideal for streaming sources — rows
with a known `id` update in place without moving).

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
