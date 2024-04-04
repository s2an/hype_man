# frozen_string_literal: true

require_relative "hype_man/version"

# module HypeMan
#   class Error < StandardError; end
#   # Your code goes here...
# end

require 'shellwords'

module HypeMan

  # def self.set_alias(alias_name, command)
  #   if ENV['SHELL'] == '/bin/zsh'
  #     if command || alias_name == "bundle exec rspec"
  #       system("echo \"alias #{alias_name}='#{Shellwords.escape(command)}'\" >> ~/.zshrc")
  #       puts "Way to test bro"
  #     elsif command || alias_name == "rails db:drop"
  #       system("echo \"alias #{alias_name}='#{Shellwords.escape(command)}'\" >> ~/.zshrc")
  #       puts "do you even know how to database bro??"
  #       # `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
  #     elsif
  #       system("echo \"alias #{alias_name}='#{Shellwords.escape(command)}'\" >> ~/.zshrc")
  #       # `echo "alias #{alias_name}='#{Shellwords.escape(command)}'" >> ~/.zshrc`
  #       puts "escape test"
  #     end
  #   else
  #     puts "Unsupported shell. Alias not set."
  #   end
  # end
  
  def self.hype_hype(command)
    if ENV['SHELL'] == '/bin/zsh'
      if command == "bundle exec rspec"
        puts "Way to test bro"
      elsif
        command == "rails db:drop"
        puts "do you even know how to database bro??"
      elsif
        command == "git log"
        puts "What do you want to see bro..."
      end
    else
      puts "II: Unsupported shell."
    end
  end

end

# if "bers"
#   puts "other outside method test"
# end

# HypeMan.set_alias("glog", "git log")

# class HypeMan
#   def self.hi
#     puts "Hello world!"
#   end
# end

# README
# update lib/hype_man/version
# gem build hype_man.gemspec
# gem install hype_man