#!/bin/bash

echo Cursor Themes Restored
cp -r ~/RICE/themes/.icons ~/

echo GTK Themes Restored
cp -r ~/RICE/themes/.themes ~/

echo Xorg Startup Restored
cp ~/RICE/Xorg/.xinitrc ~/

echo ZSH Config Restored
cp ~/RICE/zsh/.zshrc ~/

echo Compiz Config Restored
cp ~/RICE/compiz/Default.ini ~/.config/compiz-1/compizconfig/

echo Tint2 Config Restored
cp ~/RICE/tint2/tint2rc ~/.config/tint2/tint2rc

echo Albert Config Restored
cp ~/RICE/Albert/albert.conf ~/.config/albert/

cp ~/RICE/Dirs/user-dirs.dirs ~/.config/

cp -r ~/RICE/Themes/fonts ~/.local/share/