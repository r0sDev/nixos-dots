#!/usr/bin/env bash

WALL_DIA_1="/home/r0s/media/wall/0355.jpg"
WALL_DIA_2="/home/r0s/media/wall/0356.jpg"
WALL_NOCHE_1="/home/r0s/media/wall/monocr_build.jpg"
WALL_NOCHE_2="/home/r0s/media/wall/galen-crout.jpg"

echo "hi"
read -p "do you have a monitor? " response
case $response in
    yes|y|si)
             xrandr --output HDMI-1 --mode 1366x768 --rate 60.00 --left-of eDP-1
             ;;
    *)
        echo "ok"
        ;;
esac

read -p "select wall: " selectedWall
case $selectedWall in
    one)
    echo "selected wall 1"
    feh --bg-fill "$WALL_DIA_1"
    ;;
    two)
    echo "selected wall 2"
    feh --bg-fill "$WALL_DIA_2"
    ;;
    three)
    echo "selected wall 3"
    feh --bg-fill "$WALL_NOCHE_1"
    ;;
    four)
    echo "selected wall 4"
    feh --bg-fill "$WALL_NOCHE_2"
    ;;
    *)
    echo "if u just want all dark ^C"
    ~/dev/desktop/walls/set-wall.sh
    ;;
esac


