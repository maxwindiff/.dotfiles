alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias l="ls -l"
alias la="ls -a"
alias ll="ls -al"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'

YELLOW="\[\e[1;33m\]"
CYAN="\[\e[1;36m\]"
WHITE="\[\e[1;37m\]"
export PS1=" $YELLOW\t$WHITE $CYAN\W$WHITE \$ "

function gp() { git grep -niI "$*" .; }
function rgp() { grep -nriI "$*" *; }
function ffind() { find . -iname "*$**"; }

export PATH="$PATH:~/bin"

source ~/.dotfiles/autocomplete/swift-complete.bash
