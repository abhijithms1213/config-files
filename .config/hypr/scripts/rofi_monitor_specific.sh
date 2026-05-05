performAction(){
  if [[ "$selected" == "laptop Only" ]]; then
    notify-send "mode: Laptop only"
    cp ~/.config/waybar/configBakeDPOnly ~/.config/waybar/config
    pkill waybar
    waybar &
  elif [[ "$selected" == "HDMI only" ]];then
    notify-send "switched to external monitor mode"
    cp ~/.config/waybar/configBakHDMIOnly ~/.config/waybar/config
    pkill waybar
    waybar &
  elif [[ "$selected" == "All monitors" ]];then
    notify-send "mode: all monitors"
    cp ~/.config/waybar/configBakAll ~/.config/waybar/config
    pkill waybar
    waybar &
  fi
}
 # rofidmenu=$(rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 180px; height: 800px;}' -theme-str 'mainbox {children: [ "message", "listview" ];}' \ -theme-str 'listview {columns: 1; lines: 1;}' -dmenu -p 'Confirmation' -theme ~/.config/rofi/themesMine/launch_app_theme.rasi)
selected=$(echo -e "laptop Only\nHDMI only\nAll monitors" | rofi -dmenu -p 'Confirmation')
performAction "$selected"
