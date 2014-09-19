source ~/.bash_aliases

export EDITOR="vim"
set -o vi
#export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\u: \w \\$ \[$(tput sgr0)\]"
PATH="${PATH}:~/.gem/ruby/2.0.0/bin"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
nvm use v0.10.22 >/dev/null

PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
