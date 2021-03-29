#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb "$HOME/.Xresources"

setbg "$XDG_DATA_HOME/gruvbox-texture.png"

setxkbmap -layout br

xset -dpms s off &
exec numlockx &
exec dwm &
exec xcompmgr -S &
exec dwmblocks &
exec dunst

