fx_version 'adamant'

game 'gta5'

description 'Reaper'

version '1.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config/client_cfg.lua',
	'client/client.lua',
}
server_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config/client_cfg.lua',
	'config/server_cfg.lua',
	'server/server.lua',
}
