#!/usr/bin/env bash 

lxsession &
nm-applet &
xrandr --output DP-1 --mode 2560x1440 --rate 143.91 &
picom &
conky &
udiskie &
dunst &
nitrogen --restore &