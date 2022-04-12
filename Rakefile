require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = true
  Dir['*'].each do |file|
    next if %w[Rakefile README formula].include? file

    original = File.join(ENV['HOME'], ".#{file}")

    if File.exist?(original) || File.symlink?(original)
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end

def replace_file(file)
  original = File.join(ENV['HOME'], ".#{file}")
  if File.directory?(original)
    system %Q{rm -r "$HOME/.#{file}"}
    link_file(file)
  else
    system %Q{rm "$HOME/.#{file}"}
    link_file(file)
  end
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
