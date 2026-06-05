#!/usr/bin/env bash

hora=$(date +%H)

WALL_DIA_1="/home/r0s/media/wall/0355.jpg"
WALL_DIA_2="/home/r0s/media/wall/0356.jpg"

WALL_NOCHE_1="/home/r0s/media/wall/monocr_build.jpg"
WALL_NOCHE_2="/home/r0s/media/wall/galen-crout.jpg"

if ((hora >= 10 && hora < 12)); then
  feh --bg-fill "$WALL_DIA_1"
elif ((hora >= 12 && hora < 14)); then
  feh --bg-fill "$WALL_DIA_2"
elif ((hora >= 14 && hora < 16)); then
  feh --bg-fill "$WALL_NOCHE_1"
else
  feh --bg-fill "$WALL_NOCHE_2"
fi
