require 'irb/completion'

alias q exit

# my irb is polite
IRB.conf[:AT_EXIT] << Proc.new {puts "bye-bye"}
