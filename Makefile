# VARIABLES
SHELL = /bin/sh
NAME = dmscripts

PREFIX ?= /usr/local
SCRIPTS := $(wildcard ./utils/* ./fileManager ./i3lock-color/lock)
LIBS := $(wildcard ./lib/*)
I3LOCK := $(wildcard ./i3lock-color/lock)

build: 

install:
	echo $(DESTDIR)$(MANPREFIX)
	cp -r $(SCRIPTS)  $(DESTDIR)$(PREFIX)/bin/
	cp -r $(LIBS) $(DESTDIR)$(PREFIX)/lib/

clean:

.PHONY: install


