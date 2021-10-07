
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=10000000
bindkey -v

source <(kubectl completion zsh)

setopt correct

# needed for auto finish
autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.bash_profile
source ~/.bash_aliases

export PS1="%B[%*]: %d $%b "
# ls will color code folders
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
