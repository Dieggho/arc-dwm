#!/usr/bin/bash

sudo pacman -S awesome-terminal-fonts gsimplecaln rofi xorg-xprop xorg-xset xorg-xsetroot
make -C dwm-src/
sudo make install -C dwm-src/
sudo mv dwm.desktop /usr/share/xsessions/
cp -r .dwm/ ~/
chmod +x ~/.dwm/*
