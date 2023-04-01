# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kichi/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kichi/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kichi/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kichi/bin/google-cloud-sdk/completion.zsh.inc'; fi

# Homebrew
eval "$(/Users/kichi/.homebrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kichi/bin/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kichi/bin/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/kichi/bin/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kichi/bin/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Custom
git_status() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ $? -eq 0 ]; then
    echo -n "($branch"
    stashes=$(git stash list 2>/dev/null | wc -l | grep -o '[0-9]\+')
    if [ "$stashes" != "0" ]; then
      echo -n ":$stashes"
    fi
    echo -n ') '
  fi
}
setopt PROMPT_SUBST
export PS1=" %F{11}%*%f %F{14}%2~%f %F{11}\$(git_status)%f%# "
export GREP_OPTIONS='--color=auto'
export PATH="$PATH:$HOME/bin:$HOME/bin/npm/bin:/Applications/MacVim.app/Contents/bin"
source ~/.aliases
