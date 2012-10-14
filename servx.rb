#!/usr/bin/ruby
require "servx_controller.rb"
require "servx_model.rb"
require "servx_view.rb"

View::prompt

server = Connect.select
server.connect

# connect = Remote.new
# connect.prompt
# connect.connect(gets.chomp)