#!/bin/bash

cd $HOME

echo "Installing PARU..."
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

echo "Installing Arch packages..."
paru -Syu
paru -S steam visual-studio-code-bin vesktop-bin nodejs pyenv sddm-theme-tokyo-night zsh nemo protontricks zoom gimp inkscape

echo "Running setup scripts..."
corepack enable
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"