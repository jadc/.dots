#
# ~/.profile
#

# XDG
export XDG_CONFIG_HOME="$HOME/.config"

# Environmental Variables
export DOTS=$HOME/.dots
export PATH=$SCRIPTS/path:$PATH

export TZ='Canada/Mountain'
export WM='bspwm'
export EDITOR='nvim'
export VISUAL=$EDITOR
export TERMINAL='kitty'
export BROWSER='chromium'
export READER='zathura'
export SHELL='/bin/bash'

# Source .bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Start X
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && [ ! -f "$HOME/nox" ]; then
  exec startx
fi
