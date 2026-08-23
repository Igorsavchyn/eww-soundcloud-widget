#!/bin/bash

PERCENT="$1"

PLAYER=$(playerctl -l 2>/dev/null | grep '^chromium\.instance' | head -n 1)

[ -z "$PLAYER" ] && exit 1

LEN_US=$(playerctl -p "$PLAYER" metadata mpris:length 2>/dev/null)

[ -z "$LEN_US" ] && exit 1

TARGET_SECONDS=$(LC_NUMERIC=C awk -v p="$PERCENT" -v l="$LEN_US" 'BEGIN {
    printf "%.3f", (l / 1000000) * (p / 100)
}')

playerctl -p "$PLAYER" position "$TARGET_SECONDS"
