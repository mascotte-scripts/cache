fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Mascotte45'
description 'Simple resource that caches the most repetitive natives giving a huge performance boost!'
version '1.0.0'

-- What to run
client_scripts { 
	
	'client/common.lua',
	'client/cl_cache.lua'
	
	}
    


exports {
	'getCacheData'
}

