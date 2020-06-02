#
# ~/.profile
#

# Environmental Variables
export SCRIPTS=$HOME/.dots/scripts
export PATH=$SCRIPTS:$PATH
export TZ='Canada/Mountain'
export WM='bspwm'
export EDITOR='vim'
export TERMINAL='urxvt'
export BROWSER='chromium'
export READER='zathura'
export SHELL='bash'

# Temporary
export DOMPACK=$HOME/docs/mc/modpacks/dompack
export INSTANCE=/media/storage/games/mc/instances

# Source .bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Start X
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
