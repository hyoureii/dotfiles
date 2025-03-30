#!/usr/bin/env bash

WALLPAPER_DIR=~/Wallpapers/

#pick a random wallpaper
WALLPAPER=$(find $WALLPAPER_DIR -maxdepth 1 -type f | shuf -n 1)

echo selected wallpaper : $(echo $WALLPAPER | sed s/'\/home\/rei\/Wallpapers\/'//)

swww img $WALLPAPER --transition-bezier .88,0,.88,.75 --transition-type grow --transition-duration 0.4 --transition-fps 60 --invert-y --transition-pos "$(hyprctl cursorpos | grep '^[0-9]' | awk -F '[, ]+' '{printf "%.0f,%.0f\n", ($1+1)*1, ($2+1)*1}' || echo "0.5, 0.5")"
