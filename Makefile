PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install instaaur.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man8
	@cp -p instaaur $(DESTDIR)$(PREFIX)/bin/instaaur
	@cp -p instaaur.8 $(DESTDIR)$(MANDIR)/man8
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/instaaur

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/instaaur
	@rm -rf $(DESTDIR)$(MANDIR)/man8/instaaur.8*
