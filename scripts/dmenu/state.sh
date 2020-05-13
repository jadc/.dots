#!/bin/sh
# Poweroff or reboot menu

choices="sleep\nreboot\nshutdown"

choice=$(echo -e "$choices" | dmenu -i -p "choose your state")

case "$choice" in
    sleep) systemctl hibernate ;;
    reboot) reboot ;;
    shutdown) poweroff ;;
esac
