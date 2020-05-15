[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr &
sudo modprobe -r pcspkr

xinput set-prop 13 154 2 0 0 0 2 0 0 0 1

exec bspwm
