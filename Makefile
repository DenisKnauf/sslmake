
PREFIX ?= /usr/local
EPREFIX ?= $(PREFIX)/bin
D ?= /

all:
	@echo Choose: If you prefer openssl, use install-openssl. If you prefer gnutls, use install-gnutls.
	@echo If you use install, openssl will be used.

install: install-openssl

$(D)/$(EPREFIX):
	install --owner root --group root --mode 0755 -d $(D)/$(EPREFIX)

install-openssl: $(D)/$(EPREFIX)
	install --owner root --group root --mode 0755 sslmake-openssl $(D)/$(EPREFIX)/sslmake

install-gnutls: $(D)/$(EPREFIX)
	install --owner root --group root --mode 0755 sslmake-gnutls $(D)/$(EPREFIX)/sslmake
