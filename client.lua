local QBCore = exports['qb-core']:GetCoreObject()
local shown = false

---functions
function ShowText(x)
	exports['okokTextUI']:Open(x, 'darkred', 'left')
end
function HideText()
	exports['okokTextUI']:Close()
end
function ShowNotif(x,y)
	exports['okokNotify']:Alert("Red Moon", x, 5000, y)
end

----threading
CreateThread(function()
	while true do
		-- draw every frame
		Wait(0)
		for k,v in pairs(Config.coords) do
			DrawMarker(Config.Blip, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, Config.colors[1], Config.colors[2], Config.colors[3], 50, false, true, 2, nil, nil, false)
			local pedCoords = GetEntityCoords(PlayerPedId())
			if (#(v - pedCoords)<Config.Distance+5)then
				if(#(v-pedCoords) < Config.Distance)then
					ShowText("[E] Spray To Get Zone")
					Shown = true
					if IsControlJustReleased(0,46) then
						TriggerServerEvent("hm-SprayNear","On",k)
					end
				elseif (Shown == true) then
					HideText()
					Shown = false
				end
			end
		end
		
	end
end)



RegisterNetEvent('hm-Start')
AddEventHandler('hm-Start', function(State,place)
	if (QBCore.Functions.GetPlayerData().gang.name == nil) or (QBCore.Functions.GetPlayerData().gang.name == 'none')then
		ShowNotif("You Are Not In A Gang","error")
	else
		TriggerServerEvent('spray',QBCore.Functions.GetPlayerData().gang.name,State,place)
	end
end)







-------Blips Manipulating
Citizen.CreateThread(function()
	for _, info in pairs(blips) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, info.id)
		SetBlipDisplay(info.blip, 4)
		SetBlipScale(info.blip, 1.0)
		SetBlipColour(info.blip, info.colour)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.gang[_])
		EndTextCommandSetBlipName(info.blip)
	end
end)

RegisterNetEvent('changeblip')
AddEventHandler('changeblip', function()
	for _, info in pairs(blips) do
		SetBlipColour(info.blip, 5)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(x[_])
		EndTextCommandSetBlipName(info.blip)
	end
end)



Citizen.CreateThread(function()
	while true do
		Wait(1000)
		TriggerServerEvent("houss:Fetchsql")
	end
end)