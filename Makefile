
BIN ?= nman
PREFIX ?= /usr/local

install:
	cp nman.sh $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)

check:
	@if ! type -f ronn > /dev/null 2>&1; then echo "Missing ronn(1)"; exit -1; fi
