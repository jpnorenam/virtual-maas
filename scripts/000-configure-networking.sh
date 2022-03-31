#!/usr/bin/env bash

set -e

echo "Setting DNS server..."
sudo sed -i "s/DNS=4.2.2.1 4.2.2.2/DNS=10.245.160.2/" /etc/systemd/resolved.conf
sudo systemctl restart systemd-resolved

echo "Setting proxy enviroment variables..."
cat << EOF >> /etc/environment
no_proxy=192.168.121.0/24,1192.168.10.0/24,127.0.0.1
https_proxy=http://squid.internal:3128
http_proxy=http://squid.internal:3128
NO_PROXY=192.168.121.0/24,1192.168.10.0/24,127.0.0.1
HTTPS_PROXY=http://squid.internal:3128
HTTP_PROXY=http://squid.internal:3128
EOF