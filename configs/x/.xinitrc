# generic x settings
xsetroot -cursor_name left_ptr &
sudo modprobe -r pcspkr

# wallpaper
#$HOME/.fehbg &

# java fixes
export AWT_TOOLKIT=MToolkit
/usr/bin/wmname LG3D &

# setup scripts
xrandr --output DP-4 --left-of HDMI-0
$HOME/.dots/scripts/setup/autostart.sh &

# wm
exec $WM
