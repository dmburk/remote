# server_list

class Server
	def self.list
		list = [
			{
				:id => "1",
				:name => "Server 1",
				:address => "192.168.1.2"
			},
			{
				:id => "2",
				:name => "Server 2",
				:address => "192.168.1.3"
			}
		]
	end
end
