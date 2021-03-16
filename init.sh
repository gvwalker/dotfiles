#!/bin/bash

cd ~
yay -S --noconfirm fzf tree bat diff-so-fancy
git clone https://github.com/kazhala/dotbare.git ~/.dotbare
source ~/.dotbare/dotbare.plugin.zsh
dotbare finit -u https://github.com/gvwalker/dotfiles
dotbare remote set-url origin git@github.com:gvwalker/dotfiles.git
./setup.sh
