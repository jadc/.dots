#!/bin/sh
set -x

# Turn off main monitor
su -l jad -c "DISPLAY=:0 xrandr --output HDMI3 --off"
