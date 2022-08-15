#!/bin/bash
add-apt-repository -y ppa:git-core/ppa
add-apt-repository -y ppa:neovim-ppa/unstable

apt-get update

apt-get install -y fzf \
	git \
    zip unzip \
	neovim
