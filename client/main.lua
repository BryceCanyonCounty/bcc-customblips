RegisterNetEvent("vorp:SelectedCharacter") -- Blips load after selecting character
AddEventHandler("vorp:SelectedCharacter", function(charid)
    CreatBlips()
end)

function CreatBlips()
    Citizen.CreateThread(function()
        for k, v in pairs(Config.Blips) do
            local blip = Citizen.InvokeNative(0x554D9D53F696D002,1664425300, v.Pos.x, v.Pos.y, v.Pos.z)
            SetBlipSprite(blip, v.ID, true)
            SetBlipScale(blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
        end
    end)
end