export GREP_OPTIONS='--color=auto'
export PATH="$PATH:$HOME/bin:/Applications/MacVim.app/Contents/bin"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
YELLOW="\[\e[1;33m\]"
CYAN="\[\e[1;36m\]"
WHITE="\[\e[1;37m\]"
export PS1=" $YELLOW\t$WHITE $CYAN\W$WHITE $YELLOW\$(parse_git_branch)$WHITE\$ "

source ~/.aliases
source "$HOME/.cargo/env"
