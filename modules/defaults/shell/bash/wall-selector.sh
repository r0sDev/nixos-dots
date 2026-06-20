#!/usr/bin/env bash

WALL1="/home/r0s/media/wall/1.jpg"
WALL2="/home/r0s/media/wall/forest.jpg"
WALL3="/home/r0s/media/wall/galen-crout.jpg"
WALL4="/home/r0s/media/wall/nasa-OLlj17tUZnU-unsplash.jpg"
WALL5="/home/r0s/media/wall/wp8860785-nasa-4k-wallpapers.jpg"
WALL6="/home/r0s/media/wall/kittensgame.jpg"

read -p "select wall: " selectedWall
case $selectedWall in
    one)
    echo "selected wall 1"
    feh --bg-fill "$WALL1"
    ;;
    two)
    echo "selected wall 2"
    feh --bg-fill "$WALL2"
    ;;
    three)
    echo "selected wall 3"
    feh --bg-fill "$WALL3"
    ;;
    four)
    echo "selected wall 4"
    feh --bg-fill "$WALL4"
    ;;
    five)
    echo "selected wall 5"
    feh --bg-fill "$WALL5"
    ;;
    six)
    echo "selected wall 6"
    feh --bg-fill "$WALL6"
    ;;
    *)
    echo "error on typing"
    ;;
esac


