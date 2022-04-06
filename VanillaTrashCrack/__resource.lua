description 'VanillaAC'

server_scripts{
	'config.lua',
	'config-s.lua',
	'server.lua',
	'tables/blacklistednames.lua',
	'tables/blacklistedweapons.lua',
	'tables/blacklistedwords.lua',
	'tables/blacklistedexplosions.lua',
	'main/install.lua'
} 

client_scripts {
	'config.lua',
	'client.lua',
	--BLACKLIST--
	'tables/blacklistedcars.lua',
	'tables/blacklistedweapons.lua',
	'tables/blacklistedpeds.lua'
}
