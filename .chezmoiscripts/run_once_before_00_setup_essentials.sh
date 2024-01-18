#!/usr/bin/env bash
#
# This script will be run only once in a chezmoi install
#
# This will install base-devel

if command -v -- "pacman" > /dev/null 2>&1; then
  echo "Found pacman, assuming to be Arch Linux"
  echo "Installing essential packages..."
  sudo pacman -Syu --noconfirm --needed base-devel git curl wget zip unzip tar fish

  cd /tmp
  echo "Installing paru aur manager"
  git clone https://aur.archlinux.org/paru-bin.git
  cd paru-bin && makepkg -si

  cd ..
  echo "Installing pacdef"
  git clone https://aur.archlinux.org/pacdef.git
  cd pacdef && makepkg -si
fi
