#!/usr/bin/env bash 

mkdir -p /tmp/extras

set -ouex pipefail 

echo "Attempting to install NWG-Look"
mkdir -p /tmp/extras/nwg-look
# NWG_LOOK_VERSION=$(curl -s "https://api.github.com/repos/nwg-piotr/nwg-look/releases/latest" | jq -r '.tag_name' | sed 's/v//')
NWG_LOOK_VERSION="0.2.7"
curl -Lo "/tmp/extras/nwg-look.tar.gz" "https://github.com/nwg-piotr/nwg-look/releases/download/v${NWG_LOOK_VERSION}/nwg-look-v${NWG_LOOK_VERSION}_x86_64.tar.gz"
tar -xzf "/tmp/extras/nwg-look.tar.gz" -C "/tmp/extras/nwg-look"
mkdir -p /usr/share/nwg-look/langs
mkdir -p /usr/share/applications
cp /tmp/extras/nwg-look/stuff/main.glade /usr/share/nwg-look/
cp /tmp/extras/nwg-look/langs/* /usr/share/nwg-look/langs/
cp /tmp/extras/nwg-look/stuff/nwg-look.desktop /usr/share/applications/
cp /tmp/extras/nwg-look/stuff/nwg-look.svg /usr/share/pixmaps/
cp /tmp/extras/nwg-look/nwg-look /usr/bin

rm -rf /tmp/extras
