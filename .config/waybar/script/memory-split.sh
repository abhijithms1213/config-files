#!/bin/bash

# Get used RAM in GB with 1 decimal
USED=$(free -h --mega | awk '/Mem:/ {printf "%.1f", $3/1024}')

# Split each character into its own line
VERTICAL=$(echo "$USED" | sed 's/./&\n/g')

# Output for Waybar
echo "{\"text\": \"$VERTICAL\"}"
