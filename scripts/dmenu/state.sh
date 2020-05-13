#!/bin/sh
# Poweroff or reboot menu

choices="reboot\nshutdown"

choice=$(echo -e "$choices" | dmenu -i -p "choose your state")

case "$choice" in
    reboot) reboot ;;
    shutdown) poweroff ;;
esac
