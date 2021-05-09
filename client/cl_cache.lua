-- Created by Mascotte45

-- Default cache data 
--
-- Don't remove anything from here unless you know what you are doing!
AddEventHandler('mascotte-cache:getCacheData', function(cb)
	cb(Cache)
end)

function getCacheData()
	return Cache
end


Cache = {}

Cache.ClientPlayerId = PlayerId()
Cache.ClientPedId = PlayerPedId()
Cache.PlayerFromServerId = GetPlayerFromServerId(Cache.ClientPlayerId)
Cache.GetPlayerPed = GetPlayerPed(Cache.PlayerFromServerId)



Cache.ClientGetEntityCoords = GetEntityCoords(Cache.ClientPedId) -- Get the player coords

Cache.IsPedOnFoot = IsPedOnFoot(Cache.PlayerPedId) -- True/False Is the player on foot or in a vehicle

Cache.PlayersLastVehicle = GetPlayersLastVehicle() -- Last vehicle player was in
Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.ClientPedId) -- True/False Is the player sitting in a vehicle?
Cache.GetVehiclePedIsCurrentlyIn = GetVehiclePedIsIn(Cache.ClientPedId, false) -- Vehicle Player is currently in 
Cache.IsPedInAnyVehicle = IsPedInAnyVehicle(Cache.PlayerPedId, false) -- True/False is player in any kind of vehicle


-- Static Data, so in other words, natives that will return the same data each time
-- It's ran through this thread so we can set it to the data above in the cache table
--
-- Don't remove anything from here unless you know what you are doing!

Citizen.CreateThread(function()

while true do

    Cache.ClientPlayerId = PlayerId()
    Cache.ClientPedId = PlayerPedId()
    Cache.PlayerFromServerId = GetPlayerFromServerId(Cache.ClientPlayerId)
    Cache.GetPlayerPed = GetPlayerPed(Cache.PlayerFromServerId)
   

    Citizen.Wait(1000) -- Might still be a little too fast, I think this data doesn't/shouldn't change?

end

end)

-- Dynamic Data. Data that changes regular and needs to be updated more often
-- It's ran through this thread so we can set it to the data above in the cache table
--
-- Don't remove anything from here unless you know what you are doing!

Citizen.CreateThread(function()

    while true do
    
    
        Cache.ClientGetEntityCoords = GetEntityCoords(Cache.ClientPedId)
    
        Cache.GetVehiclePedIsCurrentlyIn = GetVehiclePedIsIn(Cache.ClientPedId, false)
    
        Cache.IsPedInAnyVehicle = IsPedInAnyVehicle(Cache.ClientPlayerPedId, false)

        Cache.IsPedOnFoot = IsPedOnFoot(Cache.PlayerPedId)

        Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.ClientPedId)

        Cache.PlayersLastVehicle = GetPlayersLastVehicle()

        Citizen.Wait(1000)
    
    end


end)


