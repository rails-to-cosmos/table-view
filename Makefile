EMACS ?= emacs

EL   := table-view.el table-view-native.el
TEST := table-view-test.el table-view-native-test.el

.PHONY: all test compile web-check web-perf elisp-check typecheck check clean native-window dist

all: compile test

test:
	@echo "ert: core + native (native tests needing the tvx binary skip when it is absent)"
	$(EMACS) -Q -batch -L . $(addprefix -l ,$(TEST)) -f ert-run-tests-batch-and-exit

compile:
	$(EMACS) -Q -batch -L . -f batch-byte-compile $(EL)

web-check:
	cd web && npx --yes -p typescript tsc -p jsconfig.json

web-perf:
	node web/perf-driver.js

elisp-check:
	@trap 'rm -f *.elc' EXIT; \
	  $(EMACS) -Q -batch -L . --eval '(setq byte-compile-error-on-warn t)' \
	    -f batch-byte-compile $(EL)

typecheck: elisp-check web-check

check: typecheck test

clean:
	rm -f *.elc
	rm -rf dist native-window/dist-newstyle

NATIVE_DIR := native-window
GIR        := $(CURDIR)/$(NATIVE_DIR)/vendored/gir

native-window:
	cd $(NATIVE_DIR) && HASKELL_GI_GIR_SEARCH_PATH=$(GIR) \
	  cabal build exe:table-view-window

dist: native-window
	@mkdir -p dist/emacs dist/web dist/native-window
	cp -f table-view.el     dist/emacs/table-view.el
	cp -f web/table-view.js dist/web/table-view.js
	@bin=`cd $(NATIVE_DIR) && HASKELL_GI_GIR_SEARCH_PATH=$(GIR) \
	        cabal list-bin -v0 exe:table-view-window`; \
	  cp -f "$$bin" dist/native-window/table-view-window; \
	  cp -f web/table-view.js dist/native-window/table-view.js; \
	  echo ">> dist/: emacs web native-window"

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
