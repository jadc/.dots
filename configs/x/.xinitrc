[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr &
sudo modprobe -r pcspkr

export AWT_TOOLKIT=MToolkit
hsetroot -solid '#000000'

exec bspwm
