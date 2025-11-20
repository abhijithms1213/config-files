#!/bin/bash

WALLPAPER_DIR="/home/cj/Downloads/Wallpapers"
CACHE_DIR="$HOME/.cache/wallpaper-thumbs"
CURRENT_WALLPAPER="$HOME/.cache/current_wallpaper"
CURRENT_WALLPAPER_HDMI="$HOME/.cache/current_wallpaper_hdmi"

# Ensure cache directory exists
mkdir -p "$CACHE_DIR"

# Ensure swww daemon is running
swww query || swww-daemon

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
choice=$(echo -en "$MENU_LIST" | rofi -dmenu \
    -i \
    -p "Choose Wallpaper" \
    -theme-str 'window {width: 800px; height: 600px;}' \
    -theme-str 'listview {columns: 4; lines: 3;}' \
    -theme-str 'element {padding: 10px; orientation: vertical;}' \
    -theme-str 'element-icon {size: 150px;}' \
    -theme-str 'element-text {horizontal-align: 0.5;}' \
    -show-icons)

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
swww img "$TARGET" --transition-fps 30 --transition-type any --transition-duration 3 -o "$1"

# Save current wallpaper path for persistence
if [[ "$1" == "eDP-1" ]]; then
  echo "$TARGET" > "$CURRENT_WALLPAPER"
elif [[ "$1" == "HDMI-A-1" ]]; then
  echo "$TARGET" > "${CURRENT_WALLPAPER_HDMI}"
fi

# Optional: Send notification
notify-send "Wallpaper Changed" "Applied: $(basename "$TARGET")" -i "$TARGET" -t 3000
