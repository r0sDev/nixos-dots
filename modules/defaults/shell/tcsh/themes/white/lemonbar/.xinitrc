#!/bin/sh

xrdb -merge ~/.Xresources
xset s off
xset -dpms
xset s noblank

while true; do
    bat=$(cat /sys/class/power_supply/BAT0/capacity)
    bat_status=$(cat /sys/class/power_supply/BAT0/status)

    if [ -n "$bat" ]; then
        case "$bat_status" in
            Charging) bat_icon="+" ;;
            *) bat_icon="" ;;
        esac
        bat_str="${bat}%${bat_icon}"
    else
        bat_str="N/A"
    fi

    ip=$(ip route get 1.1.1.1 2>/dev/null | awk '{print $7; exit}')
    [ -z "$ip" ] && ip="disconnected"

    date_str=$(date '+%H:%M')

    echo "%{c}${ip}  ${bat_str}  ${date_str}"
 done | lemonbar -p -f "Siji:size=10" -B "#ffffff" -F "#000000" -g 200x20+858-100 -b &

 killall feh 
 feh --bg-fill ~/media/wall/black-solid-color.png &

 exec bspwm

