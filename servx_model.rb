# server_list

class Server
	def self.list
		list = [
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
	end
end
