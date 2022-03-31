#!/usr/bin/env bash

set -e

echo "Installing packages..."
snap install jq
sudo snap install --channel=3.1/edge maas

# Install PostgreSQL for MAAS
apt-get update --yes
apt-get install --yes postgresql