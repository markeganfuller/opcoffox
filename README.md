# opcoffox - OpenConnect Firefox

opcoffox is a docker-compose and helper script setup to provide a web browser
connected to a VPN without affecting the host's networking. This is especially
useful where there's a requirement for connecting to multiple VPNs but one of
the VPNs replaces the default route.

The base configuration expects a user/pass pin/rsa auth setup but can easily be
modified as required.

## Usage

```
cp config_example.sh config.sh
vim config.sh

./opcoffox
```

Hit `CTRL+C` to terminate the session.

## Requirements

* docker
* docker-compose
* Xdialog if not running from an interactive terminal
