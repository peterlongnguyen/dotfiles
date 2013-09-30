export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
PATH=/usr/local/share/npm/bin:$PATH
set -o vi

# added by Anaconda 1.6.0 installer
export PATH="/Users/peternguyen/anaconda/bin:$PATH"
export PATH="/usr/local/Cellar/smlnj/110.75/libexec/bin:$PATH"

# personal settings
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\u: \w \\$ \[$(tput sgr0)\]"

source ~/.nvm/nvm.sh

#eva l"$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
