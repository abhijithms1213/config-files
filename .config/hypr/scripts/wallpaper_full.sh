#!/bin/bash

WALLPAPER_DIR="/home/cj/Downloads/Wallpapers"
CACHE_DIR="$HOME/.cache/wallpaper-thumbs"
CURRENT_WALLPAPER="$HOME/.cache/current_wallpaper"
CURRENT_WALLPAPER_HDMI="$HOME/.cache/current_wallpaper_hdmi"

# taking monitor
whichMonitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true)|.name')

# Ensure cache directory exists
mkdir -p "$CACHE_DIR"

# Ensure swww daemon is running
awww query || awww-daemon

# Get list of images
mapfile -t IMAGES < <(find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) | sort)

# Generate thumbnails if they don't exist
for img in "${IMAGES[@]}"; do
    basename=$(basename "$img")
    thumb="$CACHE_DIR/${basename%.*}.jpg"
    
    if [[ ! -f "$thumb" ]]; then
        convert "$img" -resize 200x200^ -gravity center -extent 200x200 "$thumb" 2>/dev/null
    fi
done

# Create menu with thumbnails
MENU_LIST=""
for img in "${IMAGES[@]}"; do
    basename=$(basename "$img")
    thumb="$CACHE_DIR/${basename%.*}.jpg"
    MENU_LIST+="$basename\x00icon\x1f$thumb\n"
done
MENU_LIST+="🎲 Random\n"

# Rofi command with image preview
if [[ "${whichMonitor}" = "eDP-1" ]]; then
  choice=$(echo -en "$MENU_LIST" | rofi -dmenu \
    -i \
    -p "Choose Wallpaper" \
    -show-icons \
    -theme ~/.config/rofi/themesMine/wallpaper_template.rasi \
    -theme-str 'window {height: 600;}')
else
  choice=$(echo -en "$MENU_LIST" | rofi -dmenu \
    -i \
    -p "Choose Wallpaper" \
    -show-icons \
    -theme ~/.config/rofi/themesMine/wallpaper_template.rasi \
    -theme-str 'window {height: 980;}')
fi

# If user closes rofi → exit silently
[[ -z "$choice" ]] && exit 0

# If random selected
if [[ "$choice" == "🎲 Random" ]]; then
    RANDOM_IMG="${IMAGES[$RANDOM % ${#IMAGES[@]}]}"
    TARGET="$RANDOM_IMG"
else
    # Match selected wallpaper
    TARGET="$WALLPAPER_DIR/$choice"
fi

# Apply wallpaper
awww img "$TARGET" -o "${whichMonitor}" -t random

# Save current wallpaper path for persistence
if [[ "${whichMonitor}" == "eDP-1" ]]; then
  echo "$TARGET" > "$CURRENT_WALLPAPER"
elif [[ "${whichMonitor}" == "HDMI-A-1" ]]; then
  echo "$TARGET" > "${CURRENT_WALLPAPER_HDMI}"
fi

# Optional: Send notification
notify-send "Wallpaper Changed" "Applied: $(basename "$TARGET")" -i "$TARGET" -t 3000
