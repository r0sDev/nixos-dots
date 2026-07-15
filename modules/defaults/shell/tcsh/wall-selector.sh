#!/usr/bin/env bash

WALL1="/home/r0s/media/wall/1.jpg"
WALL2="/home/r0s/media/wall/forest.png"
WALL3="/home/r0s/media/wall/galen-crout.jpg"
WALL4="/home/r0s/media/wall/nasa-OLlj17tUZnU-unsplash.jpg"
WALL5="/home/r0s/media/wall/wp8860785-nasa-4k-wallpapers.jpg"
WALL6="/home/r0s/media/wall/kittensgame.jpg"
WALL7="/home/r0s/media/wall/cities.jpg"

read -p "select wall: " selectedWall
case $selectedWall in
    one|1)
    echo "selected wall 1"
    feh --bg-fill "$WALL1"
    ;;
    two|2)
    echo "selected wall 2"
    feh --bg-fill "$WALL2"
    ;;
    three|3)
    echo "selected wall 3"
    feh --bg-fill "$WALL3"
    ;;
    four|4)
    echo "selected wall 4"
    feh --bg-fill "$WALL4"
    ;;
    five|5)
    echo "selected wall 5"
    feh --bg-fill "$WALL5"
    ;;
    six|6)
    echo "selected wall 6"
    feh --bg-fill "$WALL6"
    ;;
    seven|7)
    echo "selected wall 7"
    feh --bg-fill "$WALL7"
    ;;
    *)
    echo "error on typing"
    ;;
esac


