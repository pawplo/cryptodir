
.PHONY: all install unistall

PREFIX ?= /usr/local

default_target: all

all:
	@echo "nothing to do."

install:
	cp cryptodir $(DESTDIR)$(PREFIX)/bin

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/cryptodir
