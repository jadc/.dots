[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

./$HOME/.dots/scripts/setup/init-autostart.sh &
exec bspwm
