#!/usr/bin/bash

echo "Uninstalling Arc-Dwm"
sudo rm /usr/share/xsessions/dwm.desktop
sudo make uninstall -C dwm-src/
sudo make uninstall -C slstatus/
sudo make uninstall -C st-src/

echo "################################################################"
echo "####        Arc-Dwm has been completely removed       ####"
echo "################################################################"

echo "Uninstalling Fonts from Arch Linux Repo"
sudo pacman -R awesome-terminal-fonts ttf-dejavu --noconfirm --needed

echo "################################################################"
echo "####        Fonts from Arch Linux repo have been uninstalled        ####"
echo "################################################################"

echo "Uninstalling Dependencies from Arch Linux repo"
sudo pacman -R dmenu gsimplecaln rofi xorg-xprop xorg-xset xorg-xsetroot --noconfirm --needed

echo "################################################################"
echo "####        Dependencies from Arch Linux repo have been uinstalled        ####"
echo "################################################################"
