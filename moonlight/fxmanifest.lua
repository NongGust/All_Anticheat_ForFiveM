fx_version 'adamant'

version '1.0'

game 'gta5'

client_scripts {
    'configs/client_config.lua',
    'client/*.lua',
    "clientcode.lua"
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'configs/server_config.lua',
    'configs/client_config.lua',
    'server/main.lua'
}

ui_page 'index.html'

files {
    'index.html',
    'menudetect.js'
}

