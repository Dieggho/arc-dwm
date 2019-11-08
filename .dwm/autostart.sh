#!/bin/bash
 
###########################################################
# This Dwm was patched with "autostart" and "autorestart" to be able to have an                     #
# /user/share/xsession/dwm.desktop archive and be able to be started from a display manager  #
# for this reason it's necessary to kill each process before actually start it                                   #
# if you don't, the "autorestart" feature will run the autostart.sh script and                                #
# will eventually start the following processes all over again.                                                       #
###########################################################

pkill xset
pkill udiskie
pkill slstatus

/home/$USER/.fehbg &
xset -dpms s off &
udiskie &
slstatus &
