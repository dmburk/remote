#!/usr/bin/ruby
# remote_class.rb

require 'remote_files/graphics'

class Remote
	# Servers
	# Class variable
	@@servers = [
		{
			:id => "1",
			:name => "Home Server",
			:address => "10.10.5.2"
		},
		{
			:id => "2",
			:name => "Livezen",
			:address => "livezen.net"
		}
	]

	def prompt
		Graphics::border
		puts "Which server would you like to connect to?"
		@@servers.each{|server| puts server[:id] + ". " + server[:name]}
		Graphics::border
		print "Select a number: "
	end

	def connect(choice)
		# servers.select or servers.find_all would produce arrays
		# servers.find produces 1 result
		selection = @@servers.find{|server| server[:id] == choice}	
		if selection.nil?
			puts "You did not make a valid selection."
		else
			puts "Connecting to #{selection[:name]}..."
			system "ssh #{selection[:address]}"
		end
	end
end
