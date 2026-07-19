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
# Version is MAJOR.MINOR.PATCH.BUILD.YYYYMMDD.REV (package-build / ELPA style,
# e.g. 0.1.0.0.20260719.0).  `make major|minor|patch|build' bumps that base
# component, resets the lower base components, stamps today's date and resets
# REV; `make rev' bumps REV for another release the same day.  The version is
# written to both package headers (table-view.el and table-view-native.el).
.PHONY: major minor patch build rev bump-version
major: BUMP := major
minor: BUMP := minor
patch: BUMP := patch
build: BUMP := build
rev:   BUMP := rev
major minor patch build rev: bump-version

bump-version:
	@cur=`sed -n 's/^;; Version: \([0-9.]*\).*/\1/p' table-view.el`; \
	test -n "$$cur" || { echo "error: could not read version from table-view.el"; exit 1; }; \
	set -- `echo "$$cur" | tr '.' ' '`; \
	maj=$${1:-0}; min=$${2:-0}; pat=$${3:-0}; bld=$${4:-0}; olddate=$${5:-0}; rev=$${6:-0}; \
	today=`date +%Y%m%d`; \
	case "$(BUMP)" in \
	  major) maj=$$((maj+1)); min=0; pat=0; bld=0; rev=0 ;; \
	  minor) min=$$((min+1)); pat=0; bld=0; rev=0 ;; \
	  patch) pat=$$((pat+1)); bld=0; rev=0 ;; \
	  build) bld=$$((bld+1)); rev=0 ;; \
	  rev)   if [ "$$olddate" = "$$today" ]; then rev=$$((rev+1)); else rev=0; fi ;; \
	  *) echo "usage: make major|minor|patch|build|rev"; exit 1 ;; \
	esac; \
	new="$$maj.$$min.$$pat.$$bld.$$today.$$rev"; \
	sed -i "s/^;; Version: $$cur/;; Version: $$new/" table-view.el; \
	sed -i "s/^;; Version: [0-9][0-9.]*/;; Version: $$new/" table-view-native.el; \
	echo "table-view: $$cur -> $$new"
