-- Created by Mascotte45

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
Cache.ClientGetEntityHeading = GetEntityHeading(Cache.ClientPedId) -- Get the player heading

Cache.IsInCopCar = IsPedInAnyPoliceVehicle(Cache.ClientPedId) -- True/False Is the Player In a Police Vehicle
Cache.IsPedOnFoot = IsPedOnFoot(Cache.PlayerPedId) -- True/False Is the player on foot or in a vehicle

Cache.PauseMenuStatus = IsPauseMenuActive() -- True/False Is The pause menu open or closed?

Cache.PlayersLastVehicle = GetPlayersLastVehicle() -- Last vehicle player was in
Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.ClientPedId) -- True/False Is the player sitting in a vehicle?
Cache.GetVehiclePedIsCurrentlyIn = GetVehiclePedIsIn(Cache.ClientPedId, false) -- Vehicle Player is currently in 
Cache.IsPedInAnyVehicle = IsPedInAnyVehicle(Cache.PlayerPedId, false) -- True/False is player in any kind of vehicle




Citizen.CreateThread(function()

while true do

    Cache.ClientPlayerId = PlayerId()
    Cache.ClientPedId = PlayerPedId()
    Cache.PlayerFromServerId = GetPlayerFromServerId(Cache.ClientPlayerId)
    Cache.GetPlayerPed = GetPlayerPed(Cache.PlayerFromServerId)
    
    Citizen.Wait(1000) -- Might still be a little too fast, I think this data doesn't/shouldn't change?

end

end)



Citizen.CreateThread(function()

    while true do
    
    
        Cache.ClientGetEntityCoords = GetEntityCoords(Cache.ClientPedId)
    
        Cache.GetVehiclePedIsCurrentlyIn = GetVehiclePedIsIn(Cache.ClientPedId, false)
    
        Cache.IsPedInAnyVehicle = IsPedInAnyVehicle(Cache.ClientPlayerPedId, false)

        Cache.IsPedOnFoot = IsPedOnFoot(Cache.PlayerPedId)

        Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.ClientPedId)

        Cache.IsInCopCar = IsPedInAnyPoliceVehicle(Cache.ClientPedId)

        Cache.PlayersLastVehicle = GetPlayersLastVehicle()

        Cache.PauseMenuStatus = IsPauseMenuActive()

        Cache.ClientGetEntityHeading = GetEntityHeading(Cache.ClientPedId)

        Citizen.Wait(1000)
    
    end


end)


