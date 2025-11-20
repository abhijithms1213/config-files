#!/usr/bin/env bash

notify-send "loading Keybindngs"
set -uo pipefail

HYPR_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/hypr"

# Collect all bind lines from every config file under ~/.config/hypr
readarray -t LINES < <(
  grep -R -h -E '^\s*bind[a-z]*\s*=' "$HYPR_DIR" 2>/dev/null |
    sed -E 's/#.*$//' |
    sed -E 's/^\s+|\s+$//g' |
    sed '/^$/d'
)

if ((${#LINES[@]} == 0)); then
  rofi -e "No Hyprland binds found under $HYPR_DIR"
  exit 1
fi

DISPLAY_ROWS=()
DISPATCH_CMDS=()

# Parse binds
while IFS= read -r line; do
  clean=$(echo "$line" | sed -E 's/^\s*bind[a-z]*\s*=\s*//' | sed -E 's/ *, */,/g')
  mod=$(echo "$clean" | cut -d, -f1)
  key=$(echo "$clean" | cut -d, -f2)
  action=$(echo "$clean" | cut -d, -f3)
  args=$(echo "$clean" | cut -d, -f4-)

  # For display
  row="<b>${mod} + ${key}</b>  <i>${action}</i>"
  [ -n "$args" ] && row+="  <span foreground='gray'>${args}</span>"

  DISPLAY_ROWS+=("$row")
  DISPATCH_CMDS+=("${action},${args}")
done < <(printf '%s\n' "${LINES[@]}")

# Show menu
CHOICE=$(printf '%s\n' "${DISPLAY_ROWS[@]}" | rofi -dmenu -i -markup-rows -p "Hyprland Keybinds:")
[ -z "$CHOICE" ] && exit 0

# Find the index of the chosen row
for i in "${!DISPLAY_ROWS[@]}"; do
  if [[ "${DISPLAY_ROWS[$i]}" == "$CHOICE" ]]; then
    DISP="${DISPATCH_CMDS[$i]}"
    break
  fi
done

# Execute the bind
if [[ "$DISP" == exec,* ]]; then
  CMD="${DISP#exec,}"
  if [[ "$CMD" == *lock* ]]; then
    sleep 1
  fi
  eval "$CMD"
else
  ACTION="${DISP%%,*}"
  REST="${DISP#*,}"
  if [[ "$ACTION" == "$REST" ]]; then
    hyprctl dispatch "$ACTION"
  else
    REST="${REST//,/ }"
    hyprctl dispatch "$ACTION" $REST
  fi
fi
