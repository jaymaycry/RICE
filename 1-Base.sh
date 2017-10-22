#!/bin/bash

echo Setting Locale
localedef -f UTF-8 -i en_US en_US.UTF-8

echo Installing Base Programs
sudo pacman -S xorg-xrandr vlc feh xorg-xinit xarchiver nemo chromium xfce4-terminal mousepad conky conky-manager libreoffice-fresh guake gparted net-tools tint2 git deluge

echo Installing Codecs
sudo pacman -S a52dec x264 x265 faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer gst-plugins-ugly gst-plugins-base gst-plugins-bad gst-libav

echo Installing Video Drivers
sudo pacman -S xf86-video-vesa xf86-video-ati mesa mesa-libgl lib32-mesa lib32-mesa-libgl

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si

echo Installing AUR Packages
yaourt -S albert compiz emerald xarchiver

echo Updating System
sudo pacman -Syu

echo Creating Mount Folders Media, Media2, Data
sudo mkdir /mnt/Media
sudo mkdir /mnt/Media2
sudo mkdir /mnt/Data

echo Setting Up Network
sudo pacman -S ifplugd
#replace enp3s0 with the identifier of your network interface.
sudo systemctl enable netctl-ifplugd@enp0s31f6.service
sudo systemctl start netctl-ifplugd@enp0s31f6.service
