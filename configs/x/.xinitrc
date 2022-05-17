#!/bin/sh

# generic x settings
xsetroot -cursor_name left_ptr &

# setup scripts
xrandr --output DP-4 --left-of HDMI-0 &
#xrandr --output HDMI3 --left-of HDMI1
$SCRIPTS/setup/autostart.sh &

# java fix
export _JAVA_AWT_WM_NONREPARENTING=1

# flatpak lag fix
systemctl --user import-environment DISPLAY XAUTHORITY
if command -v dbus-update-activation-environment >/dev/nyll 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY
fi

# wm
exec $WM
