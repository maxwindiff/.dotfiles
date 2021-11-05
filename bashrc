alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias l="ls -l"
alias la="ls -a"
alias ll="ls -al"
alias ltr="ls -ltr"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
YELLOW="\[\e[1;33m\]"
CYAN="\[\e[1;36m\]"
WHITE="\[\e[1;37m\]"
export PS1=" $YELLOW\t$WHITE $CYAN\W$WHITE $YELLOW\$(parse_git_branch)$WHITE\$ "

function gp() { git grep -niI "$*" .; }
function rgp() { grep -nriI "$*" *; }
function ffind() { find . -iname "*$**"; }

export PATH="$PATH:/Applications/MacVim.app/Contents/bin:$HOME/bin"
export bb=beaglebone.local

alias http="python -m SimpleHTTPServer 1337"
alias trim-log="sed -i '' \
  -e '/^(Filename: /d' \
  -e '/^Parent of RectTransform/d' \
  -e '/^PrintOnEnable:/d' \
  -e '/^UnityEngine/d' \
  -e '/^Wotc/d' \
  -e '/^DG/d' \
  -e '/^PAPA/d' \
  -e '/^System/d' \
  -e '/^EndDragCard/d' \
  -e '/^When used with/d' \
  -e '/^Please note that/d' \
  -e '/^Updating model of/d' \
  -e '/^Material does/d' \
  -e '/^Failed to localize/d' \
  -e '/^ *$/d'"

alias run-redis="redis-server &"
alias run-mysql="mysqld_safe &"
alias run-nginx="nginx -c $HOME/nginx.conf"
alias run-dynamo="java -Djava.library.path=$HOME/dev/dynamodb_local_latest/DynamoDBLocal_lib -jar $HOME/dev/dynamodb_local_latest/DynamoDBLocal.jar -sharedDb -dbPath $HOME/dev/dynamodb_local_latest -port 8123 &"
alias run-react="npm run react-dev"
alias run-web="while true; do FLASK_ENV=development gunicorn --reload server.web_server:app --pythonpath src/python/ --log-file - --bind 0.0.0.0:8000 -k gevent; done"
alias run-aggregator="PYTHONPATH=src/python python3 src/python/analysis/event_aggregator.py -u 1 -e MID_Premier_Draft"
alias run-aggregator-loop="PYTHONPATH=src/python python3 src/python/analysis/event_aggregator.py -l"
alias run-aggregator-collection="PYTHONPATH=src/python python3 src/python/analysis/event_aggregator.py --publish_one_card_collection"

function sf() { curl "https://api.scryfall.com/cards/arena/$1?format=text"; echo; }

alias venv="python3 -m venv"
alias activate-venv=". .env/bin/activate"
