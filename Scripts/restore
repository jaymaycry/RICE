#!/bin/bash

echo Cursor Themes Restored
cp -r ~/RICE/Themes/.icons ~/

echo GTK Themes Restored
cp -r ~/RICE/Themes/.themes ~/

echo Xorg Startup Restored
cp ~/RICE/Configs/Xorg/.xinitrc ~/

echo ZSH Config Restored
cp ~/RICE/Configs/zsh/.zshrc ~/

echo Compiz Config Restored
cp ~/RICE/Configs/compiz/Default.ini ~/.config/compiz-1/compizconfig/

echo Tint2 Config Restored
cp ~/RICE/Configs/tint2/tint2rc ~/.config/tint2/tint2rc

echo Albert Config Restored
cp ~/RICE/Configs/Albert/albert.conf ~/.config/albert/

echo User Dirs Restored
cp ~/RICE/Configs/Dirs/user-dirs.dirs ~/.config/

echo Fonts Restored
cp -r ~/RICE/Themes/fonts ~/.local/share/

echo Deluge Config Restored
rm -rf ~/.config/deluge
cp -r ~/RICE/Configs/Deluge ~/.config/deluge

echo Conky Config Restored
rm -rf ~/.conky
cp -r ~/RICE/Configs/conky/.conky ~/

echo Set xfce4-terminal As Nemo Default
gsettings set org.cinnamon.desktop.default-applications.terminal exec xfce4-terminal

echo DONE!