# if [[ "$1" -eq 1 ]]; then
#   killall hypridle
#   notify-send "killed hypridle"
# else
#   hypridle
#   notify-send "restarted hypridle"
# fi

if pgrep -x "hypridle" > /dev/null; then
    killall hypridle
    notify-send "Hypridle stopped"
else
    hypridle &
    notify-send "Hypridle started"
fi
