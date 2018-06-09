local MODNAME = "PyStart"

local function Init()
	global.PyStart = global.PyStart or {}
	global.PyStart.PlayerList = global.PyStart.PlayerList or {}
end

function ON_INIT()
	Init()
			
	for _,player in pairs(game.players) do
		give_item(player)
	end
end

function ON_CONFIGURATION_CHANGED(data)
	Init()
	
	if NeedMigration(data,MODNAME) then
		local old_version = GetOldVersion(data,MODNAME)
		if old_version < "00.16.01" then
		end
	end
end	

function GIVE_ITEM(event)
	local player = game.players[event.player_index]
	give_item(player)
end	

function give_item(player)
	if Exists(player) then return end
	if not player.character then return end
	
	player.insert{name="jaw-crusher", count = 2}
	player.insert{name="botanical-nursery", count = 1}
	player.insert{name="tailings-pond", count = 2}
	player.insert{name="offshore-pump", count = 1}
	player.insert{name="boiler", count = 1}
	player.insert{name="steam-engine", count = 2}
	player.insert{name="pipe", count = 10}
	player.insert{name="wpu", count = 1}
	player.insert{name="distilator", count = 1}
	player.insert{name="small-electric-pole", count = 10}
	player.insert{name="quenching-tower", count = 1}
			
	table.insert(global.PyStart.PlayerList,player)
end

function Exists(player)
	for _,item in pairs(global.PyStart.PlayerList) do
		if item == player then return true end
	end
	return false
end

function NeedMigration(data,modname)
	if data 
	 and data.mod_changes 
	 and data.mod_changes[modname] 
	 and data.mod_changes[modname].old_version then 
		return true 
	end
	return false
end

function GetOldVersion(data,modname)
	return FormatVersion(data.mod_changes[modname].old_version)
end

function FormatVersion(version)
	return string.format("%02d.%02d.%02d", string.match(version, "(%d+).(%d+).(%d+)"))
end

script.on_init(ON_INIT)
script.on_configuration_changed(ON_CONFIGURATION_CHANGED)
script.on_event({on_player_joined_game,defines.events.on_player_created},GIVE_ITEM)