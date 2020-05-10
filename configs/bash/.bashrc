#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#
# Env Vars
#
export TZ='Canada/Mountain'

#
# Aliases
#
alias ls='ls --color=auto -a'
alias gp='git add . && git commit -m "$(date)" && git push -u origin master'
alias gpm='git add . && git commit -m "$1" && git push -u origin master'
alias ranger='. ranger'

#
# Configuration
#

# Disable permission colors
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Prefix
#PS1='[\u@\h \W]\$ '
PS1='\e[0m\e[30m(\e[90m\W\e[30m)\e[34m$\e[0m '

#
# Defaults
#

# cd to downloads
cd $HOME/Downloads/

# Showing off
ufetch
