#!/usr/bin/env bash

set -e

echo "Installing packages..."
snap install jq
snap install maas --channel latest/stable

# Install PostgreSQL for MAAS
apt-get update --yes
apt-get install --yes postgresql