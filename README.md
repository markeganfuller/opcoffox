# opcoffox - OpenConnect Firefox

opcoffox is a docker-compose and helper script setup to provide a web browser
connected to a VPN without affecting the host's networking. This is especially
useful where there's a requirement for connecting to multiple VPNs but one of
the VPNs replaces the default route.

The base configuration expects a user/pass pin/rsa auth setup but can easily be
modified as required.

## Usage

```
cp /usr/share/opcoffox/config_example ~/.opcoffox
vim ~/.opcoffox
chmod 600 ~/.opcoffox

./opcoffox
```

Exiting the browser will terminate both the browser and the connection with the
default `$COMPOSEOPTS` setting.

## Requirements

* docker
* docker-compose
* Xdialog if not running from an interactive terminal

## Installation

```
# Generic Linux
sudo make install

# Redhat
make rpm
rpm -i opcoffox-${VERSION}.rpm

# Debian
make deb
dpkg -i opcoffox-${VERSION}.deb
```

## Changelog

### 1.0.0

* Rename main script to `opcoffox`
* Shellcheck fixes
* Add a Makefile and adjust paths for /usr/bin installation
* Add Xdialog for handling launching from GUI aswell as terminal
* Add package building for RPM / DEB
* Adjust handling of pull errors so output is still visible
