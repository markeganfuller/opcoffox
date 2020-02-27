#!/bin/sh

(echo "${PIN}${RSA}"; echo "${PASSWORD}") | openconnect "${URL}" --user "${USERNAME}" --passwd-on-stdin -v
