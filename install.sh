#!/usr/bin/bash
make
sudo make install
cp -r .dwm/ ~/
chmod +x ~/.dwm/*
