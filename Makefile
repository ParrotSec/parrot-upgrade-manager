all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/share/applications
	mkdir -p $(DESTDIR)/usr/share/parrot-update-manager
	chown root:root -R icons full-upgrade.sh parrot-upgrade
	cp full-upgrade.sh $(DESTDIR)/usr/share/parrot-upgrade-manager/
	cp -r icons $(DESTDIR)/usr/share/parrot-upgrade-manager/
	cp parrot-upgrade $(DESTDIR)/usr/bin/
	cp usr/bin/applications/update-manager-parrot.desktop $(DESTDIR)/usr/share/applications/update-manager-parrot.desktop
	chmod 0755 $(DESTDIR)/usr/share/parrot-update-manager/full-upgrade.sh
	chmod 0755 $(DESTDIR)/usr/bin/parrot-upgrade
