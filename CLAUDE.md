# table-view

Declarative, backend-agnostic table view for Emacs (Emacs Lisp package).

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

## Build / test

- `make test` — run the ERT suite in batch mode.
- `make compile` — byte-compile (surfaces warnings).
- Direct: `emacs -Q -batch -L . -l table-view-test.el -f ert-run-tests-batch-and-exit`
