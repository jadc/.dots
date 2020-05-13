#
# ~/.profile
#

# Environmental Variables
export PATH=$HOME/.shortcuts:$PATH
export SCRIPTS=$HOME/.dots/scripts
export TZ='Canada/Mountain'
export WM='bspwm'
export EDITOR='vim'
export TERMINAL='urxvt'
export BROWSER='chromium'
export READER='zathura'

# Source .bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Start X
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
