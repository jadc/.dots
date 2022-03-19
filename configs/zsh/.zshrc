# ZSH
zstyle :compinstall filename '$HOME/.zshrc'

## History
HISTFILE=$HOME/.histfile
HISTSIZE=100000000
SAVEHIST=100000000

## Remove cringe
unsetopt autocd
unsetopt beep

## Vim mode
bindkey -v

## Synax highlighting 
## (https://archlinux.org/packages/community/any/zsh-syntax-highlighting)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Autocomplete
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

# Sources
[ -f ~/.aliasrc ] && source ~/.aliasrc

# LF stay in directory
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^r' 'lfcd\n'

# Aesthetics
## Requires lscolors-git
source /usr/share/LS_COLORS/dircolors.sh

## Prompt
PS1='%F{black}%1~%f %(!.%F{red}.%F{blue})$%f '
fetch
