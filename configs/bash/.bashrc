#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#
# Sources
#
[ -f ~/.aliasrc ] && source ~/.aliasrc

#
# Configuration
#

# Disable permission highlighting in ls
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Prefix

# first
# PS1='\[\e[0m\e[30m\](\[\e[90m\]\W\[\e[30m\])\[\e[34m\]$\[\e[0m\] '

PS1='\[\e[0m\e[30m\]\[\e[90m\]\W\[\e[30m\] \[\e[34m\]$\[\e[0m\] '

# cd w/o cd
# shopt -s autocd

# history
HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL=ignoredups:erasedups

#
# Defaults
#

# vi mode
set -o vi
bind -m vi-insert "\C-l":clear-screen

# fetch
C='\033[1;34m'
G='\033[1;33m'
B='\033[0;30m'
#C="\033[1;3$(( $RANDOM * 6 / 32767 + 1 ))m"
NC='\033[0m'

i=$(cat /proc/uptime | awk -F'.' '{print $1}')
((i/=60, min=i%60, hrs=i/60))
uptime=$(printf "%dh %02dm" $hrs $min)

echo -e "$B ,o()()o,  ${C}$USER$NC"
echo -e "$B,o'    'o,  ${C}dt${NC}  $(date '+%b. %d' | awk '{print tolower($0)}')"
echo -e "$B'O $G.  .$B O'  ${C}up${NC}  ${hrs}h ${min}m"
echo -e "$B  ·____·    ${C}pk${NC}  $(pacman -Q | wc -l)"
echo ""
