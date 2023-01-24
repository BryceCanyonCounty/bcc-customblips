local VORPutils = {}

TriggerEvent("getUtils", function(utils)
    VORPutils = utils
end)

local playerJob = nil

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    TriggerServerEvent("mwg_customblips:getJob")
end)

RegisterNetEvent("mwg_customblips:returnJob", function(job)
    CreateBlips(job)
end)

RegisterNetEvent("vorp:setjob")
AddEventHandler("vorp:setjob", function(job)
    CreateBlips(job)
end)

function CreateBlips(job)
    Citizen.CreateThread(function()
        for k, v in pairs(Config.Blips) do
            if v.Jobs == 0 or tableContains(v.Jobs, job) then
                if v.blipHandle == nil then
                    v.blipHandle = VORPutils.Blips:SetBlip(v.Name, v.BlipName, 0.2, v.Pos.x, v.Pos.y, v.Pos.z)
                end
            elseif v.Jobs ~= 0 and not tableContains(v.Jobs, job) and v.blipHandle ~= nil then
                v.blipHandle:Remove()
                v.blipHandle = nil
            end
        end
    end)
end

function tableContains(table, key)
    local isPresent = false
    for _, v in pairs(table) do
        if v == key then
            isPresent = true
        end
    end
    return isPresent
end

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    for _, v in pairs(Config.Blips) do
        if v.blipHandle then
            v.blipHandle:Remove()
        end
    end
end)
