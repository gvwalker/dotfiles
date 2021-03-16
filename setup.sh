#!/bin/bash

yay -S --noconfirm bmenu bpytop neovim alacritty exa

yay -S --noconfirm teams zoom telegram-desktop
yay -S --noconfirm vivaldi vivaldi-ffmpeg-codecs vivaldi-widevine
yay -S --noconfirm youtube-music-appimage

yay -S --noconfirm qemu ebtables libvirt bridge-utils virt-manager virt-viewer
sudo mkdir -p /vms/distros && sudo chown grant:grant /vms/distros
sudo mkdir -p /vms/vm-storage && sudo chown grant:grant /vms/vm-storage
sudo usermod -aG libvirt grant
sudo systemctl enable libvirtd.service && sudo systemctl start libvirtd.service

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew tap homebrew/bundle
brew bundle
yay -S --noconfirm visual-studio-code-bin kind-bin kubectl helm docker nerd-fonts-source-code-pro
sudo usermod -aG docker grant
sudo systemctl enable docker.service && sudo systemctl start docker.service
sudo kind create cluster

git clone https://github.com/gvwalker/awscli-installer-linux awscli
./awscli/install-awscli.sh

fc-cache -f -v
sudo timedatectl set-ntp true
