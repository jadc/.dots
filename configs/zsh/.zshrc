# ZSH
zstyle :compinstall filename '$HOME/.zshrc'

## History
HISTFILE=$HOME/.cache/zsh/history
HISTSIZE=100000000
SAVEHIST=100000000
setopt HIST_IGNORE_SPACE

# Misc
unsetopt autocd
unsetopt beep
bindkey -v       # Vim mode
stty stop undef  # Disable ctrl+s freezing term

## Autocomplete
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

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

# Binds
bindkey -s '^r' ' lfcd\n'
bindkey -s '^f' ' cd "$(dirname "$(fzf)")"\n'
bindkey -s '^l' ' tput reset\n'

# Aesthetics
## Requires lscolors-git
source /usr/share/LS_COLORS/dircolors.sh

## Prompt
PS1='%F{black}%1~%f %(!.%F{red}.%F{blue})$%f '
fetch

# Sources
[ -f ~/.aliasrc ] && source ~/.aliasrc

## Synax highlighting 
## (https://archlinux.org/packages/community/any/zsh-syntax-highlighting)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


