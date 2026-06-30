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
 (table-view-parse "
   { \"title\": \"Books\",
     \"columns\": [ { \"key\": \"title\", \"header\": \"Title\" },
                    { \"key\": \"year\",  \"header\": \"Year\", \"type\": \"number\" } ],
     \"rows\": [ { \"id\": \"1\", \"cells\": { \"title\": \"SICP\", \"year\": 1996 } },
                 { \"id\": \"2\", \"cells\": { \"title\": \"PAIP\", \"year\": 1992 } } ] }")
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

(let* ((spec (table-view-parse "
  { \"title\": \"Books\",
    \"columns\": [
      { \"key\": \"title\", \"header\": \"Title\", \"sortable\": true },
      { \"key\": \"year\",  \"header\": \"Year\",  \"type\": \"number\",
        \"align\": \"right\", \"sortable\": true } ],
    \"actions\": [ { \"key\": \"RET\", \"label\": \"Open\", \"command\": \"open\" } ],
    \"sort\": { \"column\": \"year\", \"ascending\": false },
    \"rows\": [
      { \"id\": \"1\", \"cells\": { \"title\": \"SICP\", \"year\": 1996 } },
      { \"id\": \"2\", \"cells\": { \"title\": \"PAIP\", \"year\": 1992 } } ] }"))
       (handlers `(("open" . ,(lambda (id _row) (message "Opened %s" id))))))
  (table-view-display "*books*" spec handlers))
```

Runnable demos live in [`examples/`](examples/):

| File | Shows |
|------|-------|
| [`minimal.el`](examples/minimal.el) | inline rows from a JSON spec |
| [`fill-function.el`](examples/fill-function.el) | populate via a fill function (Emacs subprocesses) |
| [`upsert.el`](examples/upsert.el) | streaming row updates via a timer |

Open one and `M-x eval-buffer`.

## Keybindings

| Key | Action |
|-----|--------|
| `n` / `p` | next / previous line |
| `f` / `b` | forward / backward — by **column** (cell) when point is on the table, by **char** elsewhere |
| `^` | cycle sort column |
| `~` | toggle sort direction |
| `g` | clear filter & refresh, preserving the current sort order |
| `/` | filter rows by substring |
| `q` | quit window |
| *action keys* | dispatched to your handlers (e.g. `RET`) |

Tables open **unsorted** (in load order); sorting is opt-in via `^` / `~`, and
`g` never imposes a sort it wasn't already in.

## Spec format

The spec is an alist (typically produced by `table-view-parse` from JSON).

**Top level**

| Key | Meaning |
|-----|---------|
| `title` | buffer title line |
| `columns` | list of column definitions (see below) |
| `actions` | list of action keybindings (see below) |
| `sort` | default sort: `{ "column": KEY, "ascending": BOOL }` |
| `rows` | initial rows (optional; can be filled later) |

**Column**

| Key | Meaning |
|-----|---------|
| `key` | unique column id; matches keys in each row's `cells` |
| `header` | header label |
| `type` | `"number"` (numeric sort), `"badge"` (colored from a palette), or omitted (string) |
| `align` | `"right"` to right-justify; omitted means left |
| `sortable` | `true` to allow `^` to sort by this column |
| `badges` | for `type: "badge"`: list of `{ "value": V, "color": C }`; declared order is also the sort priority |

**Action**

| Key | Meaning |
|-----|---------|
| `key` | a `kbd` spec, e.g. `"RET"` or `"x"` |
| `label` | shown in the hint line |
| `command` | looked up in the handler alist; the handler is invoked as `(FN ID ROW)` |

**Row**

| Key | Meaning |
|-----|---------|
| `id` | unique identifier (used for upsert and for keeping point on a row across re-renders) |
| `cells` | maps each column `key` to its value |

## API

| Function | Purpose |
|----------|---------|
| `(table-view-parse JSON-STRING)` | parse JSON into the alist shape the core expects |
| `(table-view-display BUFFER SPEC HANDLERS &optional FILL-FN)` | render `SPEC` into `BUFFER`, install `HANDLERS` (alist of command-name → `(FN ID ROW)`), and run `FILL-FN` (a function of `BUFFER`) to populate; returns the buffer |
| `(table-view-set-rows BUFFER ROWS)` | replace all rows |
| `(table-view-upsert-row BUFFER ROW)` | add `ROW`, or replace the existing row with the same `id` in place |
| `(table-view-refresh BUFFER)` | re-invoke the registered fill function |

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
