#
# ~/.profile
#

# XDG
export XDG_CONFIG_HOME="$HOME/.config"

# Environmental Variables
export SCRIPTS=$HOME/.dots/scripts
export PATH=$SCRIPTS/path:$PATH
export TZ='Canada/Mountain'
export WM='bspwm'
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
export BROWSER='chromium'
export READER='zathura'
export SHELL='bash'

## MC
export MCRCON_HOST='10.0.0.8'
export MCRCON_PASS='14351733'

## pfetch
export PF_INFO='palette title os uptime pkgs'

# Source .bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Start X
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
