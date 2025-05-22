#!/usr/bin/env bash 

mkdir ~/Downloads
cd ~/Downloads
curl -Lo phinger.tar.bz2 "https://github.com/phisch/phinger-cursors/releases/download/v2.1/phinger-cursors-variants.tar.bz2"
tar -xf ~/Downloads/phinger.tar.bz2
rm ~/Downloads/phinger.tar.bz2
mkdir ~/.icons
mv phinger* ~/.icons
touch ~/.icons/phinger-installed
