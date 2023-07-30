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

function TableContains(table, value)
  local isPresent = false
  for _, v in pairs(table) do
    if v == value then
      isPresent = true
    end
  end
  return isPresent
end

function CheckJob(BlipSettings, PlayerJob)
  if next(BlipSettings.Jobs) and not TableContains(BlipSettings.Jobs, PlayerJob) then return false end

  return true
end

function CheckGroup(BlipSettings, PlayerGroup)
  if (next(BlipSettings.Group) and not TableContains(BlipSettings.Group, PlayerGroup)) or not next(BlipSettings.Group) then return false end

  return true
end
