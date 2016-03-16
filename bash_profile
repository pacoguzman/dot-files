source ~/.git-completion.bash
source ~/.tmuxinator-completion.bash
source ~/.bashrc
source ~/.bash_prompt
source ~/.gitaliases
source ~/.aliases

# RBENV
if [ -d $HOME/.rbenv ]; then
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
fi

# CHRUBY
if [ -f /usr/local/share/chruby/chruby.sh ]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

# Postgres.app
if [ -d /Applications/Postgres.app ]; then
  export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
fi

export PATH=/usr/local/sbin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export DEV_HOME="$HOME/dev"

### Bebanjo Tool Belt
if [ -d "${DEV_HOME}/github/bebanjo/bj" ]; then
  eval "$($DEV_HOME/github/bebanjo/bj/bin/bj init -)"
fi

# Tmuxinator
source ~/.tmuxinator-completion.bash
