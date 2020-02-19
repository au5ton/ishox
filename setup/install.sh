#!/bin/sh

# build and install shadowsocks-libev

# install components for UI
apk update && \
apk upgrade && \
apk add bash dialog && \
