local Core = exports.vorp_core:GetCore()

Core.Callback.Register('bcc-customblips:CheckRequirements', function(source, cb, restriction, requirements)
  -- Error Checking
  if type(requirements) ~= 'table' then throw('Requirements must be a table', 2) end
  if type(restriction) ~= 'number' then throw('Restriction must be a number', 2) end
  
  local src = source
  local user = Core.getUser(src)
  if not user then return cb(false) end

  local character = user.getUsedCharacter
  local checkValue = restriction == 1 and character.job or character.group

  cb(TableContains(requirements, checkValue))
end)

function TableContains(table, value)
  for _, v in pairs(table) do
    if v == value then
      return true
    end
  end
  return false
end