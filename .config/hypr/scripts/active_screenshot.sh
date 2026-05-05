#!/bin/bash

# Folder (ensure it exists)
DIR="$HOME/Pictures"
mkdir -p "$DIR"

FILE="$DIR/screenshot-$(date +%Y%m%d-%H%M%S).png"

# Get geometry
GEOM=$(hyprctl -j activewindow | jq -r '.at[0] as $x | .at[1] as $y | .size[0] as $w | .size[1] as $h | "\($x),\($y) \($w)x\($h)"')

# Take screenshot
grim -g "$GEOM" "$FILE"

# Copy to clipboard
wl-copy < "$FILE"

# Notification
notify-send -u normal "📸 Screenshot saved" "$FILE"
