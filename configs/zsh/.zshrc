# ZSH exclusive
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
unsetopt beep
bindkey -v

# Sources
[ -f ~/.aliasrc ] && source ~/.aliasrc

# Prompt
PS1='%F{black}%1~%f %(!.%F{red}.%F{blue})$%f '

# Fetch
fetch

# The following lines were added by compinstall
zstyle :compinstall filename '/home/jad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
