#!/bin/sh

# generic x settings
xsetroot -cursor_name left_ptr &

# setup scripts
xrandr --dpi 120 \
    --output HDMI-0 --mode 2560x1440 --pos 0x0 \
    --output DP-0 --mode 1920x1080 --pos 2560x-324 --rotate right
#$SCRIPTS/setup/autostart.sh &

# java fix
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

# flatpak lag fix
systemctl --user import-environment DISPLAY XAUTHORITY
if command -v dbus-update-activation-environment >/dev/nyll 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi

# Load Xresources
xrdb -merge ~/.Xresources

# Polybar
polybar 2>&1 | tee -a /tmp/polybar.log & disown

redshift &

# wm
exec $WM
