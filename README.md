# table-view

Declarative, producer-agnostic table views for Emacs 28.1+. `table-view`
renders an alist or JSON-derived spec as a sortable, filterable, read-only
buffer and dispatches actions to consumer handlers.

The package also includes a dependency-free browser renderer and an optional
Rust accelerator for large datasets.

## Install

```elisp
(package-vc-install "https://github.com/rails-to-cosmos/table-view")
```

For `use-package`, straight.el, and manual installation, see the
[user guide](docs/guide.org#installation).

## Example

```elisp
(require 'table-view)

(table-view-display
 "*books*"
 '((title . "Books")
   (columns . (((key . "title") (header . "Title") (sortable . t))
               ((key . "year") (header . "Year")
                (type . "number") (sortable . t))))
   (rows . (((id . "1") (cells . ((title . "SICP") (year . 1996))))
            ((id . "2") (cells . ((title . "PAIP") (year . 1992)))))))
 nil)
```

Runnable examples cover streaming updates, custom sorting, bulk actions,
pagination, Org links, and native acceleration in [`examples/`](examples/).

## Documentation

- [User guide](docs/guide.org): installation, keys, spec, API, pagination,
  Org links, browser renderer, and development
- [Schema](SCHEMA.md): shared producer contract
- [Design wiki](docs/index.org): architecture, proposals, and reviews
- [Web renderer design](docs/web-renderer.org): filtering, layout, interaction,
  and streaming rules

## Development

Run `make check` for type checks and the full ERT suite. See the
[development guide](docs/guide.org#development) for individual targets.

## License

MIT © 2025-2026 Dmitry Akatov. See [LICENSE](LICENSE).
