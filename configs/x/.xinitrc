# generic x settings
xsetroot -cursor_name left_ptr &

# setup scripts
xrandr --output DP1 --left-of HDMI1 &
$SCRIPTS/setup/autostart.sh &

# wm
exec $WM
