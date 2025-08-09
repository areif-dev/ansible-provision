#!/usr/bin/env bash 

set -ouex pipefail 

# Install Oh My Zsh 
ZSH=$HOME/.oh-my-zsh
BRANCH=master 
REMOTE=https://github.com/ohmyzsh/ohmyzsh.git

mkdir -p $ZSH

git init --quiet "$ZSH" && cd "$ZSH" \
&& git config core.eol lf \
&& git config core.autocrlf false \
&& git config fsck.zeroPaddedFilemode ignore \
&& git config fetch.fsck.zeroPaddedFilemode ignore \
&& git config receive.fsck.zeroPaddedFilemode ignore \
&& git config oh-my-zsh.remote origin \
&& git config oh-my-zsh.branch "$BRANCH" \
&& git remote add origin "$REMOTE" \
&& git fetch --depth=1 origin \
&& git checkout -b "$BRANCH" "origin/$BRANCH"

# Install zsh-autosuggestions plugin for ohmyzsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

touch $ZSH/ohmyzsh-installed
