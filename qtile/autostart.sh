#!/usr/bin/env bash 

lxsession &
nm-applet &
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 143.91 &
picom &
conky &
nitrogen --restore &