EMACS ?= emacs

EL  := table-view.el
TEST := table-view-test.el

.PHONY: all test compile clean

all: compile test

## Run the ERT suite in batch mode.
test:
	$(EMACS) -Q -batch -L . -l $(TEST) -f ert-run-tests-batch-and-exit

## Byte-compile the package (doubles as a lint pass; warnings are surfaced).
compile:
	$(EMACS) -Q -batch -L . -f batch-byte-compile $(EL)

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
