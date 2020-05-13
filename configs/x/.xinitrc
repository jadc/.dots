[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr &
sudo modprobe -r pcspkr

exec bspwm
