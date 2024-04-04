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
      `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
      puts "Hello World"
    else
      puts "Unsupported shell. Alias not set."
    end
  end

end

# MyTerminalAlias.set_alias("ber", "bundle exec rspec")

# class HypeMan
#   def self.hi
#     puts "Hello world!"
#   end
# end