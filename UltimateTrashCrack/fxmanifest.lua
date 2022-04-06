fx_version 'adamant'

game 'gta5'

description 'UltimateAC'

version '2.0' 

server_script {		
	"code.txt",
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'configs/serverconfig.lua',
	'server.lua'
}

client_script {
	'client.lua'
}

shared_script {
	'configs/config.lua'
}

