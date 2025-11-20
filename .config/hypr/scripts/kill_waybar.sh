if pgrep -x "waybar" > /dev/null ; then
  killall waybar
  notify-send "waybar killed"
else
  waybar &
  notify-send "waybar started"
fi
