fx_version "cerulean"
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'SavSin'
lua54 'yes'
description 'Custom Blips for any need'

client_scripts {
    'client/*.lua',
}

shared_script {
    'Config.lua',
}

server_scripts {
    'server/*.lua',
}

version = "2.0.0"
