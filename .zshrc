# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=10000000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/peter/.zshrc'

setopt correct

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.bashrc
source ~/.bash_aliases

export PS1="%B[%*]: %d $%b "
