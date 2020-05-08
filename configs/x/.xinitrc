[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr &

./$HOME/.dots/scripts/setup/init-autostart.sh &
exec bspwm
