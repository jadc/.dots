# generic x settings
xsetroot -cursor_name left_ptr &
sudo modprobe -r pcspkr

# wallpaper
$HOME/.fehbg &

# java fixes
export AWT_TOOLKIT=MToolkit
wmname LG3D &

# setup scripts
$HOME/.dots/scripts/setup/xrandr.sh &
$HOME/.dots/scripts/setup/autostart.sh &

# wm
exec $WM
