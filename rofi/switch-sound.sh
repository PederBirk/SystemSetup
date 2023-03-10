#!/usr/bin/env bash

theme="$HOME/.config/rofi/list.rasi"

readarray indexes < <(pactl list sinks | grep -Po 'Sink #\K.*')
default=$(pactl get-default-sink)
active=$(pactl list short sinks | grep $default | head -c1)
chosen=$(pactl list sinks | grep -Po 'Description: \K.*' | rofi -dmenu -i -p "Sound Output" -a $active -format i -theme $theme)
if [[ -z "$chosen" ]]; then
    exit
fi
pactl set-default-sink ${indexes[$chosen]}