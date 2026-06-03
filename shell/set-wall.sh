#!/usr/bin/env bash

hora=$(date +%H)

WALLPAPER_DIA="/home/r0s/media/wall/forest.png"
WALLPAPER_NOCHE="/home/r0s/media/wall/mono-ascii.png"

if ((hora >= 10 && hora < 16)); then
  feh --bg-fill "$WALLPAPER_DIA"
else
  feh --bg-fill "$WALLPAPER_NOCHE"
fi
