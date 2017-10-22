#!/bin/bash

echo Cursor Themes Backed Up
cp -r ~/.icons ~/RICE/Themes/

echo GTK Themes Backed Up
cp -r ~/.themes ~/RICE/Themes/

echo Xorg Startup Backed Up
cp ~/.xinitrc ~/RICE/Configs/Xorg/

echo ZSH Config Backed Up
cp ~/.zshrc ~/RICE/Configs/zsh/

echo Compiz Config Backed Up
cp ~/.config/compiz-1/compizconfig/Default.ini ~/RICE/Configs/compiz/

echo Tint2 Theme Backed Up
cp ~/.config/tint2/tint2rc ~/RICE/Configs/tint2/

echo Albert Config Backed Up
cp ~/.config/albert/albert.conf ~/RICE/Configs/Albert/

echo Fonts Backed Up
cp -r ~/.local/share/fonts ~/RICE/Themes/fonts

echo Deluge Config Backed Up
cp -r ~/.config/deluge/* ~/RICE/Configs/Deluge

echo Conky Config Backed Up
cp -r ~/.conky ~/RICE/Configs/conky