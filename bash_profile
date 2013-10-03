source ~/.git-completion.bash
source ~/.bashrc
source ~/.bash_prompt
source ~/.gitaliases
source ~/.aliases

## Load RVM into a shell session *as a function*
#if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

## RVM bash completion
#[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# To avoid problems with XCode 4.2.xi http://stackoverflow.com/questions/7734344/bug-bus-error-ruby-1-8-7
# but not needed with rbenv
# export CC=/usr/bin/gcc-4.2

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Install XQuartz
# Install Homebrew (if you don't have it already)
# brew tap homebrew/dupes (repository for duplicate system tools)
# brew install apple-gcc42
# export CPPFLAGS=-I/opt/X11/include
# CC=/usr/local/bin/gcc-4.2 rbenv install ree-1.8.7-2012.02


export PATH=/usr/local/sbin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Bebanjo Tool Belt
eval "$(/Users/fjguzman/dev/github/bebanjo/bj/bin/bj init -)"
