local Core = exports.vorp_core:GetCore()

RegisterNetEvent("vorp:SelectedCharacter", function(charid)
    CreateBips()
 end)

function CreateBlips()
    while true do
        local player = PlayerPedId()
        local pCoords = GetEntityCoords(player)
        for k, BlipSettings in pairs(Config.Blips) do
          local removeBlip = false

          -- Job/Group Check
          if(BlipSettings.Restriction > 0 and
            next(BlipSettings.Requirements) and
            not Core.Callback.TriggerAwait('bcc-customblips:CheckRequirements', BlipSettings.Restriction, BlipSettings.Requirements)) then
            removeBlip = true
            goto END
          end

          -- Distance Checks
          if BlipSettings.BlipDistance < 1 or BlipSettings.BlipDistance == nil then goto NEXT end
          
          local distance = #(pCoords - BlipSettings.Pos)
          if distance <= BlipSettings.BlipDistance then goto NEXT end

          if distance > BlipSettings.BlipDistance then
            removeBlip = true
            goto END
          end

          ::NEXT::
          if BlipSettings.BlipHandle == nil then
              BlipSettings.BlipHandle = AddBlip(BlipSettings)
          end

          ::END::
          if BlipSettings.BlipHandle and removeBlip then
            RemoveBlip(BlipSettings.BlipHandle)
            BlipSettings.BlipHandle = nil
          end

        Wait(1000)
    end
end

function ClearBlips()
  for _, v in pairs(Config.Blips) do
    if v.BlipHandle then
      RemoveBlip(v.BlipHandle)
      v.BlipHandle = nil
    end
  end
end

function AddBlip(BlipSettings)
  local blipEntity = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, BlipSettings.Pos) -- BlipAddForCoords
  SetBlipSprite(blipEntity, BlipSettings.BlipHash, 1)
  SetBlipScale(blipEntity, 0.2)
  Citizen.InvokeNative(0x9CB1A1623062F402, blipEntity, BlipSettings.Name)                                -- SetBlipName
  Citizen.InvokeNative(0x662D364ABF16DE2F, blipEntity, joaat(Config.BlipColors[BlipSettings.BlipColor])) -- BlipAddModifier
  return blipEntity
end

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    ClearBlips()
end)