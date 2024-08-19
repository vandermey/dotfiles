#!/bin/bash

pkill -f /usr/libexec/polkit-gnome-authentication-agent-1
/usr/libexec/polkit-gnome-authentication-agent-1 &

# Start Kanshi which also starts Yambar
pkill -f kanshi
kanshi &

pkill -f swaybg
swaybg -m fill -i ~/.dotfiles/wallpaper.png &

pkill -f dunst
dunst &

pkill -f wlsunset
wlsunset -l 52.09 -L 5.12 &

pkill -f swayidle
swayidle -w \
	timeout 300 'swaylock -f -i ~/.dotfiles/wallpaper.png' \
	timeout 600 'wlopm --off \*;swaylock -F -i ~/.dotfiles/wallpaper.png' resume 'wlopm --on \*' \
	before-sleep 'swaylock -f -i ~/.dotfiles/wallpaper.png' &
