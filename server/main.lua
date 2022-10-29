local VORPcore = {}

TriggerEvent("getCore", function(core)
  VORPcore = core
end)

RegisterServerEvent("mwg_customblips:getJob", function()
  local _source = source
  local User = VORPcore.getUser(_source)
  local Character = User.getUsedCharacter

  print(Character.job)
  TriggerClientEvent("mwg_customblips:returnJob", _source, Character.job)
end)
