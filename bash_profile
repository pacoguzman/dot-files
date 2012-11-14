source ~/.git-completion.bash
source ~/.bashrc
source ~/.bash_prompt
source ~/.gitaliases
source ~/.aliases

# To avoid problems with XCode 4.2.xi
# http://stackoverflow.com/questions/7734344/bug-bus-error-ruby-1-8-7
export CC=/usr/bin/gcc-4.2

export PATH=/usr/local/sbin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Bebanjo Tool Belt
eval "$(/Users/fjguzman/dev/github/bebanjo/bj/bin/bj init -)"
