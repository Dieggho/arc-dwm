#!/bin/bash

pkill feh
pkill xset
pkill /usr/bin/python
pkill udiskie
pkill slstatus


nitrogen --restore &
xset -dpms s off &
udiskie &
slstatus &
