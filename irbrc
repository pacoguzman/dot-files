require 'irb/completion'
require 'irb/ext/save-history'

alias q exit

# my irb is polite
IRB.conf[:AT_EXIT] << Proc.new {puts "bye-bye"}
