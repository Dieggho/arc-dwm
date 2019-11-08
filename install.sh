#!/usr/bin/bash
make -C dwm-src/
sudo make install -C dwm-src/
sudo mv dwm.desktop /usr/share/xsessions/
cp -r .dwm/ ~/
chmod +x ~/.dwm/*
