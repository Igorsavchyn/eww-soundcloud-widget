#!/bin/bash

RAW=$(LC_ALL=C wpctl get-volume @DEFAULT_AUDIO_SINK@)
REAL=$(echo "$RAW" | awk '{printf "%.0f", $2*100}')

if echo "$RAW" | grep -q "MUTED"; then
    wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
    eww update volume_ui="$REAL"
else
    wpctl set-mute @DEFAULT_AUDIO_SINK@ 1
    eww update volume_ui=0
fi
