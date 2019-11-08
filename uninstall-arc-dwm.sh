#!/usr/bin/bash

echo "Uninstalling Dwm"
sudo rm /usr/share/xsessions/dwm.desktop
sudo make uninstall -C dwm-src/
sudo make uninstall -C slstatus/
sudo make uninstall -C st-src/

echo "################################################################"
echo "####       Dwm has been completely removed       ####"
echo "################################################################"
