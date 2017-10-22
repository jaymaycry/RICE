#!/bin/bash

echo Installing Base Programs
sudo pacman -S xorg-xrandr vlc feh xorg-xinit xarchiver nemo chromium xfce4-terminal mousepad conky conky-manager libreoffice-fresh guake gparted net-tools tint2 git deluge

echo Installing Codecs
sudo pacman -S a52dec x264 x265 faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer gst-plugins-ugly gst-plugins-base gst-plugins-bad gst-libav

echo Installing Video Drivers
sudo pacman -S xf86-video-vesa xf86-video-ati mesa mesa-libgl lib32-mesa lib32-mesa-libgl

echo Installing AUR Packages
yaourt -S albert compiz emerald xarchiver

echo Updating System
sudo pacman -Syu

echo Creating Mount Folders Media, Media2, Data
sudo mkdir /mnt/Media
sudo mkdir /mnt/Media2
sudo mkdir /mnt/Data
