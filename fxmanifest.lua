fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Mascotte45'
description 'Simple resource that caches the most repetitive natives giving a huge performance boost!'
version '1.0.0'

-- What to run
client_script 'client/cl_cache.lua'
    
server_script 'server/sv_cache.lua'


exports {
	'getCacheData'
}

