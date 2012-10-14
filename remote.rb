#!/usr/bin/ruby
# require "/Users/michael/bin/remote.rb"
require 'remote_files/remote_class'

connect = Remote.new
connect.prompt
connect.connect(gets.chomp)