#!/bin/sh

# kvm
# xrandr --output HDMI3 --mode 1920x1080 --rate 119.99 --pos 0x0 --output VGA1 --mode 1680x1050 --rate 59.95 --pos 1920x0

# normal
xrandr --output DP-4 --left-of HDMI-0

# yo. future jad. if the monitor names are different, make sure to install nvidia. if that gives you a black screen, blacklist
# https://wiki.archlinux.org/index.php/NVIDIA/Troubleshooting#Black_screen_on_systems_with_Intel_integrated_GPU
