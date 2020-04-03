VERSION=$(shell git describe --tags --always)
PKG_DIR=pkg
PKG_DEB=opcoffox-${VERSION}.deb
PKG_RPM=opcoffox-${VERSION}.rpm

install:
	install -d $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/lib/opcoffox
	install -d $(DESTDIR)/usr/share/doc/opcoffox
	install -d $(DESTDIR)/usr/share/opcoffox
	install -m 755 opcoffox $(DESTDIR)/usr/bin/
	install -m 644 docker-compose.yaml $(DESTDIR)/usr/lib/opcoffox/docker-compose.yaml
	install -m 755 entrypoint.sh $(DESTDIR)/usr/lib/opcoffox/entrypoint.sh
	install -m 644 README.md $(DESTDIR)/usr/share/doc/opcoffox/README.md
	install -m 644 config_example $(DESTDIR)/usr/share/opcoffox/config_example

deb: clean
	make install DESTDIR=$(PKG_DIR)
	fpm -s dir -t deb -v $(VERSION) -p $(PKG_DEB) -n opcoffox -v $(VERSION) -C $(PKG_DIR)

rpm: clean
	make install DESTDIR=$(PKG_DIR)
	fpm -s dir -t rpm -v $(VERSION) -p $(PKG_RPM) -n opcoffox -v $(VERSION) -C $(PKG_DIR)

pkg: deb rpm

clean:
	rm -rf $(PKG_DIR)
	rm -f opcoffox*.rpm
	rm -f opcoffox*.deb
