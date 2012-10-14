#!/usr/bin/ruby

class Connection
	def list
		View::prompt
	end

	def select
		@selection = gets.chomp
	end

	# This should select which server you have chosen by id or server name.
	# Executing the program should accept an argument to connect without displaying the prompt.
	def connect(choice)
		servers = Server::list
		server = servers.find{|f| f[:id] == choice}	
		if server.nil?
			puts "Invalid selection."
		else
			puts "Connecting to #{server[:name]}..."
			system "ssh #{server[:address]}"
		end
	end
end
