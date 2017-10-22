#!/bin/bash

echo Cursor Themes Backed Up
cp -r ~/.icons ~/RICE/themes/

echo GTK Themes Backed Up
cp -r ~/.themes ~/RICE/themes/

echo Xorg Startup Backed Up
cp ~/.xinitrc ~/RICE/Xorg/

echo ZSH Config Backed Up
cp ~/.zshrc ~/RICE/zsh/

echo Compiz Config Backed Up
cp ~/.config/compiz-1/compizconfig/Default.ini ~/RICE/compiz/

echo Tint2 Theme Backed Up
cp ~/.config/tint2/tint2rc ~/RICE/tint2/

echo Albert Config Backed Up
cp ~/.config/albert/albert.conf ~/RICE/Albert/

cp -r ~/.local/share/fonts ~/RICE/Themes/fonts