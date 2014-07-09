#
# ~/.bash_profile
#

source ~/.bash_aliases

[[ -f ~/.bashrc ]] && . ~/.bashrc

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
peter: ~ $ kat ~/.bashrc 
#
# ~/.bashrc
#

export EDITOR="vim"
set -o vi
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\u: \w \\$ \[$(tput sgr0)\]"
PATH="${PATH}:/usr/share/elasticsearch/bin/elasticsearch"
PATH="${PATH}:~/.gem/ruby/2.0.0/bin"

export PATH="$PATH":`pwd`/documents/depot_tools

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
nvm use v0.10.22

PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"

source ~/.bash_aliases
