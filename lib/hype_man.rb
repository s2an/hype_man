# frozen_string_literal: true

require_relative "hype_man/version"

# module HypeMan
#   class Error < StandardError; end
#   # Your code goes here...
# end

require 'shellwords'

module MyTerminalAlias

  def self.set_alias(alias_name, command)
    if ENV['SHELL'] == '/bin/zsh'
      if command == "bundle exec rspec"
        puts "Way to test bro"
      elsif command == "rails db:drop"
        "do you even know how to database bro??"
      end
      `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
      puts "Hello World"
    else
      puts "Unsupported shell. Alias not set."
    end
  end

end

if "bers"
  puts "way to test bro"
end

# MyTerminalAlias.set_alias("ber", "bundle exec rspec")

# class HypeMan
#   def self.hi
#     puts "Hello world!"
#   end
# end