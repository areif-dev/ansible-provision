#!/usr/bin/env bash 

set -ouex pipefail 

rustup install stable 
rustup component add rust-analyzer
