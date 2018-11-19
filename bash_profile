source ~/.git-completion.bash
source ~/.bashrc
source ~/.bash_prompt
source ~/.gitaliases
source ~/.aliases

# dot-files bin
export PATH=$HOME/.bin:$PATH

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
  export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH"
fi

export PATH=/usr/local/sbin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export DEV_HOME="$HOME/dev"

### Bebanjo Tool Belt
if [ -d "${DEV_HOME}/github/bebanjo/bj" ]; then
  eval "$($DEV_HOME/github/bebanjo/bj/bin/bj init -)"
fi

# asdf https://github.com/asdf-vm/asdf
# Extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more
if [ -d $HOME/.asdf ]; then
  source $HOME/.asdf/asdf.sh
  source $HOME/.asdf/completions/asdf.bash
fi

# gcloud
export CLOUDSDK_PYTHON=$(which python)
export PATH="${DEV_HOME}/google-cloud-sdk/bin:$PATH"
