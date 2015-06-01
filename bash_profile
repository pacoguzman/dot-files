source ~/.git-completion.bash
source ~/.tmuxinator-completion.bash
source ~/.bashrc
source ~/.bash_prompt
source ~/.gitaliases
source ~/.aliases

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/usr/local/sbin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Bebanjo Tool Belt
if [ -f /Users/fjguzman/dev/github/bebanjo/bj ]; then
  eval "$(/Users/fjguzman/dev/github/bebanjo/bj/bin/bj init -)"
fi


# Tmuxinator
source ~/.tmuxinator-completion.bash