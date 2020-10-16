#!/bin/sh

# Turn off main monitor
xrandr --output HDMI3 --off

# Lower refresh rate of bspwm
bspc config pointer_motion_interval 17
