#!/bin/sh
cp ~/kali-live-setup/bash_aliases ~/.bash_aliases
cp ~/kali-live-setup/vimrc ~/.vimrc
source ~/.bashrc

# set keyboard layout
setxkbmap de &&
gsettings set org.gnome.desktop.sound event-sounds false &&

# bind ctrl+alt+t to new terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'new terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>t'

output_device = xrandr --current | grep "Virtual" | cut -f1 -d ' '

# set custom resolution
xrandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync &&
xrandr --addmode $output_device 2560x1440_60.00 &&
xrandr --output $output_device --mode "2560x1440_60.00"
