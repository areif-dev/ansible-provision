#!/usr/bin/env bash 

mkdir -p /tmp/extras

set -ouex pipefail 

echo "Installing Rofi"
ROFI_VERSION=$(curl -s "https://api.github.com/repos/davatorium/rofi/releases/latest" | jq -r '.tag_name' | sed 's/v//')
curl -L -o "/tmp/extras/rofi-${ROFI_VERSION}.tar.gz" "https://github.com/davatorium/rofi/releases/download/v${ROFI_VERSION}/rofi-${ROFI_VERSION}.tar.gz"
tar -xzf "/tmp/extras/rofi-${ROFI_VERSION}.tar.gz" -C "/tmp/extras"
mv /tmp/extras/rofi /usr/bin

rm -rf /tmp/extras
