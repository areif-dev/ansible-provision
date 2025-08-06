#!/usr/bin/env bash 

set -ouex pipefail 

cd ~/Downloads
curl -Lo ~/Downloads/catppuccin.zip 'https://github.com/catppuccin/gtk/releases/download/v1.0.3/catppuccin-mocha-lavender-standard+default.zip'
unzip catppuccin.zip 
rm catppuccin.zip 
mkdir ~/.themes
mv catppuccin* ~/.themes
touch ~/.themes/gtk-installed
