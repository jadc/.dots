#!/bin/sh

# Turn on main monitor
"/home/jad/.dots/scripts/setup/xrandr.sh"

# Raise refresh rate of bspwm
bspc config pointer_motion_interval 7
