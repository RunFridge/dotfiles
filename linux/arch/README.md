# Arch Linux

> Arch 리눅스 설정 파일 모음입니다.

## Setup Guide

1. AUR(Arch User Repository) 관리 툴 Yay 설치 ([참조](https://github.com/Jguer/yay#installation))

```sh
pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

2. Neovim 설치 ([참조](https://github.com/neovim/neovim/wiki/Installing-Neovim#arch-linux))

```sh
yay neovim-git
```

3. Packer 설치 ([참조](https://github.com/wbthomason/packer.nvim#quickstart))

```sh
mkdir -p ~/.local/share/nvim/site/pack/packer/start
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
