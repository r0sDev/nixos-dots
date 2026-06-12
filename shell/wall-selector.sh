#!/usr/bin/env bash

WALL1="/home/r0s/media/wall/1.jpg"
WALL2="/home/r0s/media/wall/forest.jpg"
WALL3="/home/r0s/media/wall/galen-crout.jpg"
WALL4="/home/r0s/media/wall/nasa-OLlj17tUZnU-unsplash.jpg"
WALL5="/home/r0s/media/wall/wp8860785-nasa-4k-wallpapers.jpg"

read -p "select wall: " selectedWall
case $selectedWall in
    one)
    echo "selected wall 1"
    swaybg -i "$WALL1" -m fill &
    ;;
    two)
    echo "selected wall 2"
    swaybg -i "$WALL2" -m fill &
    ;;
    three)
    echo "selected wall 3"
    swaybg -i "$WALL3" -m fill & 
    ;;
    four)
    echo "selected wall 4"
    swaybg -i "$WALL4" -m fill &
    ;;
    five)
    echo "selected wall 4"
    swaybg -i "$WALL5" -m fill &
    ;;
    *)
    echo "error on typing"
    ;;
esac


