#!/usr/bin/bash
sudo rm /usr/share/xsessions/dwm.desktop
sudo make uninstall -C dwm-src/
sudo pacman -R awesome-terminal-fonts gsimplecaln rofi xorg-xprop xorg-xset xorg-xsetroot
