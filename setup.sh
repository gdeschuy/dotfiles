#!/bin/bash

CONFIG_DIR="/home/gdeschuy/.config"

echo "### Updating package manager ###"
add-apt-repository -y ppa:neovim-ppa/unstable
apt-get update

echo "### Installing packages ###"
apt-get install -y fzf \
	git \
	neovim
