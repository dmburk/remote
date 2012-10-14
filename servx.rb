#!/usr/bin/ruby
require "servx_controller.rb"
require "servx_model.rb"
require "servx_view.rb"

@connection = Connection.new
@connection.list
server = @connection.select
@connection.connect(server)



# View::prompt

# server = Connect.select
# server.connect

# connect = Remote.new
# connect.prompt
# connect.connect(gets.chomp)