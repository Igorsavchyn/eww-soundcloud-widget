# Eww SoundCloud Music Widget

A compact SoundCloud-inspired music widget for Linux built with Eww.

Tested on Linux Mint Cinnamon / X11 with Chromium + SoundCloud.

## Features

- Current track title and artist
- Cover art
- Live track progress
- Click / drag to seek
- Previous / Play-Pause / Next controls
- System volume control
- Mute / unmute
- Compact SoundCloud-inspired orange UI
- Desktop-only placement on Cinnamon
- MPRIS integration through `playerctl`

## Dependencies

- Eww
- playerctl
- PipeWire / `wpctl`
- Chromium or another MPRIS-compatible player
- Font Awesome
- Noto Sans

On Ubuntu / Linux Mint:

```bash
sudo apt install playerctl fonts-font-awesome

Installation:

git clone YOUR_REPOSITORY_URL
cd eww-soundcloud-widget

mkdir -p ~/.config/eww/scripts

cp eww.yuck ~/.config/eww/
cp eww.scss ~/.config/eww/
cp scripts/*.sh ~/.config/eww/scripts/

chmod +x ~/.config/eww/scripts/*.sh

Start:

eww daemon
eww open music



Check MPRIS:
playerctl -l
You should see something similar to:

chromium.instance1234


Controls
Progress bar — seek through the track
Previous / Play-Pause / Next
Volume slider — system volume
Speaker icon — mute / unmute


## Screenshot

![Eww SoundCloud Music Widget](screenshots/preview.png)
