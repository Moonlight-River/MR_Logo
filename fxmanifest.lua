fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
games { 'rdr3' }
lua54 "yes"
author 'Moonlight River'
description 'MR_Logo - Custom HUD LOGO'
version '1.0.0'

ui_page "html/index.html"

files {
	"html/index.html",
	"html/style.css",
	"html/app.js",
	"html/logo.png"
}

shared_script "config.lua"
client_script "client/client.lua"

