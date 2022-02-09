# generic x settings
xsetroot -cursor_name left_ptr &

# setup scripts
xrandr --output DP-4 --left-of HDMI-0 &
$SCRIPTS/setup/autostart.sh &

# wm
exec $WM
