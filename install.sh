#!/usr/bin/env bash

CWD="$(dirname $(readlink -f "$0"))"

mkdir -p $CWD/cache

DIRS="$(find $CWD -type d | grep ".config" | sed '/systemd\/.*wants/d; s/dotfiles\///')"
echo $DIRS > $CWD/cache/dirs.txt

mkdir -p $(cat $CWD/cache/dirs.txt)

stow -R -d $CWD -t $HOME .
