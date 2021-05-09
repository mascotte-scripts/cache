-- Created by Mascotte45

Cache = {}

-- Player/Ped Id

Cache.ClientPlayerId = PlayerId()
Cache.ClientPedId = PlayerPedId()
Cache.PlayerFromServerId = GetPlayerFromServerId(Cache.ClientPlayerId)
Cache.GetPlayerPed = GetPlayerPed(Cache.PlayerFromServerId)


-- Coordinates

Cache.ClientGetEntityCoords = GetEntityCoords(Cache.ClientPedId) -- Get the player coords
Cache.ClientGetEntityHeading = GetEntityHeading(Cache.ClientPedId) -- Get the player heading

-- Menu Stuff

Cache.PauseMenuStatus = IsPauseMenuActive() -- True/False Is The pause menu open or closed?

-- Vehicle

Cache.IsInCopCar = IsPedInAnyPoliceVehicle(Cache.ClientPedId) -- True/False Is the Player In a Police Vehicle
Cache.IsPedOnFoot = IsPedOnFoot(Cache.PlayerPedId) -- True/False Is the player on foot or in a vehicle
Cache.PlayersLastVehicle = GetPlayersLastVehicle() -- Last vehicle player was in
Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.ClientPedId) -- True/False Is the player sitting in a vehicle?
Cache.GetVehiclePedIsCurrentlyIn = GetVehiclePedIsIn(Cache.ClientPedId, false) -- Vehicle Player is currently in 
Cache.IsPedInAnyVehicle = IsPedInAnyVehicle(Cache.PlayerPedId, false) -- True/False is player in any kind of vehicle


Citizen.CreateThread(function()

    while true do
   
        -- Player/Ped Id
            
        Cache.ClientPlayerId = PlayerId()
   
        Cache.ClientPedId = PlayerPedId()
    
        Cache.PlayerFromServerId = GetPlayerFromServerId(Cache.ClientPlayerId)
   
        Cache.GetPlayerPed = GetPlayerPed(Cache.PlayerFromServerId)
            
        -- Coordinates    
    
        Cache.ClientGetEntityCoords = GetEntityCoords(Cache.ClientPedId)
            
        Cache.ClientGetEntityHeading = GetEntityHeading(Cache.ClientPedId) 
            
        -- Menu Stuff
            
        Cache.PauseMenuStatus = IsPauseMenuActive()    
            
        -- Vehicle
            
        Cache.GetVehiclePedIsCurrentlyIn = GetVehiclePedIsIn(Cache.ClientPedId, false)
    
        Cache.IsPedInAnyVehicle = IsPedInAnyVehicle(Cache.ClientPlayerPedId, false)

        Cache.IsPedOnFoot = IsPedOnFoot(Cache.PlayerPedId)

        Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.ClientPedId)

        Cache.IsInCopCar = IsPedInAnyPoliceVehicle(Cache.ClientPedId)

        Cache.PlayersLastVehicle = GetPlayersLastVehicle()

        

        

        Citizen.Wait(200)
    
    end


end)


