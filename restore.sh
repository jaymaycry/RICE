#!/bin/bash

echo Cursor Themes Restored
cp -r ~/rice/themes/.icons ~/

echo GTK Themes Restored
cp -r ~/rice/themes/.themes ~/

echo Xorg Startup Restored
cp ~/rice/Xorg/.xinitrc ~/

echo ZSH Config Restored
cp ~/rice/zsh/.zshrc ~/

echo Compiz Config Restored
cp ~/rice/compiz/Default.ini ~/.config/compiz-1/compizconfig/

echo Tint2 Config Restored
cp ~/rice/tint2/tint2rc ~/.config/tint2/tint2rc

echo Albert Config Restored
cp ~/rice/Albert/albert.conf ~/.config/albert/