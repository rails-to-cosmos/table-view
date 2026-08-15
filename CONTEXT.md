# table-view

Declarative table views for Emacs: a renderer that draws rows somebody else
owns.  This glossary names the parties on each side of that boundary, and the
two slices of rows that are easy to confuse.

## Language

### The parties

**Renderer**:
The thing that draws a table and owns the reader's interaction with it — this
package, in either of its two implementations (`table-view.el` for Emacs,
`web/table-view.js` for a browser).
_Avoid_: view, widget, frontend

**Producer**:
Whatever owns the rows and answers for them.  It is a separate program or
buffer, reached across a documented protocol; glance is one.
_Avoid_: backend, data source, server

**Accelerator**:
An optional native process a renderer builds on first use and speaks to over a
lockstepped protocol, to do work the renderer could do slowly by itself.  `tvx`
is the only one.  Declining to build it costs speed and nothing else.
_Avoid_: backend, native backend, server

### The two slices

**Page**:
A producer-side fetch unit: how many rows cross the seam at once, and from
where.  Carries a size and either an offset or a cursor.
_Avoid_: window, batch, chunk

**Window**:
The rows as displayed, after any renderer-local sort, filter or page has been
applied.  It is the coordinate space delta ops index into.
_Avoid_: page, viewport, visible page

**Delta**:
An ordered list of insert, delete and reset ops describing how a window
changed, valid only against the revision it was computed from.
_Avoid_: patch, update, diff

### Conformance

**Vector**:
One declared case — an input and the exact output every implementation must
produce — living in `fixtures/parity/`.
_Avoid_: fixture, test case, golden

**Capability**:
A named thing a harness can do (`sort`, `render`, `query`, `query-sort`).  A
harness declares which it implements and fails on any vector it claims but
cannot run.
_Avoid_: feature, support level

## Notes on the boundary

A producer supplies rows; an accelerator supplies speed.  That is why one
cannot be declined and the other can.

Pages cross the wire; windows are what the reader sees.  With no renderer-local
sort, filter or page in force the window is the producer's own order —
`SCHEMA.md` states this where it defines delta indices, and delta correctness
depends on it: an op's `index` counts in the window, never in the page it
arrived in.
