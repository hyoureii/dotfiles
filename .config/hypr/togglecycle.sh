#!/usr/bin/env sh
FLOATING=$(hyprctl activewindow | awk '/floating/ {print $2}')
if [ "$FLOATING" = 0 ] ; then
	hyprctl dispatch cyclenext floating
else
	hyprctl dispatch cyclenext tiled
fi
