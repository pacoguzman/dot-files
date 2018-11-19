export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export IRBRC="$HOME/.irbrc"

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='vim'
export VISUAL=$EDITOR

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

export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# Elixir

export ERL_AFLAGS="-kernel shell_history enabled"

# added by travis gem
[ -f /Users/paco/.travis/travis.sh ] && source /Users/paco/.travis/travis.sh

# Git
export GIT_EDITOR=$EDITOR
export LANGUAGE='en_US.UTF-8'

# https://gist.github.com/tombigel/d503800a282fcadbee14b537735d202c
# ulimit -n 200000
# ulimit -u 2048
