#!/bin/sh

xrdb -merge ~/.Xresources
xset s off
xset -dpms
xset s noblank

while true; do
  cpu=$(awk '{u=$2+$4; t=$2+$4+$5} NR==1{u1=u; t1=t} NR==2{print int((u-u1)/(t-t1)*100)"%"}' <(grep 'cpu ' /proc/stat) <(sleep 1; grep 'cpu ' /proc/stat))
  ram=$(free -h | awk '/^Mem:/ {print $3}')
  bat=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)
  bat_status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)
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

  # workspaces
  ws=$(bspc query -D --names | tr '\n' ' ')
  focused=$(bspc query -D -d focused --names)
  ws_str=""
  for w in $ws; do
    if [ "$w" = "$focused" ]; then
      ws_str="${ws_str}[${w}] "
    else
      ws_str="${ws_str} ${w}  "
    fi
  done

  echo "%{l}${ws_str}%{r} ${ip}  ${bat_str}  ${ram}  ${cpu}  ${date_str} "
done | lemonbar -p -f "cozetteVector:size=12" -B "#000000" -F "#ffffff" -g x20+0-0 -b &


killall feh
feh --bg-fill ~/media/wall/galen-crout.jpg &
exec bspwm
