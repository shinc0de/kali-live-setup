#!/bin/bash
# set keyboard layout
setxkbmap de 

# use this command to get the settings for your 
# monitor resolution 
# cvt 2560 1440

# set custom resolution
xandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync
xrandr --addmode Virtual-1 2560x1440_60.00
xrandr --output Virtual-1 --mode "2560x1440_60.00"
