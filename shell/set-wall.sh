#!/usr/bin/env bash

hora=$(date +%H)

WALLPAPER_DIA="/home/r0s/media/wall/bears-in-the-forest.jpg"
WALLPAPER_NOCHE="/home/r0s/media/wall/forest.png"

if ((hora >= 10 && hora < 16)); then
  feh --bg-fill "$WALLPAPER_DIA"
else
  feh --bg-fill "$WALLPAPER_NOCHE"
fi
