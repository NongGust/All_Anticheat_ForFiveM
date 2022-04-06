description 'sieeeemanko'

version '2.0' 

server_script {		
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server.lua'
}

client_script {
	'client.lua',
	'ss.js',
	'config.lua'
}


