#!/bin/bash
config(){
  config=$(echo -e "hyprland\nrofi\nnvim\nwofi" | rofi -dmenu)
  if [[ -z "$config" ]]; then
    exit 0
  fi
}
choice=$(echo -e "wifi\nbluetooth\nconfig\ntoggle\nclose all" | rofi -dmenu)
if [[ -z "$choice" ]];then
  exit 0
fi
echo "$choice"
case "$choice" in
  wifi)
    ~/.config/hypr/scripts/wifi_menu.sh
    ;;
  "close all")
    ~/.config/hypr/scripts/wifi_menu.sh
    ;;
  toggle)
    ~/.config/hypr/scripts/wifi_menu.sh
    ;;
  bluetooth)
    ~/.config/hypr/scripts/wifi_menu.sh
    ;;
  config)
    config
    ;;
  *)

    ;;
esac

