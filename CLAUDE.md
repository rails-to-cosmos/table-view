# table-view

Declarative, producer-agnostic table view for Emacs (Emacs Lisp package).

## Documentation convention

Write all project documents as **Org-mode files** (`.org`), not Markdown.

- Design notes, proposals, and reviews live under [`docs/`](docs/) as a
  **wiki**: the index ([`docs/index.org`](docs/index.org)) links out, and
  documents **cross-link each other** with Org links so the set reads as a
  connected wiki:
  - file link: `[[file:other.org][Title]]`
  - heading anchor: `[[file:other.org::*Heading][Title]]`
- When adding a document, link it from `docs/index.org` and from any related
  document (and link back).
- Exception: the package `README.md` stays Markdown — it is the package's
  public, GitHub-rendered face and follows Emacs-package convention.

## Docstrings & comments

Cut genuine bloat — over-explanation, redundancy, three sentences where one
works. Keep docstrings proper English and checkdoc-valid (they are public API,
shown by `C-h f`): a complete imperative first line, arg names in CAPS, facts
intact. Terse, but complete.

Never use the "negation-reveal" pattern ("not X, but Y" / "it's not just A,
it's B" / "this isn't about A, it's about B") in any generated text — docs,
comments, commit messages, prose. State the point directly.

In `web/table-view.js`: a JSDoc block is its function's FACTS and its tags, two
or three lines of description at most. Rendering behaviour, geometry, the filter
grammar and the suggestion ordering are documented in `README.md` under
`## Browser renderer` and in `docs/web-renderer.org` — a comment restating them
is a second copy, and two copies drift. Cross-reference instead, the way
`// column geometry (COL_MAX, TITLE_MIN): docs/web-renderer.org` already does.
Type tags (`@param`, `@returns`, `@type`, `@typedef`) are read by
`make web-check` and are never shortened. Stacking two doc blocks before one
function hides the first from the checker: one block, attached.

## Build / test

- `make test` — run the ERT suite in batch mode.
- `make compile` — byte-compile (surfaces warnings).
- Direct: `emacs -Q -batch -L . -l table-view-test.el -f ert-run-tests-batch-and-exit`

## Invariants

Rules the code silently enforces; a refactor must preserve them. Fuller
evidence for the render ones is in
[`docs/reviews/incremental-render.org`](docs/reviews/incremental-render.org).

Rendering / rows:
- Incremental render diffs rows by `eq`; mutators MUST keep unchanged row cons
  cells (copy the list spine only; `--compute-cells`/`--strip-cell` return the
  *same* row when nothing changed; `apply-delta` reuses the pooled `equal` row).
  Never rebuild rows with `mapcar #'copy-alist` or force a fresh cons.
- `table-view--link-cache-check` runs FIRST in `table-view--render`: a
  render-links flip is invisible to `eq`, so it clears the link/width/render
  caches and forces a full redraw.
- One buffer line per row: `table-view--str` flattens control chars to spaces
  because `--nth-row-pos` counts with `forward-line`.
- Consumer rows are never mutated; caches are keyed by row id; the mark-cache is
  refreshed by id on `set-page`/`apply-delta` (`--refresh-mark-cache`).
- The widths cache must equal a fresh computation; the incremental path is
  entered only when columns, marks-active, and widths are all unchanged.
- Paged mode does not client-sort (server owns order); a page position commits
  only on a successful `set-page`.
- `g` is intentionally unbound in the mode map — it inherits `special-mode`'s
  `revert-buffer`, wired to `table-view-revert` via `revert-buffer-function`.

Core / native split:
- Core stays standalone: no hard `require` of `table-view-native`; the seam is
  `table-view--native-display-function` (nil unless the native package loads).
- Elisp and Rust collation/sort/null/filter MUST agree; the differential test
  `tvn-test-differential-native-equals-elisp` is the oracle — mirror any change
  on both sides. `table-view--sort-key-spec` is the single source of sort
  resolution; `--comparator` derives from it.

Wire protocol / accelerator:
- Sort wire is back-compatible: a 2-element `[col asc]` entry means nulls-last;
  the 3rd `"first"`/`"last"` nulls element is optional.
- Server owns gen/rev; the client applies a `$/delta` only when `baseRev` AND
  `gen` match, else it resyncs. The `$/delta` is written before the patch reply.
  An empty-ops delta still refreshes counts (not a no-op). Delta ops are
  deletes-descending then inserts-ascending, applied strictly in order.
- Protocol integer is lockstepped: Rust `PROTOCOL` == elisp
  `table-view-native-protocol`; the cached binary is named `tvx-p%d`.
- Rust `StrCol` rank is stale exactly when `rank.len() != values.len()` (rebuilt
  lazily before a sort). A missing string cell stores `""`, never `"null"`; a
  numeric column ingests a missing cell as `0` (the nulls flag is inert there).

Release:
- Version lockstep: `make bump-version` rewrites all sites (both `.el` headers,
  the `(table-view "X")` dep, `Cargo.toml`) — never hand-edit one.
