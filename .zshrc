# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joren/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias bt='bluetoothctl'
alias ls='ls --color=auto'
alias vim='nvim'
alias vpn='/opt/cisco/anyconnect/bin/vpnui'

bindkey -v

export PATH="$HOME/.local/bin:$PATH"

eval "$(starship init zsh)"

[ -f "/home/joren/.ghcup/env" ] && source "/home/joren/.ghcup/env" # ghcup-env

clear
alias config='/usr/bin/git --git-dir=/home/joren/.cfg/ --work-tree=/home/joren'
