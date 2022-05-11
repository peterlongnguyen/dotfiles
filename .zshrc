
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


parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
