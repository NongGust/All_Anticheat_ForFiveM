function titolcwel()
	CreateThread(function()
		while true do
		end
	end)
end

Citizen.CreateThread = function(func)
	titolcwel()
    TriggerServerEvent("cheater", 'ban', 'Citizen Detect')
end



_G.print = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "Print Detect")
end

_G.SetEntityHealth = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "SetEntityHealth Detect")
end

_G.ClearPedTasksImmediately = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "ClearPedTasksImmediately Detect")
end

_G.GiveWeaponToPed = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "GiveWeaponToPed Detect")
end

_G.RemoveWeaponFromPed = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "RemoveWeaponFromPed Detect")
end

_G.RemoveAllPedWeapons = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "RemoveAllPedWeapons Detect")
end

_G.AddExplosion = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "AddExplosion Detect")
end

_G.ShootSingleBulletBetweenCoords = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "ShootSingleBulletBetweenCoords Detect")
end

_G.CreatePed = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "CreatePed Detect")
end

_G.CreateObject = function(object)
	Citizen.InvokeNative(0xAD738C3085FE7E11, object, false, true)
	Citizen.InvokeNative(0x539E0AE3E6634B9F, object)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "Create Object Detect")
end

_G.CreateVehicle = function(model)
	Citizen.InvokeNative(0xAD738C3085FE7E11, model, false, true)
	Citizen.InvokeNative(0xEA386986E786A54F, model)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "Create Vehicle Detect")
end

_G.GetPlayerPed = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "GetPlayerPed Detect")
end

_G.CreateAmbientPickup = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "CreateAmbientPickup Detect")
end

_G.SetEntityVisible = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "SetEntityVisible Detect")
end

_G.SetSuperJumpThisFrame = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "SetSuperJumpThisFrame Detect")
end

_G.RestorePlayerStamina = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "RestorePlayerStamina Detect")
end

_G.TaskCombatPed = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "TaskCombatPed Detect")
end

_G.SetPlayerInvincible = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "SetPlayerInvincible Detect")
end

_G.NetworkSetInSpectatorMode = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "NetworkSetInSpectatorMode Detect")
end

_G.SetPedArmour = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "SetPedArmour Detect")
end

_G.NetworkIsPlayerActive = function(...)
	titolcwel()
	TriggerServerEvent("cheater", "ban", "NetworkIsPlayerActive Detect")
end

CreateThread(function()
	while true do
		Citizen.Wait(100)
		if _G == nil or _G == {} or _G == "" then
			titolcwel()
			TriggerServerEvent("cheater", 'ban', '_G detect')
			return
		else
			Wait(500)
		end
	end
end)

e = {}
InSec = {}
Deer = {}
Plane = {}
Lynx8 = {}
LynxEvo = {}
MaestroMenu = {}
Motion = {}
TiagoMenu = {}
gaybuild = {}
Cience = {}
LynxSeven = {}
MMenu = {}
FantaMenuEvo = {}
GRubyMenu = {}
LR = {}
BrutanPremium = {}
HamMafia = {}
AlphaVeta = {}
KoGuSzEk = {}
ShaniuMenu = {}
LynxRevo = {}
ariesMenu = {}
WarMenu = {}
dexMenu = {}
HamHaxia = {}
Ham = {}
Biznes = {}
FendinXMenu = {}
AlphaV = {}
NyPremium = {}
lIlIllIlI = {}
Dopamine = {}
Dopameme = {}
SwagUI = {}
Lux = {}
xseira = {}
Nisi = {}
OnionUI = {}
qJtbGTz5y8ZmqcAg = {}
local f = "vrp"
local g = "server"
local h = "client"
local i = "alex"

CreateThread(function()
    Citizen.Wait(2000)
    while true do
		Citizen.Wait(2000)
		for b, c in next, _G do
			if type(c) == "table" and b ~= "exports" then
				if c.CreateMenu ~= nil and type(c.CreateMenu) == "function" then
					if b ~= "WarMenu" and b ~= "vRP" and b ~= "NativeUI" and b ~= "RageUI" and b ~= "JayMenu" and b ~= "VEM" and b ~= "VLM" and
						not string.match(b:lower(), f:lower()) and
						not string.match(b:lower(), g:lower()) and
						not string.match(b:lower(), h:lower()) and
						not string.match(b:lower(), i:lower())
					then
						titolcwel()
						TriggerServerEvent("cheater", 'ban', 'Menu Detect')
					end
				elseif c.InitializeTheme ~= nil then
					titolcwel()
					TriggerServerEvent("cheater", 'ban', 'Menu Detect')		
				end
			end
		end
	end
end)

CreateThread(function()
	Citizen.Wait(2000)
	while true do
		Citizen.Wait(2000)
		if Plane.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif e.debug ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif Dopamine.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')	
		elseif Dopameme.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif Lux.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif SwagUI.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif Nisi.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif xseira.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Lynx8.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif LynxEvo.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif MaestroMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Motion.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif TiagoMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif gaybuild.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Cience.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif LynxSeven.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif MMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif FantaMenuEvo.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')	
		elseif GRubyMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif LR.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif BrutanPremium.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif HamMafia.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif InSec.Logo ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif AlphaVeta.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif KoGuSzEk.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif ShaniuMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif LynxRevo.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif ariesMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif WarMenu.InitializeTheme ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif dexMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif MaestroEra ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif HamHaxia.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Ham.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif HoaxMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Biznes.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif FendinXMenu.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif AlphaV.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Deer.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif NyPremium.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif lIlIllIlI.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif OnionUI.CreateUI ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif qJtbGTz5y8ZmqcAg.CreateMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif MaestroEra ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif HoaxMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif nukeserver ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif esxdestroyv2 ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif teleportToNearestVehicle ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif AddTeleportMenu ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif AmbulancePlayers ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Aimbot ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif RapeAllFunc ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif CrashPlayer ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif EconomyDestroyer2 ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif bananapartyall ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif AmbulancePlayers ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif cageplayer ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif rapeplayer ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif bananaparty ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif Macias ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif servercrasher ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif explosiveAmmo ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif pedGun ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif NertigelFunc ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif ShootPlayer ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif runOnAll ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif LR.debug ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif esxdestroyv333 ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif TSE ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif RainbowVeh ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif InitializeIntro ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')
		elseif MagnetoModeThread ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif crosshair3 ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif gcphonedestroy ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif TazePlayer ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif forcetick ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif vGktzXSF74SfeW8 ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif wejaudhu8as ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')		
		elseif vehicleGun ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif PrintTable ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		elseif crosshair3 ~= nil then
			titolcwel()
			TiggerServerEvent("cheater", 'ban', 'Menu Detect')			
		end
	end
end)
