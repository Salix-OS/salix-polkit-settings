DESTDIR ?= /

default:
	@echo "Nothing to make."

install:
	install -d -m 755 $(DESTDIR)/usr/share/polkit-1
	install -d -m 700 -o polkitd -g root $(DESTDIR)/usr/share/polkit-1/rules.d
	install -m 644 rules.d/* $(DESTDIR)/usr/share/polkit-1/rules.d/

srcpkg:
	git archive --prefix=salix-polkit-settings/ master | xz -9 > ../salix-polkit-settings.tar.xz

.PHONY: default install
