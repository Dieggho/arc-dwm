#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"

sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settings
sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git 
#installing desktop environment
#enabling displaymanager or login manager
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo "Installing dwm"
make -C dwm-src/
sudo make install -C dwm-src/
sudo mv dwm.desktop /usr/share/xsessions/
cp -r .dwm/ ~/
chmod +x ~/.dwm/*

make -C st-src/
make -C slstatus/
sudo make install -C st-src/
sudo make install -C slstatus/
cp st-src/st.desktop ~/.local/share/applications/

echo "################################################################"
echo "####        Dwm has been successfully installed        ####"
echo "################################################################"

#Remove anything you do not like from the installed applications

#sudo pacman -R ...
