#!/bin/bash

INFO=$(cat <<EOF
󰍛 SYSTEM INFORMATION

Hostname: $(hostname)
Kernel: $(uname -r)
OS: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
Uptime: $(uptime -p)
CPU: $(grep "model name" /proc/cpuinfo | head -1 | cut -d: -f2)
Cores: $(nproc)
GPU: $(lspci | grep -i 'vga' | cut -d: -f3)
RAM: $(free -h | awk '/Mem:/ {print $3 "/" $2}')
Disk: $(df -h / | awk '/\// {print $3 "/" $2}')
Battery: $(upower -i $(upower -e | grep BAT) | grep percentage | awk '{print $2}')
Temperature: $(cat /sys/class/thermal/thermal_zone0/temp | awk '{print $1/1000 "°C"}')

EOF
)

# Show in a beautiful popup using wofi
echo "$INFO" | wofi --dmenu --width 450 --height 400 --prompt "System Info"
