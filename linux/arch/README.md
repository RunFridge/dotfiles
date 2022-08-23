# Arch Linux

> Configuration for Arch Linux

## Setup Guide

1. Install Yay, a helper for AUR(Arch User Repository) ([reference](https://github.com/Jguer/yay#installation))

```sh
pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

2. Install Neovim ([reference](https://github.com/neovim/neovim/wiki/Installing-Neovim#arch-linux))

```sh
yay neovim-git
```

3. Install Packer ([reference](https://github.com/wbthomason/packer.nvim#quickstart))

```sh
mkdir -p ~/.local/share/nvim/site/pack/packer/start
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
