#!/bin/bash

RAW=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null)

if echo "$RAW" | grep -q MUTED; then
    echo ""
else
    echo ""
fi
