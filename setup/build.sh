#!/bin/sh

# essentials
apk update && \
apk upgrade && \
apk add git curl wget alpine-sdk

git clone https://github.com/shadowsocks/shadowsocks-libev.git /opt/shadowsocks-libev

cd /opt/shadowsocks-libev && \
git submodule update --init && \
apk add --no-cache --virtual .build-deps \
      autoconf \
      automake \
      build-base \
      c-ares-dev \
      libcap \
      libev-dev \
      libtool \
      libsodium-dev \
      linux-headers \
      mbedtls-dev \
      pcre-dev && \

./autogen.sh && \
./configure --disable-documentation && 
make && \
sudo make install
