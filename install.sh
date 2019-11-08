#!/usr/bin/bash

echo "Installing fonts from Arch Linux repo"

sudo pacman -S awesome-terminal-fonts ttf-dejavu --noconfirm --needed

echo "################################################################"
echo "####        Fonts from Arch Linux repo have been installed        ####"
echo "################################################################"

echo "Installing dependencies from Arch Linux repo"
sudo pacman -S gsimplecaln rofi xorg-xprop xorg-xset xorg-xsetroot --noconfirm --needed

echo "################################################################"
echo "####        Dependencies from Arch Linux repo have been installed        ####"
echo "################################################################"

echo "Installing dwm"
make -C dwm-src/
sudo make install -C dwm-src/
sudo mv dwm.desktop /usr/share/xsessions/
cp -r .dwm/ ~/
chmod +x ~/.dwm/*

echo "################################################################"
echo "####        Dwm has been installed        ####"
echo "################################################################"

echo echo "Installing st and slstatus"
make -C st-src/
make -C slstatus/
sudo make install -C st-src/
sudo make install -C slstatus/
cp st-src/st.desktop ~/.local/share/applications/

echo "################################################################"
echo "####        Arc-Dwm has been successfully installed        ####"
echo "################################################################"
