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
