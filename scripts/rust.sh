#!/usr/bin/env bash 

set -ouex pipefail 

printf '1\n' | rustup-init
rustup component add rust-analyzer
