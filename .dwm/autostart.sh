#!/bin/bash

pkill feh
pkill xset
pkill /usr/bin/python
pkill udiskie
pkill slstatus


/home/$USER/.fehbg &
xset -dpms s off &
udiskie &
slstatus &
