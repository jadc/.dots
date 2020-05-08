#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#
# Aliases
#
alias ls='ls --color=auto'
alias gp='git add . && git commit -m "$(date)" && git push -u origin master"'
alias gpm='git add . && git commit -m "$1" && git push -u origin master'

#
# Configuration
#

# Disable permission colors
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Prefix
PS1='[\u@\h \W]\$ '

#
# Defaults
#

# cd to downloads
cd $HOME/Downloads/

# Showing off
ufetch
