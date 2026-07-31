# table-view — view contract

The language-agnostic contract shared by every **producer** and **renderer** of a
table-view. It is the single source of truth; the renderers implement it.

- **Renderers:** `table-view.el` (Emacs), `web/table-view.js` (browser).
- **Producers:** `repos` (Haskell), `ray-cluster` (Python), `glance` (Haskell), any code emitting the shapes below.

The contract is JSON values. How they reach a renderer — embedded literal, an
HTTP `GET`, a WebSocket frame — is out of scope here.

## View object

The whole view. All fields optional except `columns`.

| field     | type              | default        | meaning                                  |
|-----------|-------------------|----------------|------------------------------------------|
| `title`   | string            | `"Table"`      | heading                                  |
| `columns` | array<Column>     | —              | column order and definitions             |
| `actions` | array<Action>     | `[]`           | commands the view can dispatch           |
| `sort`    | Sort \| array<Sort> | unsorted     | initial sort                             |
| `rows`    | array<Row>        | `[]`           | initial rows (may arrive later, streamed)|

## Column object

| field      | type          | default  | meaning                                             |
|------------|---------------|----------|-----------------------------------------------------|
| `key`      | string        | —        | cell lookup key; unique within the view             |
| `header`   | string        | `key`    | column label                                        |
| `type`     | enum          | `"text"` | `"text"` \| `"number"` \| `"badge"`                 |
| `align`    | enum          | `"left"` | `"left"` \| `"right"`                               |
| `sortable` | bool          | `false`  | column may be sorted on (opt-in: default is no)     |
| `badges`   | array<Badge>  | —        | palette for a `"badge"` column                      |
| `values`   | array<string> | —        | explicit categorical order (sort priority)          |
| `compare`  | string        | —        | comparator name: `"number"`, `"string"`, `"natural"`|
| `multi`    | bool          | —        | cells hold a delimited value list (experimental)    |

**Sort order of a column** resolves as: `compare` name → `values` order (else the
`badges` order for a badge column), unlisted values last → `type: "number"` is
numeric → otherwise lexicographic.

- `"number"` right-aligns and sorts numerically by convention.
- `"badge"` colours each cell from `badges`; palette order doubles as sort priority.
- `sortable` is opt-in: a column says so or it is not sorted on. **Conformance
  note**: the browser renderer reads it that way; `table-view.el` currently
  treats columns as sortable unless they opt *out*, so a view relying on the
  default sorts differently in the two. The contract stands as written and the
  Emacs renderer is the one to move.
- `multi` declares the column multi-valued for the filter's AND/OR rule below.
  A renderer that guesses from cell shape must let the declaration win.
  *Experimental*: the field is new and the guessing fallback is what most
  producers still rely on.

### Badge object

| field   | type   | meaning                                   |
|---------|--------|-------------------------------------------|
| `value` | string | cell value this badge matches             |
| `color` | string | CSS/Emacs colour (e.g. `"#50fa7b"`)       |

A cell whose value has no matching badge renders uncoloured.

## Action object

A named command the view can dispatch on the row at point / clicked.

| field     | type   | meaning                                          |
|-----------|--------|--------------------------------------------------|
| `key`     | string | key binding (Emacs key description, e.g. `"RET"`)|
| `command` | string | command name handed to the consumer              |
| `label`   | string | shown in the hint line                           |

A renderer dispatches `{command, id, row}` to its consumer; the consumer decides
what the command does. The renderer never interprets `command` itself. `"RET"` is
the conventional default row action.

## Sort object

`{ "column": "state", "ascending": true }` — sort by one column.
`sort` may also be an **array** of these for multi-key sort (first is primary).

`ascending` is a boolean (`true` asc, `false` desc). A `direction` string extends
this with null placement: `"asc-nulls-first"`, `"desc-nulls-first"` (bare
asc/desc place nulls last).

## Row object

| field   | type              | meaning                                       |
|---------|-------------------|-----------------------------------------------|
| `id`    | string            | stable identity; keys updates and marks       |
| `cells` | object            | column-key → cell value                       |
| `depth` | int               | outline depth, 0-based (experimental)         |

`cells` maps each column `key` to a value. A missing key renders empty.

- `depth` is a **renderer hint for tree-shaped data**: 0 for a top-level row,
  one more per level below it. It is about the row's place among the others
  rather than about anything shown in it, which is why it sits beside `id` and
  is not a cell, a column, or a filter key. A renderer may ignore it entirely,
  and a row without one reads as depth 0, so a view that never sends the field
  renders as it always did. A producer emitting it should also be able to serve
  the rows in the order they nest — with `sort` omitted, since a renderer that
  re-sorts scatters the nesting. *Experimental*: the field is new, the two
  renderers differ on what they do with it (`web/table-view.js` draws it under
  its own `tree: true` mount option; `table-view.el` ignores it), and nothing
  else in the contract turns on it.

### Cell value

`string`, `number`, or `null`. `null` and missing render as `""`. Non-strings
render via their natural string form. Control characters collapse to spaces — a
cell is always one line.

**Org links in cells.** A cell string may contain Org bracket links:
`[[TARGET][DESC]]` renders as a followable `DESC`; `[[TARGET]]` renders as
`TARGET`. Width, filter, and sort see `DESC`. Following a link is a
renderer/consumer concern (open a URL, dispatch, …).

## Streaming updates (optional)

A renderer that stays live accepts, after the initial view:

| operation       | payload                         | effect                                        |
|-----------------|---------------------------------|-----------------------------------------------|
| `set-rows`      | `array<Row>`                    | replace all rows                              |
| `upsert-row`    | `Row`                           | replace the row with matching `id`, else append |
| `delete-row`    | `id`                            | drop the row with that `id`                   |
| `apply-delta`   | `array<Op>`                     | apply windowed ops in order (below)           |

**Delta ops** describe how the visible window changed:

- `{ "op": "insert", "index": I, "row": Row }` — splice `row` in at window index `I`.
- `{ "op": "delete", "index": I }` — drop the row at window index `I`.
- `{ "op": "reset", "rows": array<Row> }` — replace the whole window.

`I` counts in the **window** — the rows as displayed, after any renderer-local
sort, filter or page. With none of those in force the window is the producer's
own row order and the two readings coincide. Ops apply in order, each against
the window the ones before it left.

Updates key off `id`: an unchanged row keeps its identity so incremental
rendering leaves untouched lines alone.

## Paging (optional)

For stores larger than one screenful, a renderer requests pages and a producer
delivers them.

- **Request** (renderer → producer): `{ filter, sort, page-size, offset | cursor }`.
- **Response** (producer → renderer): a page of `rows` plus metadata — `total`
  (matching count under the filter, or absent), `has-next`, and for keyset paging
  `next-cursor` / `prev-cursor`. Offset paging uses `offset`; keyset paging uses
  opaque cursors.

This is the producer protocol, where `page-size` travels over the wire. It is
separate from a renderer paging rows it already holds — the browser renderer
spells that `pageSize`, a mount option, and it involves no producer at all. A
view may use either, or both.

## Filter query (optional)

A shared micro-syntax for the filter box, so producers filtering server-side
(see Paging) and renderers filtering locally agree. Tokens separate on
whitespace (`&` accepted as an alias); each token is:

- `key:value` — a field predicate, **only when `key` is a column `key`** of
  the view (`=` accepted as an alias for `:`) **or a producer-defined
  virtual key**. Otherwise the token is free text — org cell text like
  `:work:` or `=code=` never turns into a predicate by accident. Virtual
  keys must be derivable identically by producer and renderer from the view
  data (e.g. glance: every distinct org tag in the `tags` column is a key;
  `contact:tanik` = tagged `contact` AND matching `tanik`). Columns shadow
  virtual keys on collision.
- `"quoted text"` — free text containing spaces.
- `-token` — negation of either form.
- anything else — free text, case-insensitive substring over the row's cells.

Predicates sharing one key OR together **when the field is single-valued**
(`state:TODO state:DONE` = either state — AND would always be empty), and
AND together **when the field is multi-valued** (`tag:a tag:b` = carries
both, GitHub-label style; a column is multi-valued when its cells hold
delimited value lists, e.g. org tags — producers and renderers must agree
per column, glance's `tag` column being the canonical case; `multi: true`
on the column is how a producer says so, and a renderer guessing from cell
shape must defer to it). Distinct keys and free-text
tokens AND. Negations AND regardless. Field-predicate semantics, by column type: `badge` —
whole-value match, case-insensitive; a producer may add meta-values (e.g.
glance's `state:active` / `state:inactive` matching keyword groups);
`text`/`number` — case-insensitive substring; date-shaped text cells —
prefix match (`scheduled:2026-08`). Three uniform rules across types:
`key:none` matches the empty cell (any type; a literal cell value "none" is
consequently unreachable by predicate); `key:` with nothing typed narrows
nothing; a predicate value may be quoted (`tag:"two words"`) — only a token
that *opens* with a quote is free text.

**Autocomplete (renderer-local).** The renderer may suggest per stage: a
bare word suggests matching column keys (completing to `key:`); after
`key:`, that column's value domain — `values`, else the badge palette, else
distinct cell values; producer meta-values arrive as ordinary `values`
entries. Keyboard-first: arrows/Tab select, Enter accepts, Esc dismisses
before it clears anything.

## Renderer handle

Whatever a renderer exposes to its embedding page — the browser renderer's
`mount` return value, for instance — is that renderer's own versioned surface,
not part of this contract. The browser renderer documents its handle in
`README.md`.

## Not part of the contract

These are renderer-local behaviours, not producer output: row marking, narrowing,
interactive column reorder/add/remove, help toggles, **computed columns**
(cells derived by a renderer-side function), and **how `depth` is drawn** —
connector guides, plain indentation, a fold arrow, or nothing at all. Producers
emit data; renderers decide interaction.

## Example — a glance headline view

```json
{
  "title": "Inbox — glance",
  "columns": [
    { "key": "state", "header": "State", "type": "badge", "sortable": true,
      "badges": [ { "value": "TODO", "color": "#e0af68" },
                  { "value": "NEXT", "color": "#7aa2f7" },
                  { "value": "DONE", "color": "#9ece6a" } ] },
    { "key": "priority", "header": "Pri", "type": "text", "sortable": true,
      "values": ["A", "B", "C"] },
    { "key": "title", "header": "Headline", "type": "text" },
    { "key": "tag", "header": "Tags", "type": "text", "multi": true },
    { "key": "scheduled", "header": "Scheduled", "type": "text", "sortable": true }
  ],
  "actions": [
    { "key": "RET", "command": "open",   "label": "Open in Emacs" },
    { "key": "t",   "command": "cycle",  "label": "Cycle TODO" }
  ],
  "sort": { "column": "scheduled", "ascending": true },
  "rows": [
    { "id": "a1b2", "depth": 0, "cells": {
        "state": "NEXT", "priority": "A",
        "title": "[[org-glance:a1b2][Ship table-view.js]]",
        "tag": ":web:glance:", "scheduled": "2026-08-01" } },
    { "id": "c3d4", "depth": 1, "cells": {
        "state": "TODO", "priority": "B",
        "title": "Write SCHEMA.md", "tag": ":web:", "scheduled": "2026-08-03" } }
  ]
}
```

`c3d4` is a child of `a1b2` in the file it was read from, and this view says so
while sorting the nesting apart — which is the pairing to keep in mind: a
producer that means the depths to be read serves them with `sort` omitted, and
glance spells that `/headlines?order=document`.
