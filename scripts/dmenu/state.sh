#!/bin/sh
# Poweroff or reboot menu

choices="reboot\nwindows"

choice=$(echo -e "$choices" | dmenu -i -p "choose your state")

case "$choice" in
    reboot) reboot ;;
    windows) exec $SCRIPTS/windows.sh ;;
esac
