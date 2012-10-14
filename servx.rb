#!/usr/bin/ruby
# Serv-X
# This script will display a list of servers and connect via SSH to the selected server.
require "connection.rb"
require "servers.rb"
require "views.rb"

@connection = Connection.new
@connection.list
server = @connection.select
@connection.connect(server)

