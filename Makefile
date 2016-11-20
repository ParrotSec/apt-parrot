all:

clean:

install:
	mkdir -p $(DESTDIR)/etc/apt/{preferences.d,sources.list.d}
	mkdir -p $(DESTDIR)/usr/bin
	
	cp preferences.d/parrot-pinning $(DESTDIR)/etc/apt/preferences.d/parrot-pinning
	cp sources.list.parrot $(DESTDIR)/etc/apt/sources.list.parrot
	cp parrot-mirror-selector $(DESTDIR)/usr/bin/parrot-mirror-selector
	
	chown root:root $(DESTDIR)/etc/apt/sources.list.parrot
	chmod 644 $(DESTDIR)/etc/apt/sources.list.parrot
	
	chown root:root $(DESTDIR)/etc/apt/preferences.d/parrot-pinning
	chmod 644 $(DESTDIR)/etc/apt/preferences.d/parrot-pinning
	
	chown root:root $(DESTDIR)/usr/bin/parrot-mirror-selector
	chmod 755 $(DESTDIR)/usr/bin/parrot-mirror-selector
