#!/bin/bash

path='/home/cj/Documents/projects/scripts/theme-switch-arch/settings.txt'
HDMI_Wall=$(sed '3!d' $path)
eDP_Wall=$(sed '2!d' $path)
notify-send "refreshed wallpapers"
swww img -o HDMI-A-1 "$HDMI_Wall"
swww img -o eDP-1 "$eDP_Wall" 
   # sed -i '2c\'${wall_eDP}'' ~/Documents/projects/scripts/theme-switch-arch/settings.txt
