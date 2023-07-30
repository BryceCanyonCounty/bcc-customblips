VORPCore = {}

local PlayerJob = nil
local PlayerGroup = nil

TriggerEvent('getCore', function(core)
    VORPCore = core
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    VORPCore.RpcCall('CheckPlayerJobGroup', function(result)
        PlayerJob = result.PlayerJob
        PlayerGroup = result.PlayerGroup
        CreateBlips()
    end)
end)

function CreateBlips()
    while true do
        local player = PlayerPedId()
        local pCoords = GetEntityCoords(player)
        for k, BlipSettings in pairs(Config.Blips) do
            if CheckJob(BlipSettings, PlayerJob) or (Config.UseGroups and CheckGroup(BlipSettings, PlayerGroup)) then
                local distance = #(pCoords - BlipSettings.Pos)

                -- Distance not enabled
                if BlipSettings.BlipDistance < 1 or BlipSettings.BlipDistance == nil then goto NEXT end

                -- Distance enabled and within range
                if distance <= BlipSettings.BlipDistance then goto NEXT end

                -- Distance enabled and out of range
                goto END

                ::NEXT::
                if BlipSettings.BlipHandle == nil then
                    BlipSettings.BlipHandle = AddBlip(BlipSettings)
                end

                ::END::
                if BlipSettings.BlipHandle and BlipSettings.BlipDistance > 1 then
                    if distance > BlipSettings.BlipDistance then
                        RemoveBlip(BlipSettings.BlipHandle)
                        BlipSettings.BlipHandle = nil
                    end
                end
            end
        end

        Wait(1000)
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    ClearBlips()
end)
