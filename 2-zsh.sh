#!/bin/bash

echo ---------- Removing Old .oh-my-zsh Folder ----------
rm -rf ~/.oh-my-zsh
echo 

echo ---------- Removing Old .zplug Folder ----------
rm -rf ~/.zplug
echo 

echo ---------- Installing ZSH ----------
sudo pacman -S zsh
echo 

echo ---------- Installing OHMYZSH ----------
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"