#!/usr/bin/ruby

class View
	def self.prompt
		Graphics::border
		puts "Which server would you like to connect to?"
		Server::list.each{|server| puts server[:id] + ". " + server[:name]}
		Graphics::border
		print "Select a number: "
	end
end

module Graphics
	def self.border
		50.times { print "=" }
		print "\n"
	end
end