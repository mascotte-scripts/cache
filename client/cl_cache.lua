-- Created by Mascotte45

local Cache = {}

CreateThread(function()

    while true do

        Cache.PlayerId = PlayerId()

        Cache.PlayerPed = PlayerPedId()

        Cache.PlayerServerId = GetPlayerFromServerId(Cache.PlayerId)

        Cache.PlayerCoords = GetEntityCoords(Cache.PlayerPed)

        Cache.PlayerHeading = GetEntityHeading(Cache.PlayerPed)

        Cache.PlayerVehicle = GetVehiclePedIsIn(Cache.PlayerPed, false)

        Cache.IsPlayerInVehicle = IsPedInAnyVehicle(Cache.PlayerPed, false)

        Cache.IsPlayerOnFoot = IsPedOnFoot(Cache.PlayerPedId)

        --Wouldn't this return the same thing as IsPLayerInAnyVehicle?
        --Cache.IsPedSittingInAnyVehicle = IsPedSittingInAnyVehicle(Cache.PlayerPed)

        Cache.IsPlayerInCopCar = IsPedInAnyPoliceVehicle(Cache.PlayerPed)

        Cache.PlayersLastVehicle = GetPlayersLastVehicle()

        Wait(2500)
    end
end)

exports('requestCache', function()
  return Cache
end)
