source ~/.bash_aliases

export EDITOR="vim"
set -o vi
PS1="\[\e[00;37m\][\t]: \w \\$\[\e[0m\]"
PATH="${PATH}:~/.gem/ruby/2.0.0/bin"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
nvm use v0.10.22 >/dev/null

PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
