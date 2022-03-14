source ~/.git-completion.bash
source ~/.bashrc
source ~/.bash_prompt
source ~/.gitaliases
source ~/.aliases

# complete -C ~/.rake-completion.rb -o default rake

# readline settings
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

# Turn on advanced bash completion if the file exists (get it here: http://www.caliban.org/bash/index.shtml#completion)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# history (bigger size, no duplicates, always append):
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

alias h='history|g'

# dot-files bin
export PATH=$HOME/.bin:$PATH

# RBENV
if [ -d $HOME/.rbenv ]; then
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
fi

export PATH=/usr/local/sbin:$PATH
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
# export CLOUDSDK_PYTHON=$(which python)
# export PATH="${DEV_HOME}/google-cloud-sdk/bin:$PATH"

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
