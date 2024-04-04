# frozen_string_literal: true

require_relative "hype_man/version"

# module HypeMan
#   class Error < StandardError; end
#   # Your code goes here...
# end

require 'shellwords'

module HypeMan

  def self.set_alias(alias_name, command)
    if ENV['SHELL'] == '/bin/zsh'
      if command == "bundle exec rspec"
        `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
        puts "Way to test bro"
      elsif command == "rails db:drop"
        `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
        "do you even know how to database bro??"
      end
      `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
      puts "escape test"
    else
      puts "Unsupported shell. Alias not set."
    end
  end

end

if "bers"
  puts "other outside method test"
end

HypeMan.set_alias("glog", "git log")

# class HypeMan
#   def self.hi
#     puts "Hello world!"
#   end
# end

# README
# gem build hype_man.gemspec
# gem install hype_man