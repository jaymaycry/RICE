#!/bin/bash

# ---------- Dott Files ---------- 

echo ---------- Removing Old .xinitrc File ---------- 
rm ~/.xinitrc
echo 
echo ---------- Copying New .xinitrc ---------- 
cp ~/RICE/Xorg/.xinitrc ~/
# ---------- Copy ZSH config ---------- 
echo 
echo  ---------- Removing Old ZSH Configs ---------- 
rm ~/.zshrc
echo 
echo ---------- Copying New zshrc Config To Home ---------- 
cp ~/RICE/zsh/.zshrc ~/
echo

echo ---------- Removing Old Compiz Config ---------- 
rm ~/.config/compiz-1/compizconfig/Default.ini
echo

echo ---------- Copying New Compiz Config ---------- 
cp ~/RICE/compiz/Default.ini ~/.config/compiz-1/compizconfig/
echo

rm ~/home/subnet/.config/tint2/tint2rc
cp ~/RICE/tint2/tint2rc ~/.config/tint2

cp ~/RICE/Albert/albert.conf ~/.config/albert/

# Set xfce4-terminal As Nemo Default
gsettings set org.cinnamon.desktop.default-applications.terminal exec xfce4-terminal

cp ~/RICE/Dirs/user-dirs.dirs ~/.config/

cp -r ~/RICE/Themes/fonts ~/.local/share/

echo DONE! Move To 4