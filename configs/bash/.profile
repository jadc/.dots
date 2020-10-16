#
# ~/.profile
#

# Environmental Variables
export SCRIPTS=$HOME/.dots/scripts
export PATH=$SCRIPTS/path:$PATH
export TZ='Canada/Mountain'
export WM='bspwm'
export EDITOR='nvim'
export TERMINAL='urxvt'
export BROWSER='chromium'
export READER='zathura'
export SHELL='bash'

# Source .bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Start X
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
