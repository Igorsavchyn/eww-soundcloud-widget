#!/bin/bash

VALUE="$1"

wpctl set-volume @DEFAULT_AUDIO_SINK@ "${VALUE}%"
eww update volume_ui="$VALUE"
