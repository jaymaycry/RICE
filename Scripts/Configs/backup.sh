#!/bin/bash

echo Cursor Themes Backed Up
cp -r ~/.icons ~/rice/themes/

echo GTK Themes Backed Up
cp -r ~/.themes ~/rice/themes/

echo Xorg Startup Backed Up
cp ~/.xinitrc ~/rice/Xorg/

echo ZSH Config Backed Up
cp ~/.zshrc ~/rice/zsh/

echo Compiz Config Backed Up
cp ~/.config/compiz-1/compizconfig/Default.ini ~/rice/compiz/

echo Tint2 Theme Backed Up
cp ~/.config/tint2/tint2rc ~/rice/tint2/

echo Albert Config Backed Up
cp ~/.config/albert/albert.conf ~/rice/Albert/