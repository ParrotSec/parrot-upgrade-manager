all:

clean:

install:
	chmod -R 0644 usr/*
	chmod -R 0755 usr/bin/*
	chmod 0755 usr/share/parrot-update-manager/full-upgrade.sh
	chown root:root usr/*
	mkdir $(DESTDIR)/usr/
	cp -rf usr/* $(DESTDIR)/usr/

