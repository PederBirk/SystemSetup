#!/usr/bin/env bash 

picom &
conky &
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 143.91
nitrogen --restore