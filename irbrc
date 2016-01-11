require 'irb/completion'
require 'irb/ext/save-history'

ANSI = {}
ANSI[:RESET]     = "\e[0m"
ANSI[:BOLD]      = "\e[1m"
ANSI[:UNDERLINE] = "\e[4m"
ANSI[:LGRAY]     = "\e[0;37m"
ANSI[:GRAY]      = "\e[1;30m"
ANSI[:RED]       = "\e[31m"
ANSI[:GREEN]     = "\e[32m"
ANSI[:YELLOW]    = "\e[33m"
ANSI[:BLUE]      = "\e[34m"
ANSI[:MAGENTA]   = "\e[35m"
ANSI[:CYAN]      = "\e[36m"
ANSI[:WHITE]     = "\e[37m"

alias q exit

# method the return the methods not present on basic objects, good for
# investigations
class Object
  def interesting_methods
    (self.methods - Object.instance_methods).sort
  end

  def local_methods
    (methods - Object.instance_methods).sort
  end

  # Return a list of methods defined locally for a particular object.  Useful
  # for seeing what it does whilst losing all the guff that's implemented
  # by its parents (eg Object).
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  # print documentation
  #
  #   ri 'Array#pop'
  #   Array.ri
  #   Array.ri :pop
  #   arr.ri :pop
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

def copy(str)
  IO.popen('pbcopy', 'w') { |f| f << str.to_s }
end

def paste
  `pbpaste`
end

# http://gist.github.com/259438
# START supercoco9 irbrc
require 'net/http'
require 'uri'

def _post(url, params)
  url += "/" unless url =~ /\/$/
  Net::HTTP.post_form(URI.parse(url), params)
end
# END supercoco9 irbrc

# my irb is polite
IRB.conf[:AT_EXIT] << Proc.new {puts "bye-bye"}
