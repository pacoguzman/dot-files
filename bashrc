export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export IRBRC="$HOME/.irbrc"

export TERM="xterm-256color" # getting propercolors
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='vim'
export VISUAL=$EDITOR
export HISTCONTROL=ignoredups:erasedups # no duplicate entries

export GOPATH=$HOME
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# Elixir
export ERL_AFLAGS="-kernel shell_history enabled"

# Git
export GIT_EDITOR=$EDITOR
export LANGUAGE='en_US.UTF-8'

# https://gist.github.com/tombigel/d503800a282fcadbee14b537735d202c
# ulimit -n 200000
# ulimit -u 2048

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
