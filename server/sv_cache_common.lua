AddEventHandler('mascotte-cache:getSharedObject', function(cb)
	cb(Cache)
end)

function getSharedObject()
	return Cache
end