#!/usr/bin/ruby
# Serv-X
# This script will display a list of servers and connect via SSH to the selected server.
require 'connection'

@connection = Connection.new
@connection.list
server = @connection.select
@connection.connect(server)
