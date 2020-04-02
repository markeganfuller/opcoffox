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
