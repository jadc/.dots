# ZSH
zstyle :compinstall filename '/home/jad/.zshrc'

## History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

## Remove cringe
unsetopt autocd
unsetopt beep

## Vim mode
bindkey -v

## Autocomplete
### https://archlinux.org/packages/community/any/zsh-syntax-highlighting/
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
### https://archlinux.org/packages/community/any/zsh-autosuggestions/
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^I' autosuggest-accept

# Sources
[ -f ~/.aliasrc ] && source ~/.aliasrc

# Aesthetics
## Requires lscolors-git
source /usr/share/LS_COLORS/dircolors.sh

## Prompt
PS1='%F{black}%1~%f %(!.%F{red}.%F{blue})$%f '
fetch
