#!/bin/sh

# generic x settings
xsetroot -cursor_name left_ptr &

# setup scripts
$SCRIPTS/path/monitor &
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

setxkbmap -option caps:swapescape

# wm
exec $WM
