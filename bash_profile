if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -e /Users/kichi/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/kichi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kichi/bin/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kichi/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kichi/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kichi/bin/google-cloud-sdk/completion.bash.inc'; fi
