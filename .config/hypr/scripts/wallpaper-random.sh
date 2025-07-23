#!/bin/bash

WALLPAPER_DIRECTORY=~/Downloads/Wallpapers
# Select two random wallpapers
WALLPAPER_1=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)
WALLPAPER_2=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

# Preload both wallpapers for efficiency
hyprctl hyprpaper preload "$WALLPAPER_1"
hyprctl hyprpaper preload "$WALLPAPER_2"

# Assign wallpapers to monitors (replace with your actual monitor names if different)
hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"

sleep 1

# Unload unused wallpapers
hyprctl hyprpaper unload unused
