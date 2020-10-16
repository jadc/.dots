#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#
# Aliases
#
[ -f ~/.aliases ] && source ~/.aliases

#
# Configuration
#

# Disable permission highlighting in ls
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Reopen latest pwd
[ -r $HOME/.lastdir ] && cd $(< $HOME/.lastdir)
echo $PWD > $HOME/.lastdir

# Prefix
PS1='\[\e[0m\e[30m\](\[\e[90m\]\W\[\e[30m\])\[\e[34m\]$\[\e[0m\] '

# cd w/o cd
# shopt -s autocd

# unlimited history
HISTSIZE=-1
HISTFILESIZE=-1

#
# Defaults
#

# vi mode
set -o vi
bind -m vi-insert "\C-l":clear-screen

# Showing off
pr
