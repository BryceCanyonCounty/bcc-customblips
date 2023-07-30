local VORPcore = {}

TriggerEvent("getCore", function(core)
  VORPcore = core
end)

VORPcore.addRpcCallback('CheckPlayerJobGroup', function(source, cb)
  local src = source
  local Character = VORPcore.getUser(src).getUsedCharacter
  local result = { PlayerJob = Character.job, PlayerGroup = Character.group }

  cb(result)
end)
