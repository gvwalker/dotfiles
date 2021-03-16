#!/bin/bash

cd ~
yay -S fzf tree bat diff-so-fancy
git clone https://github.com/kazhala/dotbare.git ~/.dotbare
dotbare finit -u https://github.com/gvwalker/dotfiles.git
./setup.sh
