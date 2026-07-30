EMACS ?= emacs

EL  := table-view.el
TEST := table-view-test.el

.PHONY: all test compile web-check elisp-check typecheck check clean

all: compile test

## Run the ERT suite in batch mode.
test:
	$(EMACS) -Q -batch -L . -l $(TEST) -f ert-run-tests-batch-and-exit

## Byte-compile the package (doubles as a lint pass; warnings are surfaced).
compile:
	$(EMACS) -Q -batch -L . -f batch-byte-compile $(EL)

## Typecheck the browser renderer against the schema (JSDoc + `@ts-check', no
## build; needs Node -- fetches tsc via npx on first run).  `noEmit' is set in
## web/jsconfig.json.
web-check:
	cd web && npx --yes -p typescript tsc -p jsconfig.json

## Byte-compile the library elisp with warnings promoted to errors (the elisp
## analogue of a type check: undefined functions, arity, unused bindings, ...).
## The EXIT trap removes the .elc byproducts while keeping emacs's exit status.
elisp-check:
	@trap 'rm -f *.elc' EXIT; \
	  $(EMACS) -Q -batch -L . --eval '(setq byte-compile-error-on-warn t)' \
	    -f batch-byte-compile $(EL) table-view-native.el

## Type-check everything: the elisp sources and the web renderer.
typecheck: elisp-check web-check

## Full quality gate (CI / pre-commit): type-check both sides, then run tests.
check: typecheck test

## Remove byte-compiled artifacts.
clean:
	rm -f *.elc

# --- Version bumping ---------------------------------------------------------
# `make major|minor|patch' bumps the MAJOR.MINOR.PATCH version (resetting the
# lower components) everywhere it appears: both package headers, the native
# package's `table-view' dependency, and the Rust crate -- kept in lockstep.
.PHONY: major minor patch bump-version
major: BUMP := major
minor: BUMP := minor
patch: BUMP := patch
major minor patch: bump-version

bump-version:
	@cur=`sed -n 's/^;; Version: \([0-9.]*\)/\1/p' $(EL)`; \
	test -n "$$cur" || { echo "error: could not read version from $(EL)"; exit 1; }; \
	set -- `echo "$$cur" | tr '.' ' '`; \
	maj=$${1:-0}; min=$${2:-0}; pat=$${3:-0}; \
	case "$(BUMP)" in \
	  major) maj=$$((maj+1)); min=0; pat=0 ;; \
	  minor) min=$$((min+1)); pat=0 ;; \
	  patch) pat=$$((pat+1)) ;; \
	  *) echo "usage: make major|minor|patch"; exit 1 ;; \
	esac; \
	new="$$maj.$$min.$$pat"; \
	sed -i "s/^;; Version: $$cur/;; Version: $$new/" $(EL) table-view-native.el; \
	sed -i "s/(table-view \"$$cur\")/(table-view \"$$new\")/" table-view-native.el; \
	sed -i "s/^version = \"$$cur\"/version = \"$$new\"/" native/tvx/Cargo.toml; \
	echo "table-view: $$cur -> $$new"
