#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# build and install shadowsocks-libev
curl https://raw.githubusercontent.com/au5ton/ishox/master/setup/build.sh | sh

# install components for UI
apk update && \
apk upgrade && \
apk add bash bash-completion dialog && \
git clone https://github.com/au5ton/ishox.git /root/ishox && \
cat /root/ishox/motd > /etc/motd && \
ln -s /root/ishox/tether.sh /usr/local/bin/tether && \
ln -s /root/ishox/setup/countdown /usr/local/bin/countdown && \
printf "${GREEN}Installation complete, terminal will close in 1 minute. Open again to start using.${NC}" && \
countdown 60 && \
exit
