#!/bin/bash

# ---------- Dott Files ---------- 

echo ---------- Removing Old .xinitrc File ---------- 
rm ~/.xinitrc
echo 
echo ---------- Copying New .xinitrc ---------- 
cp ~/rice/Xorg/.xinitrc ~/
# ---------- Copy ZSH config ---------- 
echo 
echo  ---------- Removing Old ZSH Configs ---------- 
rm ~/.zshrc
echo 
echo ---------- Copying New zshrc Config To Home ---------- 
cp ~/rice/zsh/.zshrc ~/
echo

echo ---------- Removing Old Compiz Config ---------- 
rm ~/.config/compiz-1/compizconfig/Default.ini
echo

echo ---------- Copying New Compiz Config ---------- 
cp ~/rice/compiz/Default.ini ~/.config/compiz-1/compizconfig/
echo

echo DONE! Move To 4