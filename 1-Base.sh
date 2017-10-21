#!/bin/bash

git clone https://github.com/UrbanNinja559/RICE.git ~/
# ----------  File manager ---------- 
sudo pacman -S nautilus

# ---------- Web browser ---------- 
sudo pacman -S chromium

# ---------- Terminal ---------- 
sudo pacman -S xfce4-terminal

# ---------- Notepad ---------- 
sudo pacman -S mousepad

# ---------- Install Xorg ---------- 
sudo pacman -S xorg-xinit
sudo pacman -S xorg-xrandr

#Install Window Manager
yaourt -S emerald
yaourt -S compiz
sudo pacman -S net-tools
sudo pacman -S git
sudo pacman -S deluge
sudo pacman -S tint2
sudo pacman -S conky conky-manager

yaourt -S albert

sudo pacman -S libreoffice-fresh

sudo pacman -S gparted
sudo pacman -S guake

yaourt -S Xarchiver

sudo pacman -S feh
sudo pacman -S vlc

#codecs
sudo pacman -S a52dec x264 x265 faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer gst-plugins-ugly gst-plugins-base gst-plugins-bad gst-libav
