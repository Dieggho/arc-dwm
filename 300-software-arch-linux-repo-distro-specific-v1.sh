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

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/

echo "DESKTOP SPECIFIC APPLICATIONS"

sudo pacman -S arandr --noconfirm --needed
sudo pacman -S dmenu  --noconfirm --needed
sudo pacman -S dunst --noconfirm --needed
sudo pacman -S feh --noconfirm --needed
sudo pacman -S lxtask --noconfirm --needed
sudo pacman -S rofi --noconfirm --needed
sudo pacman -S slock --noconfirm --needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S rox --noconfirm --needed
sudo pacman -S udiskie --noconfirm --needed
sudo pacman -S xorg-xprop --noconfirm --needed
sudo pacman -S xorg-xset --noconfirm --needed
sudo pacman -S xorg-xsetroot --noconfirm --needed


echo "################################################################"
echo "####    Software from Arch Linux Repository installed     ######"
echo "################################################################"
