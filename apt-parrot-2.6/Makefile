PACKAGE=apt-parrot
INSTALL=install -m 0644


all:

clean:

install:
	chmod -R 0644 $(PACKAGE)/*
	chmod 755 $(PACKAGE)/usr/bin/parrot-mirror-selector
	ln -s $(PACKAGE)/usr/bin/parrot-mirror-selector $(PACKAGE)/usr/bin/parrot-mirror
	chown root:root $(PACKAGE)/*
	cp -rf $(PACKAGE)/* $(DESTDIR)/

