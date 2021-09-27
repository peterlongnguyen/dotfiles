
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=10000000
bindkey -v

source <(kubectl completion zsh)

setopt correct

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.bash_profile
source ~/.bash_aliases

export PS1="%B[%*]: %d $%b "
