source ~/.git-completion.bash
source ~/.bashrc
source ~/.gitaliases
# -- start rip config -- #
RIPDIR=/Users/ryanbigg/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #
