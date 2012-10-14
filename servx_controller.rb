#!/usr/bin/ruby

class Connection
	def select
		@server = gets.chomp
	end

	def connect(server_id)
		selection = @servers.find{|server| server[:id] == @server_id}	
		if selection.nil?
			puts "You did not make a valid selection."
		else
			puts "Connecting to #{selection[:name]}..."
			system "ssh #{selection[:address]}"
		end
	end
end
