#!usr/bin/env bash

aur_packages=(
  anytype-bin
  betterbird-bin
  bottles
  brave-bin
  czkawka-git
  ente-auth-bin
  extension-manager
  flowtime
  fluent-reader
  frogdata
  keypunch-git
  localsend-bin
  losslesscut-bin
  modrinth-app-bin
  mousam
  onlyoffice-bin
  peazip
  protonup-qt-bin
  pycharm-community-edition-bin
  ruffle-nightly-bin
  rustdesk
  rustdesk-debug
  sublime-text-4
  ticketbooth
  tuxedo-control-center-bin
  tuxedo-drivers-dkms
  tuxguitar
  upscayl-bin
  video-downloader
  wlogout
  xnconvert
  zen-browser-bin
)

official_packages=(
  ananicy-cpp
  blanket
  bleachbit
  btop
  celluloid
  collision
  dconf-editor
  discord
  easyeffects
  fastfetch
  fretboard
  ghostty
  handbrake
  komikku
  linux-zen
  lsd
  lutris
  metadata-cleaner
  mousai
  neovim
  nvidia-dkms
  nvidia-prime
  obs-studio
  ocrfeeder
  okular
  proton-vpn-gtk-app
  steam
  syncthing
  timeshift
  tldr
  valuta
  virt-manager
  yazi
)

echo "AUR Paketleri Yükleniyor..."
for aur_package in ${aur_packages[@]}; do
  yay -S --noconfirm "$aur_package"
done

echo "Resmi Depolar Yükleniyor..."
for official__package in ${official_packages[@]}; do
  sudo pacman -S --noconfirm "$aur_package"
done
