fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Ju'
description 'Item Creator'
version '1.0.0'

server_scripts {
	'server/*.lua',
}

client_scripts {
	'client/*.lua',
    'client/utils.lua',
}

shared_scripts {
	'@ox_lib/init.lua',
	'shared/*.lua',
   	'locales/*.lua',
    'client/utils.lua',
}
