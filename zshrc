# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kichi/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kichi/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kichi/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kichi/bin/google-cloud-sdk/completion.zsh.inc'; fi

# Nix
if [ -f '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'; fi

# Homebrew
eval "$(/Users/kichi/.homebrew/bin/brew shellenv)"

export GREP_OPTIONS='--color=auto'
export PATH="$PATH:$HOME/bin:/Applications/MacVim.app/Contents/bin"

parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /' }
setopt PROMPT_SUBST
export PS1=" %F{11}%*%f %F{14}%1~%f %F{11}\$(parse_git_branch)%f%# "

source ~/.aliases
