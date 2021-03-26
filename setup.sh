#!/bin/bash

yay -S --noconfirm bmenu bpytop neovim alacritty exa unzip starship-bin

yay -S --noconfirm teams zoom telegram-desktop
yay -S --noconfirm google-chrome
yay -S --noconfirm youtube-music-appimage

yay -S --noconfirm qemu ebtables libvirt bridge-utils virt-manager virt-viewer
sudo mkdir -p /vms/distros && sudo chown grant:grant /vms/distros
sudo mkdir -p /vms/vm-storage && sudo chown grant:grant /vms/vm-storage
sudo usermod -aG libvirt grant
sudo systemctl enable libvirtd.service && sudo systemctl start libvirtd.service

yay -S --noconfirm github-cli-git terraform tflint tfsec
yay -S --noconfirm visual-studio-code-bin nerd-fonts-source-code-pro
git clone https://github.com/gvwalker/awscli-installer-linux awscli
sudo ./awscli/install-cli
fc-cache -f -v
sudo timedatectl set-ntp true

yay -S --noconfirm kind-bin kubectl helm docker
sudo usermod -aG docker grant
sudo systemctl enable docker.service && sudo systemctl start docker.service
sudo kind create cluster
