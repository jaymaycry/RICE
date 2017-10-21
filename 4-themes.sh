#!/bin/bash

rm -rf ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

yaourt -S paper-icon-theme

yaourt -S gtk-theme-numix-solarized-git

rm -rf ~/.icons
mkdir ~/.icons
cp -r ~/rice/themes/.icons/* ~/.icons

rm -rf ~/.themes
mkdir ~/.themes
cp -r ~/rice/themes/.themes/* ~/.themes

sudo pacman -Syu ttf-roboto

sudo pacman -Syu lxappearance

lxappearance