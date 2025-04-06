# VARIABLES
SHELL = /bin/sh
NAME = fzfscripts

PREFIX ?= /local
DESTDIR = /usr
SCRIPTS := $(wildcard ./scripts/*)
LIBS := $(wildcard ./lib/*)
SHARE=`[ -d ${DESTDIR}${PREFIX}/share/man ] && echo /share || true`
MANPREFIX ?= ${PREFIX}${SHARE}/man


build:
	@$(MAKE) man/fzfscripts.1.gz
	@echo "Done"

./man/fzfscripts.1.gz: ./man/man.org
	@pandoc -s -t man man/man.org -o man/fzfscripts.1
	gzip man/fzfscripts.1


install:
	echo $(DESTDIR)$(MANPREFIX)
	cp -r $(SCRIPTS) $(DESTDIR)$(PREFIX)/bin/
	cp -r $(LIBS) $(DESTDIR)$(PREFIX)/lib/
	cp -r man/fzfscripts.1.gz $(DESTDIR)$(MANPREFIX)/man1/fzfscripts.1.gz
	mkdir -p "$(DESTDIR)$(PREFIX)/share/licenses/$(NAME)/LICENSE"
	cp LICENSE "$(DESTDIR)$(PREFIX)/share/licenses/$(NAME)/LICENSE"
	mkdir -p "$(DESTDIR)$(PREFIX)/share/doc/$(NAME)/README.md"
	cp README.md "$(DESTDIR)$(PREFIX)/share/doc/$(NAME)/README.md"
	mkdir -p "/etc/fzfscripts/config/"
	cp config/config "/etc/fzfscripts/config/config"

clean:
	$(shell [ -f man/fzfscripts.1.gz ] && rm man/fzfscripts.1.gz )
	@echo "done"

.PHONY: clean build install


