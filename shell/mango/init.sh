#!/usr/bin/env bash

WALL_DIA_1="/home/r0s/media/wall/0355.jpg"
WALL_DIA_2="/home/r0s/media/wall/0356.jpg"
WALL_NOCHE_1="/home/r0s/media/wall/monocr_build.jpg"
WALL_NOCHE_2="/home/r0s/media/wall/galen-crout.jpg"

echo "hi"
read -p "select wall: " selectedWall
case $selectedWall in
    one)
    echo "selected wall 1"
    swaybg -i "$WALL_DIA_1" -m fill &
    ;;
    two)
    echo "selected wall 2"
    swaybg -i "$WALL_DIA_2" -m fill &
    ;;
    three)
    echo "selected wall 3"
    swaybg -i "$WALL_NOCHE_1" -m fill & 
    ;;
    four)
    echo "selected wall 4"
    swaybg -i "$WALL_NOCHE_2" -m fill &
    ;;
    *)
    echo "if u just want all dark"
    ;;
esac


