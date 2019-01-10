all:

clean:

install:
	mkdir -p $(DESTDIR)/etc/apt/preferences.d
	mkdir -p $(DESTDIR)/etc/apt/sources.list.d
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/local/bin

	cp preferences.d/parrot-pinning $(DESTDIR)/etc/apt/preferences.d/parrot-pinning
	cp sources.list.parrot $(DESTDIR)/etc/apt/sources.list.parrot
	cp parrot-mirror-selector $(DESTDIR)/usr/bin/parrot-mirror-selector
	cp parrot-upgrade $(DESTDIR)/usr/bin/parrot-upgrade
	cp parrot-upgrade $(DESTDIR)/usr/bin/update
	cp parrot-upgrade $(DESTDIR)/usr/bin/upgrade
	cp parrot-upgrade $(DESTDIR)/usr/bin/dist-upgrade
	cp parrot-upgrade $(DESTDIR)/usr/bin/full-upgrade
	cp apt $(DESTDIR)/usr/local/bin/apt
	cp apt $(DESTDIR)/usr/local/bin/apt-get
	cp apt $(DESTDIR)/usr/bin/zypper

	chown root:root $(DESTDIR)/etc/apt/sources.list.parrot
	chmod 644 $(DESTDIR)/etc/apt/sources.list.parrot

	chown root:root $(DESTDIR)/etc/apt/preferences.d/parrot-pinning
	chmod 644 $(DESTDIR)/etc/apt/preferences.d/parrot-pinning

	chown root:root $(DESTDIR)/usr/bin/parrot-mirror-selector
	chmod 755 $(DESTDIR)/usr/bin/parrot-mirror-selector

	chown root:root $(DESTDIR)/usr/bin/parrot-upgrade
	chmod 755 $(DESTDIR)/usr/bin/parrot-upgrade
	chmod 755 $(DESTDIR)/usr/bin/dist-upgrade
	chmod 755 $(DESTDIR)/usr/bin/full-upgrade
	chmod 755 $(DESTDIR)/usr/bin/upgrade
	chmod 755 $(DESTDIR)/usr/bin/update

	chown root:root $(DESTDIR)/usr/local/bin/apt
	chmod 755 $(DESTDIR)/usr/local/bin/apt

	chown root:root $(DESTDIR)/usr/local/bin/apt-get
	chmod 755 $(DESTDIR)/usr/local/bin/apt-get

	chown root:root $(DESTDIR)/usr/bin/zypper
	chmod 755 $(DESTDIR)/usr/bin/zypper
