#!/bin/bash

PLAYER=$(playerctl -l 2>/dev/null | grep '^chromium\.instance' | head -n 1)

if [ -z "$PLAYER" ]; then
    echo 0
    exit
fi

POS=$(playerctl -p "$PLAYER" position 2>/dev/null || echo 0)
LEN_US=$(playerctl -p "$PLAYER" metadata mpris:length 2>/dev/null || echo 0)

LC_NUMERIC=C awk -v p="$POS" -v l="$LEN_US" 'BEGIN {
    l = l / 1000000;

    if (l <= 0) {
        print 0;
        exit;
    }

    v = (p / l) * 100;

    if (v < 0) v = 0;
    if (v > 100) v = 100;

    printf "%.3f\n", v;
}'
