#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

source "packages.conf"

# -- AUR Paketlerini yükler --
echo "AUR Paketleri Yükleniyor..."
for aur_package in "${aur_packages[@]}"; do
  yay -S --noconfirm "$aur_package"
done

# -- Resmi Paketleri yükler
echo "Resmi Depolar Yükleniyor..."
for official_package in "${official_packages[@]}"; do
  sudo pacman -S --needed --noconfirm "$official_package"
done

# -- pipx yolunu bulur --
export PATH="$HOME/.local/bin:$PATH"

# -- pipx yükleme --
pipx install gnome-extensions-cli --system-site-packages

# -- Uzantıları yükler --
for ext in "${extensions[@]}"; do
    if ! gext list | grep -Fxq "$ext"; then
        echo "Extension yükleniyor: $ext"
        gext install "$ext"
        echo "$ext kuruldu."
    else
        echo "Extension zaten kurulu: $ext"
    fi
done

stow nvim
stow ghostty
stow zshrc
stow tmux
stow fastfetch
stow vimrc
