#!/bin/sh

# build and install shadowsocks-libev
curl https://raw.githubusercontent.com/au5ton/ishox/master/setup/build.sh | sh

# install components for UI
apk update && \
apk upgrade && \
apk add bash dialog && \
echo "complete"