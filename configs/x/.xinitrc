# generic x settings
xsetroot -cursor_name left_ptr &
sudo modprobe -r pcspkr

# java fixes
export AWT_TOOLKIT=MToolkit

# wm
exec $WM
