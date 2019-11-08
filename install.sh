#!/usr/bin/bash
make -C dwm-src/
sudo make install -C dwm-src/
cp -r .dwm/ ~/
chmod +x ~/.dwm/*
