# table-view — view contract

The language-agnostic contract shared by every **producer** and **renderer** of a
table-view. It is the single source of truth; the renderers implement it.

- **Renderers:** `table-view.el` (Emacs), `web/table-view.js` (browser).
- **Producers:** `repos` (Haskell), `ray-cluster` (Python), `glance` (Haskell), any code emitting the shapes below.

The contract is JSON values. How they reach a renderer — embedded literal, an
HTTP `GET`, a WebSocket frame — is out of scope here.

**Unknown fields are ignored.** Every object below is open: a producer may send
fields this document does not name, and a renderer must render as if they were
absent. That is what makes the contract additive — a field can land in a
producer before the renderers read it, and a renderer that never learns it stays
correct. It is also how a field one renderer implements alone (`Sort`'s
`direction` and `nulls` below) travels in the same object.

Conformance notes are marked in place, and the [parity
vectors](fixtures/parity/) execute what both renderers implement.

## View object

The whole view. All fields optional except `columns`.

| field     | type              | default        | meaning                                  |
|-----------|-------------------|----------------|------------------------------------------|
| `title`   | string            | `"Table"`      | heading                                  |
| `columns` | array<Column>     | —              | column order and definitions             |
| `actions` | array<Action>     | `[]`           | commands the view can dispatch           |
| `sort`    | Sort \| array<Sort> | unsorted     | initial sort, one key or a chain         |
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
| `values`   | array<string> | —        | explicit categorical order (sort priority), and any filter metas |
| `compare`  | string        | —        | comparator name: `"number"`, `"string"`, `"natural"`|
| `multi`    | bool          | —        | cells hold a delimited value list (experimental)    |

**Sort order of a column** resolves as: `compare` name → `values` order (else the
`badges` order for a badge column), unlisted values last → `type: "number"` is
numeric → otherwise lexicographic. A starred meta in `values` is filter
vocabulary rather than a cell value (see the filter query below), so it takes no
sort position, and a `values` list holding metas alone orders nothing.

- `"number"` right-aligns and sorts numerically by convention.
- `"badge"` colours each cell from `badges`; palette order doubles as sort priority.
- `sortable` is opt-in: a column says so or it is not sorted on. Both renderers
  read it that way. It gates what the *user* may sort by — a view's declared
  `sort` opens as written whether or not its column opts in.
- `multi` declares the column's cells delimited value lists, which the filter's
  whole-entry meta reads (below).
  A renderer that guesses from cell shape must let the declaration win.
  *Experimental*: the field is new and the guessing fallback is what most
  producers still rely on.

### Badge object

| field   | type   | meaning                                   |
|---------|--------|-------------------------------------------|
| `value` | string | cell value this badge matches             |
| `color` | string | CSS/Emacs colour (e.g. `"#50fa7b"`)       |
| `group` | string | optional label grouping palette entries   |

A cell whose value has no matching badge renders uncoloured.

`group` names a class of values the producer keeps together — glance emits
`"active"` / `"inactive"` over the org keyword groups. It carries no meaning to
the contract: colour, sort order and matching all read `value`. A renderer may
use it to group or separate a palette it lists (a filter's value suggestions, a
legend), and one that ignores it is conformant — an unknown field, by the rule
above, and neither renderer reads it today.

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

`sort` may also be an **array** of these: a sort **chain**, highest priority
first. Every key is run, in order, and the first one that separates two rows
decides; rows equal on all of them keep the order they arrived in (the sort is
stable, on both renderers). One key per column — a chain naming a column twice
is a producer error, and a key naming no column of the view is dropped.

```json
"sort": [ { "column": "title",     "ascending": true },
          { "column": "state",     "ascending": true },
          { "column": "deadline",  "ascending": true } ]
```

`ascending` is a boolean (`true` asc, `false` desc) and is **per key**, so a
chain may ascend on one column and descend on the next. A `direction` string
extends this with null placement: `"asc-nulls-first"`, `"desc-nulls-first"`
(bare asc/desc place nulls last).

**Empty cells** are settled per key and *outside* the direction: a key's blanks
gather at one end (last by default) and reversing that key does not drag them
along. A row with a blank in the first key is at that key's end whatever the
later keys say — nulls are a fact about a cell, not about a row.

**Conformance note**: `direction` is the browser renderer's. `table-view.el`
spells null placement with a `nulls` field of its own — `"first"` or `"last"`
(the default) — and reads `ascending` for the direction. Neither renderer reads
the other's spelling, so a producer that wants nulls first everywhere sends
both in the one object and each takes the half it knows; the parity vectors do
exactly that. The browser renderer additionally accepts a boolean `nullsFirst`
where `direction` is absent, which is the shape its own `getSort` answers in;
producers should send `direction`.

**Composing a chain** is the renderer's own business and no part of this
contract — `table-view.el` appends a tie-breaker with `C-u ^`, the browser
renderer promotes the column at point to the head of the chain. A producer
declares what a view *opens* as; what a reader builds on top of it is theirs.

A chain a reader builds may travel back as the filter query's `sort:` tokens
(below), which is how a renderer tells a producer what order to answer in. The
declared `sort` is then what a query naming no sort key leaves standing: it
opens the view and stays invisible until a reader diverges from it.

## Row object

| field    | type              | meaning                                      |
|----------|-------------------|----------------------------------------------|
| `id`     | string            | stable identity; keys updates and marks      |
| `cells`  | object            | column-key → cell value                      |
| `linked` | `true`            | the row leads somewhere; a renderer may mark it |

`cells` maps each column `key` to a value. A missing key renders empty.

`linked` is **sparse**: send `true` or send nothing — never `false`. It says the
row's subject holds a link a consumer can follow, which is a producer's
knowledge rather than anything the cells spell. A renderer may mark the row and
one that ignores it is conformant, by the unknown-fields rule. The browser
renderer draws the `title` column's cell as a link — link colour and underline,
the whole cell, the one treatment it gives an Org link inside a cell — and marks
nothing at all in a view with no column of that key.

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
  the view (`=` accepted as an alias for `:`) **or `planned`** (below). `sort`
  is reserved too, and is no predicate at all: it states the ORDER (below).
  Otherwise the token is free text — org cell text like `:work:` or `=code=`
  never turns into a predicate by accident, and neither does an org TAG:
  `tag:course` is the one spelling of a tag facet, and the facet-then-search
  it used to be spelled as is the two tokens `tag:course text`. A key derived
  from the ROWS is not available to either side: producer and renderer hold
  different rows, so the same token would be a predicate for one and free text
  for the other. A producer may still add a key of its OWN — one it names
  rather than derives — provided a renderer reading it as free text narrows to
  a subset of what the producer answers (glance's `ref:ROWID`, over a link
  graph only the store holds, is one).
- `"quoted text"` — free text containing spaces.
- `-token` — negation of either form.
- anything else — free text, case-insensitive substring over the row's cells.

**Combination is one rule: tokens AND, alternatives OR.** Every token narrows,
whether or not another token names its key. `state:TODO state:DONE` is a row in
both states, which for a cell holding one value is no row; `tag:a tag:b` is a row
carrying both, GitHub-label style; and a negation narrows the same way, so
`-a -b` is neither.

A row matching **either** value is the one token `state:TODO|DONE`: a
predicate's **value** splits on `|` and each alternative is read as that key's
own value, the results OR'd. Uniform over every key and every kind of value —
`tag:work|home` carries either, `scheduled:2026-08|2026-09` is either month by
prefix, `planned:*empty*|2026` is unplanned or planned that year, and a starred
meta alternates like any other value (`state:*active*|DONE`). A negation covers
the whole token: `-tag:a|b` carries neither. Empty alternatives are **dropped**,
so `a|` is `a` and `a||b` is `a|b`; a value left with no alternative narrows
nothing, which is the `key:` rule, and that is the whole answer for `key:`,
`key:|` and `key:||` alike.

The bar is a **predicate's**. A free-text token is the text it spells, bar and
all, and a token that opens with a quote is free text whatever it spells; a
predicate's value has had its quotes taken out by the tokenizer, so a bar inside
one is always the operator and a literal bar is free text's alone.

Field-predicate semantics, by column type: `badge` — whole-value match,
case-insensitive; `text`/`number` — case-insensitive substring; date-shaped text
cells — prefix match (`scheduled:2026-08`).

A column is **multi-valued** when its cells hold delimited value lists (org
tags); `multi: true` is how a producer says so and a renderer guessing from cell
shape must defer to it. Its cells still hold several values at once — which is
what a repeated key can meet and a one-value cell cannot — and it is the column
the whole-entry meta below reads.

**`planned`** is the one reserved key that is not a column, over a view's **date
columns taken together**: a row is planned when any of them holds anything. So
`planned:*empty*` is a row nobody has put a day on, `-planned:*empty*` is
everything with a date, and a value is the same prefix a date column takes,
asked of every date column at once — `planned:2026-08` is a schedule *or* a
deadline falling in that month. It obeys the one combination rule like every
key: `planned:A|B` is either, and `planned:A planned:B` is a row whose date
cells meet both.
Reserved because both sides decide it off the cells alone — no producer set, no
vocabulary and no clock — which is what a key with no column behind it has to be
to work on both halves of the wire; a row therefore never reads as planned on
one side and not on the other. WHICH columns are dates is the same asymmetry the prefix rule
already carries: a producer knows its own, a renderer samples cell shape, so a
page holding fewer than two dated rows finds no date column and answers
`planned:` more narrowly than the producer would.

Two uniform rules across types: a predicate with no alternative left narrows
nothing (`key:`, and `key:|` with it); a predicate value may be quoted
(`tag:"two words"`) — only a token that *opens* with a quote is free text.

**`sort`** is the other reserved key that is not a column, and the one token in
the grammar that is no predicate: `sort:COL` orders the rows by that column
ascending, `sort:COL:desc` descending (`:asc` spells the default), and it
**narrows nothing** — the set a query answers is the set its predicates leave.
Written order is precedence, so repeats compose a chain: `sort:state
sort:deadline` is state, with deadline settling its ties, and the whole of the
Sort object's rules above apply to the chain it names. A query naming any sort
key **replaces** the view's declared `sort`; one naming none leaves it standing.

A sort token names ONE column in ONE direction. A negation (`-sort:x`), an
alternation (`sort:a|b`), a column the view does not carry and a direction that
is neither word are each an **error**: a producer refuses the query and says
which token was wrong, and a renderer, having nobody to refuse to, drops the key
— the token still narrows nothing, in either polarity, so a refused ordering
never empties a table. `sort:` with nothing after it is the `key:` rule: it
orders nothing and narrows nothing, and `sort:COL:` is the direction half typed,
which ascends like an unspelled one.

A column named twice is **no error on either side**: the FIRST spelling stands
and the later one is dropped. That is the chain's own rule — a chain never names
a column twice — read over the tokens that spell one, so `sort:title:desc
sort:title` is title descending and `sort:title sort:title:asc` is one ordering
written twice. A consumer collapsing the twin therefore asks what it asked
before, which is what makes the collapse safe in a chip strip or a URL.

**`sort:*none*`** is the EMPTY chain. It **names** a sort key, so it **replaces**
the declared `sort` the way any other sort token does — with nothing, leaving the
rows in the order they arrived. It is what a reader has instead of a token to
take off, the declared order being invisible until they diverge from it. It
admits no companions: `sort:*none* sort:title` is an error a producer refuses,
and a renderer drops the `*none*` and lets the companions stand. The producer is
the stricter of the two, which is every other sort refusal's asymmetry, and it
costs no rows either way — a sort token narrows nothing in any polarity.

Which columns a reader may sort by is `sortable`'s, and it gates the reader's
gesture alone: a query naming a column that opts out opens as written, the way a
declared `sort` does.

**Starred metas.** A value written between asterisks is a **meta**: a value with
semantics of its own, never literal cell text. A bare word is never one, so
every word a cell can hold stays reachable as itself — `state:none` is a cell
reading `none`. Three kinds, and the first two are decided from the cell, so a
producer and a renderer answer them identically:

- **`*empty*`** — the empty cell. Every key answers it, `planned` included
  (`planned:*empty*` is every date column empty), and it outranks any other
  reading of the value, so a column whose cells could spell `empty` reaches
  that value by `key:empty`.
- **`*word*` on a multi-valued column** — the **whole entry**, where the bare
  word is a substring of the delimited cell: `tag:*book*` is the tag `book`,
  `tag:boo` is any tag holding those letters.
- **anything else** — a **producer meta**, a name for a set only the producer
  can enumerate (glance's `state:*active*` / `state:*inactive*` over the org
  keyword groups — `*active*` matches the empty cell as well, an unstated row
  being live work, while `*inactive*` matches stated values alone, so the two
  do not partition the column and `-state:*active*` excludes the empty cell). A
  renderer matches it literally, which finds nothing and is therefore narrower
  than the producer — the blessed direction for a divergence. A view declaring
  producer metas is expected to filter through the producer.

A fourth is decided from no cell at all: **`*none*`** on `sort`, the empty chain
(above). It is the family's one member on a key that is no predicate, which is
why it answers no column and reads no row.

Metas arrive in a column's `values` (below), which is how a renderer offers
them; `*empty*` needs no declaring. A producer may also attach meaning to a meta
being **named at all**: glance leaves archived rows out of an answer unless the
query names `tag:*archive*`, in any polarity.

**Autocomplete (renderer-local).** The renderer may suggest per stage: a
bare word suggests matching column keys (completing to `key:`); after
`key:`, that column's value domain — `values`, else the badge palette, else
distinct cell values — plus the metas that key answers, `*empty*` among them.
After `sort:`, the columns a reader may order by — `sortable`'s list, since
completing is the reader's gesture — each offered again with its other direction
once named in full, and `*none*` beside them, which no column gates.
A renderer may match a meta through its stars (`arch` reaching `*archive*`),
which is completion alone: what commits and what a query means keep them. A `|`
**re-opens** that value domain — the prefix is what follows the last bar and the
offer lands after it, so an alternation is completed one alternative at a time
and the committed token stays one token.
Keyboard-first: arrows/Tab select, Enter accepts, Esc dismisses before it
clears anything.

## Renderer handle

Whatever a renderer exposes to its embedding page — the browser renderer's
`mount` return value, for instance — is that renderer's own versioned surface,
not part of this contract. The browser renderer documents its handle in
`README.md`.

## Not part of the contract

These are renderer-local behaviours, not producer output: row marking, narrowing,
interactive column reorder/add/remove, help toggles, and **computed columns**
(cells derived by a renderer-side function). Producers emit data; renderers
decide interaction.

**How the chain in force is shown** belongs to that list. The browser renderer
marks every sorted column's own header with its direction and, past one key, the
place it holds in the chain (`Headline ▲¹`), the leading key in full ink and the
tie-breakers muted; `table-view.el` prints the same chain as words on its hint
line. Both are derived at each redraw from the chain itself, so neither can
describe an order the rows are not in. What a producer declares is `sort`, and
what a reader states is the query's `sort:` tokens; how a renderer shows either
having been applied is the renderer's.

The **drill-down crumb strip** and **chip labels** belong to that list too. A
crumb trail is a consumer's path through the data, held on a renderer's handle
and drawn beside the filter chips; the query in each crumb is the consumer's
own and the renderer only hands it back. A chip label aliases what an applied
token *shows* and leaves the query it stands for exactly as written. Both are
display; the query grammar above is the same with or without them, and a
producer sees no difference.

## Example — a glance headline view

```json
{
  "title": "Inbox — glance",
  "columns": [
    { "key": "state", "header": "State", "type": "badge", "sortable": true,
      "badges": [ { "value": "TODO", "color": "#e0af68", "group": "active" },
                  { "value": "NEXT", "color": "#7aa2f7", "group": "active" },
                  { "value": "DONE", "color": "#9ece6a", "group": "inactive" } ] },
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
    { "id": "a1b2", "cells": {
        "state": "NEXT", "priority": "A",
        "title": "[[org-glance:a1b2][Ship table-view.js]]",
        "tag": ":web:glance:", "scheduled": "2026-08-01" } },
    { "id": "c3d4", "cells": {
        "state": "TODO", "priority": "B",
        "title": "Write SCHEMA.md", "tag": ":web:", "scheduled": "2026-08-03" } }
  ]
}
```
