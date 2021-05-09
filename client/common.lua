AddEventHandler('mascotte-cache:getCacheData', function(cb)
	cb(Cache)
end)

function getCacheData()
	return Cache
end
