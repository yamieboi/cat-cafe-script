fx_version 'cerulean'
game 'gta5'

author 'Yamie#9680'

description 'Cat Cafe With Cars'

lua54 'yes'

shared_scripts {
	'config.lua'
}

client_scripts {
    'client.lua'

}
escrow_ignore {
    'config.lua',  -- Only ignore one file
}


--[[ client_scripts { 
"client.lua",
"config.lua"}

server_scripts { 
"server.lua",
"config.lua"
} ]]