export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export IRBRC="$HOME/.irbrc"

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='vim'
export GIT_EDITOR=$EDITOR
export VISUAL=$EDITOR

complete -C ~/.rake-completion.rb -o default rake

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

## Coursera Computational Investment
#export PATH=/usr/local/bin:/usr/local/share/python:$PATH
#source /usr/local/share/python/virtualenvwrapper.sh
#
#source $HOME/dev/github/tucker777/QSTK/local.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
