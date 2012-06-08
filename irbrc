require 'rubygems'
begin
 require 'wirble'
rescue LoadError
end
begin
  require 'looksee'
rescue LoadError
end

alias q exit

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

# inspired by https://gist.github.com/794915
# I've changed it a bit, it works fine for me now
# but i'm still searching for a better solution
# def require_without_bundler(*gems)

require 'irb/completion'
require 'irb/ext/save-history'

if defined?(Wirble) && defined?(Looksee)
Wirble.init(:history_size => 10000)
Wirble.colorize

Wirble::Colorize.colors = {
  # delimiter colors
  :comma              => :white,
  :refers             => :white,

  # container colors (hash and array)
  :open_hash          => :white,
  :close_hash         => :white,
  :open_array         => :white,
  :close_array        => :white,

  # object colors
  :open_object        => :light_red,
  :object_class       => :red,
  :object_addr_prefix => :blue,
  :object_line_prefix => :blue,
  :close_object       => :light_red,

  # symbol colors
  :symbol             => :blue,
  :symbol_prefix      => :blue,

  # string colors
  :open_string        => :light_green,
  :string             => :light_green,
  :close_string       => :light_green,

  # misc colors
  :number             => :light_blue,
  :keyword            => :orange,
  :class              => :red,
  :range              => :light_blue,
}
end # defined?(Wirlble)

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

begin
  require "pry"
  Pry.start
  exit
rescue LoadError => e
  warn "=> Unable to load pry"
end

# detects a rails console, cares about version
def rails?(*args)
  version=args.first
  v2 = ($0 == 'irb' && ENV['RAILS_ENV'])
  v3 = ($0 == 'script/rails' && Rails.env)
  version == 2 ? v2 : version == 3 ? v3 : v2 || v3
end

# loading rails configuration if it is running as a rails console
load File.dirname(__FILE__) + '/.railsrc' if rails?

# my irb is polite
IRB.conf[:AT_EXIT] << Proc.new {puts "bye-bye"}
