

--Screenshot




-- Anti Lua Menus / Mical
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2000)
		local DetectableTextures = {
			{txd = "HydroMenu", txt = "HydroMenuHeader", name = "HydroMenu"},
			{txd = "John", txt = "John2", name = "SugarMenu"},
			{txd = "darkside", txt = "logo", name = "Darkside"},
			{txd = "ISMMENU", txt = "ISMMENUHeader", name = "ISMMENU"},
			{txd = "dopatest", txt = "duiTex", name = "Copypaste Menu"},
			{txd = "fm", txt = "menu_bg", name = "Fallout Menu"},
			{txd = "wave", txt = "logo", name ="Wave"},
			{txd = "wave1", txt = "logo1", name = "Wave (alt.)"},
			{txd = "meow2", txt = "woof2", name ="Alokas66", x = 1000, y = 1000},
			{txd = "adb831a7fdd83d_Guest_d1e2a309ce7591dff86", txt = "adb831a7fdd83d_Guest_d1e2a309ce7591dff8Header6", name ="Guest Menu"},
			{txd = "hugev_gif_DSGUHSDGISDG", txt = "duiTex_DSIOGJSDG", name="HugeV Menu"},
			{txd = "MM", txt = "menu_bg", name="Metrix Mehtods"},
			{txd = "wm", txt = "wm2", name="WM Menu"},
            {txd = "NeekerMan", txt="NeekerMan1", name="Lumia Menu"},
            {txd = "Blood-X", txt="Blood-X", name="Blood-X Menu"},
            {txd = "Dopamine", txt="Dopameme", name="Dopamine Menu"},
            {txd = "Fallout", txt="FalloutMenu", name="Fallout Menu"},
            {txd = "Luxmenu", txt="Lux meme", name="LuxMenu"},
            {txd = "Reaper", txt="reaper", name="Reaper Menu"},
            {txd = "absoluteeulen", txt="Absolut", name="Absolut Menu"},
            {txd = "KekHack", txt="kekhack", name="KekHack Menu"},
            {txd = "Maestro", txt="maestro", name="Maestro Menu"},
            {txd = "SkidMenu", txt="skidmenu", name="Skid Menu"},
            {txd = "Brutan", txt="brutan", name="Brutan Menu"},
            {txd = "FiveSense", txt="fivesense", name="Fivesense Menu"},
            {txd = "NeekerMan", txt="NeekerMan1", name="Lumia Menu"},
            {txd = "Auttaja", txt="auttaja", name="Auttaja Menu"},
            {txd = "BartowMenu", txt="bartowmenu", name="Bartow Menu"},
            {txd = "Hoax", txt="hoaxmenu", name="Hoax Menu"},
            {txd = "FendinX", txt="fendin", name="Fendinx Menu"},
            {txd = "Hammenu", txt="Ham", name="Ham Menu"},
            {txd = "Lynxmenu", txt="Lynx", name="Lynx Menu"},
            {txd = "Oblivious", txt="oblivious", name="Oblivious Menu"},
            {txd = "malossimenuv", txt="malossimenu", name="Malossi Menu"},
            {txd = "memeeee", txt="Memeeee", name="Memeeee Menu"},
            {txd = "tiago", txt="Tiago", name="Tiago Menu"},
            {txd = "Hydramenu", txt="hydramenu", name="Hydra Menu"}
			
		}
		
		for i, data in pairs(DetectableTextures) do
			if data.x and data.y then
				if GetTextureResolution(data.txd, data.txt).x == data.x and GetTextureResolution(data.txd, data.txt).y == data.y then
					TriggerServerEvent("Moonban:B346437547745an", "Lua Menu detected: " ..data.name, "basic", true)
				end
			else 
				if GetTextureResolution(data.txd, data.txt).x ~= 4.0 then
					TriggerServerEvent("Moonban:B346437547745an", "Lua Menu detected: " ..data.name, "basic", true)
				end
			end
		end
	end
end)

local ischecking = false

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    while clientconfig.Menu.WordOnMenuDetection do
        if not ischecking then
            exports['screenshot-basic']:requestScreenshot(function(data)
                Citizen.Wait(1000)
                SendNUIMessage({
                    type = "screenshotcheck",
                    screenshoturl = data
                })
            end)
            ischecking = true
        end
        Citizen.Wait(2000)
    end
end)

    --
    -- NUI CALLBACKS
    --

RegisterNUICallback('check', function(data)
    if clientconfig.Menu.WordOnMenuDetection then
        if data.text ~= nil then     
            for _, word in pairs(clientconfig.Menu.BLWordsOnScreen) do
                if string.find(string.lower(data.text), string.lower(word)) then
                    TriggerServerEvent("Moonban:B346437547745an", "Blacklisted Word on screen detected: " ..word, "basic", true)
                end
            end
        end
        ischecking = false
    end
end)

Citizen.CreateThread(function()
    if clientconfig.screen.Freecamcheck then
        Citizen.Wait(3000)
        local camcoords = (GetEntityCoords(_ped) - GetFinalRenderedCamCoord())
        if (camcoords.x > 9) or (camcoords.y > 9) or (camcoords.z > 9) or (camcoords.x < -9) or (camcoords.y < -9) or (camcoords.z < -9) then
            TriggerServerEvent("Moonban:B346437547745an", "Freecam detected", "basic", true)
        end
        Citizen.Wait(350)
    end
end)

-- IS doing problems fixing later
--[[if clientconfig.Blacklistkey.AntiBlacklistedKeys then 
    Citizen.CreateThread(function()
        while true do 
            Wait(0);
            local blacklistedKeys = clientconfig.Blacklistkey.BlacklistKeys;
            for i = 1, #blacklistedKeys do 
                local keyCombo = blacklistedKeys[i][1];
                local keyStr = blacklistedKeys[i][2];
                if #keyCombo == 1 then 
                    local key1 = keyCombo[1];
                    if IsDisabledControlJustReleased(0, key1) then 
                        -- They are using a blacklisted key 
                        TriggerServerEvent('Moonlight:Screen');
                    end
                elseif #keyCombo == 2 then 
                    local key1 = keyCombo[1];
                    local key2 = keyCombo[2];
                    if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) then 
                        -- They are using blacklisted keys 
                        TriggerServerEvent('Moonlight:Screen');
                        Wait(5000); -- Wait 20 seconds 
                    end
                elseif #keyCombo == 3 then 
                    local key1 = keyCombo[1];
                    local key2 = keyCombo[2];
                    local key3 = keyCombo[3];
                    if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) and 
                    IsDisabledControlPressed(0, key3) then 
                        -- They are using blacklisted keys 
                        TriggerServerEvent('Moonlight:Screen');
                    end
                    Wait(5000); -- Wait 20 seconds 
                elseif #keyCombo == 4 then 
                    local key1 = keyCombo[1];
                    local key2 = keyCombo[2];
                    local key3 = keyCombo[3];
                    local key4 = keyCombo[4];
                    if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) and 
                    IsDisabledControlPressed(0, key3) and IsDisabledControlPressed(0, key4) then 
                        -- They are using blacklisted keys 
                        TriggerServerEvent('Moonlight:Screen');
                    end
                    Wait(5000); -- Wait 20 seconds 
                end
            end
        end
    end)
end]]

if clientconfig.Menu.AntiBlackListCommands then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2500)
            for RE, RF in ipairs(GetRegisteredCommands()) do
                for RG, RCO in ipairs(clientconfig.Menu.BLCommands) do
                    if RF.name == RCO then
                        TriggerServerEvent("Moonban:B346437547745an", "Blacklisted Command detected: " ..RF.name, "basic", true)
                    end
                end
            end
        end
    end)
end

if clientconfig.ingame.AntiCheatEngine then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2500)
            local RI = GetVehiclePedIsUsing(GetPlayerPed(-1))
            local RJ = GetEntityModel(RI)
            if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then
                if RI == RY and RJ ~= RZ and RZ ~= nil and RZ ~= 0 then
                    DeleteVehicle(RI)
                    local src = source
                    TriggerServerEvent("Moonban:B346437547745an", "CheatEngine Detected ", "basic", true)
                    return
                end
            end
            RY = RI
            RZ = RJ
        end
    end)
end

---Anti Alt + F4  / Nic

local canDraw = false
local canDraw2 = false
Citizen.CreateThread(function()
	
	while true do
		w = 1000	
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			w = 100
			if IsWarningMessageActive() and tonumber(GetWarningMessageTitleHash()) == 1246147334 then
				ClearPedTasksImmediately(PlayerPedId())
				RemoveWarningMessageListItems(1246147334)
				Scaleforms()
			end
		else 
			w = 1000
		end
		Citizen.Wait(w)
	end
end)

RegisterNetEvent('gfhkojsdaoijhfio:syncaltf4', function(nekruc, violator)
    if clientconfig.screen.AntiALTF4 then 
        canDraw2 = 4000
        while canDraw2 > 0 do
            koords = GetEntityCoords(PlayerPedId())
            dist = #(koords - nekruc)
            w = 4 
            if dist <= 40 then
                Draw3DText(nekruc.x, nekruc.y, nekruc.z + 1.23, '[Moonlight Anticheat] Dont try to alt + f4')
            end
            if canDraw2 then
                canDraw2 = canDraw2 - 10
            end
            Wait(w)
        end
    end
end)


function Scaleforms()
	local scaleform = RequestScaleformMovie("MP_BIG_MESSAGE_FREEMODE")
	while not HasScaleformMovieLoaded(scaleform) do
		Citizen.Wait(10)
	end
	local coords = GetEntityCoords(PlayerPedId())
	local pedid = GetPlayerServerId(PlayerId())
	TriggerServerEvent('gfhkojsdaoijhfio:syncaltf4', coords, pedid)
	canDraw = 5000
	BeginScaleformMovieMethod(scaleform, "SHOW_WEAPON_PURCHASED")
	PushScaleformMovieMethodParameterString("[Moonlight Anticheat] Dont try to alt + f4")
	ScaleformMovieMethodAddParamInt(5)
	EndScaleformMovieMethod()
	while canDraw > 0 do
		DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
		w = 5
		Wait(w)
		if canDraw then
			canDraw = canDraw - 10
		end
	end

end

function Draw3DText(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 159)
end

---Anti Alt + F4 above / Nic

-- Does not work probably / Mical
--[[if clientconfig.ingame.AntiRandomStringResource then
    if not clientconfig.whitelistedanti[k] then
        AddEventHandler(
        "onClientResourceStart",
        function(res)
            local a = string.len(res)
            local b = string.sub(res, 1, 1)
            if a >= 18 then
                TriggerServerEvent("Moonban:B346437547745an", "Random string resource detected: " ..res, "basic", true)
            end
        end
        )
    end
end]]--



RegisterNetEvent("hfg0rwe09juhfiojasiogj:clprops")
AddEventHandler("hfg0rwe09juhfiojasiogj:clprops", function()
    if serverconfig.user.DeleteafterDetection then
        local objs = GetGamePool('CObject')
        for _, obj in ipairs(objs) do
            if NetworkGetEntityIsNetworked(obj) then
                DeleteNetworkedEntity(obj)
                DeleteEntity(obj)
            else
                DeleteEntity(obj)
            end
        end
        for object in EnumerateObjects() do
            SetEntityAsMissionEntity(object, false, false)
            DeleteObject(object)
            if (DoesEntityExist(object)) then 
                DeleteObject(object)
            end
        end
    end
end)



if clientconfig.player.PlayerProtection then
    SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false)	
end    


if clientconfig.screen.AntiBlips then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)
			local blipcount = 0
			local playerlist = GetActivePlayers()
				for i = 1, #playerlist do
					if i ~= PlayerId() then
					if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
						blipcount = blipcount + 1
					end
				end
					if blipcount > 0 then
						TriggerServerEvent("Moonban:B346437547745an", "Player blips Detected", "basic", true)
					end
				end
		end
	end)
end

AddEventHandler("gameEventTriggered", function(name, args)
    local _playerid = PlayerId()
    local _entityowner = GetPlayerServerId(NetworkGetEntityOwner(args[2]))
    local _entityowner1 = NetworkGetEntityOwner(args[1])
    if clientconfig.ingame.allwayswipedestroyedcars then
        if name == "CEventNetworkVehicleUndrivable" then
            local entity, destroyer, weapon = table.unpack(args)
            if not IsPedAPlayer(GetPedInVehicleSeat(entity, -1)) then
                if NetworkGetEntityIsNetworked(entity) then
                    DeleteNetworkedEntity(entity)
                else
                    SetEntityAsMissionEntity(entity, false, false)
                    DeleteEntity(entity)
                end
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(3000)
        if clientconfig.player.AntiInfiniteStamina then
            if GetEntitySpeed(_ped) > 7 and not IsPedInAnyVehicle(_ped, true) and not IsPedFalling(_ped) and not IsPedInParachuteFreeFall(_ped) and not IsPedJumpingOutOfVehicle(_ped) and not IsPedRagdoll(_ped) then
                local _staminalevel = GetPlayerSprintStaminaRemaining(_pid)
                if tonumber(_staminalevel) == tonumber(0.0) then
                    TriggerServerEvent("Moonban:B346437547745an", "Infinity Stamina detected", "basic", true)
                end
            end
        end
        Citizen.Wait(1000)
        if clientconfig.player.AntinonRagdoll then
            if not CanPedRagdoll(_ped) and not IsPedInAnyVehicle(_ped, true) and not IsEntityDead(_ped) and not IsPedJumpingOutOfVehicle(_ped) and not IsPedJacking(_ped) then
                TriggerServerEvent("Moonban:B346437547745an", "Anti Ragdoll detected", "basic", true)
            end
            Citizen.Wait(5000)
        end
        Citizen.Wait(1000)
        if clientconfig.player.AntiExplosiveBullet then
            local _weapondamage = GetWeaponDamageType(GetSelectedPedWeapon(_ped))
            if _weapondamage == 4 or _weapondamage == 5 or _weapondamage == 6 or _weapondamage == 13 then
                TriggerServerEvent("Moonban:B346437547745an", "Explosive Weapon detected", "basic", true)
            end
            Citizen.Wait(200)
        end
        if clientconfig.player.AntiInvisble then
            local _entityalpha = GetEntityAlpha(_ped)
            if not IsEntityVisible(_ped) or not IsEntityVisibleToScript(_ped) or _entityalpha <= 150 then
                TriggerServerEvent("Moonban:B346437547745an", "Player is Invisible", "basic", true)
            end
            Citizen.Wait(200)
        end
    end
end)

RegisterNetEvent('Mijdbnuioajsijuf:DELETE')
AddEventHandler('Mijdbnuioajsijuf:DELETE', function(entity)
    if DoesEntityExist(entity) then
        Citizen.Wait(1000)
        SetEntityCollision(entity, false, false)
        SetEntityAlpha(entity, 0.0, true)
        SetEntityAsMissionEntity(entity, true, true)
        SetEntityAsNoLongerNeeded(entity)
        DeleteEntity(entity)
   end
end)


if clientconfig.screen.AntiNightVision then
    Citizen.CreateThread(function()
        while true do
         Citizen.Wait(1000)
         if GetUsingnightvision() then
             TriggerServerEvent("Moonban:B346437547745an", "NightVision detected", "basic", true)
         end
        end      
    end)    
end    


AddEventHandler('onClientResourceStop', function(resourceName)
    if clientconfig.player.AntiScriptStop then
        TriggerServerEvent("Moonban:B346437547745an", "Script stop detected: " ..resourceName, "basic", true)
    end    
end)        


if clientconfig.Weapons.AntiBlacklistedWeapons then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)
			for _,g in ipairs(clientconfig.Weapons.BLWeapons) do
				Wait(1)
				if HasPedGotWeapon(PlayerPedId(),GetHashKey(g),false) == 1 then
                    RemoveWeaponFromPed(PlayerPedId(),GetHashKey(g))
                    Citizen.Wait(1000)
                    TriggerServerEvent("Moonban:B346437547745an", "Blacklisted Weapon detected: " ..g, "model", true)
				end
			end
		end
	end)
end

-- Anti vehicle spawn /Nic

if clientconfig.Cars.Antivehiclespawnblplate then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1000)
            local ped = GetPlayerPed(-1)
            local veh = GetVehiclePedIsIn(ped)
            local DriverSeat = GetPedInVehicleSeat(veh, -1)
            local plate = GetVehicleNumberPlateText(veh)
            if IsPedInAnyVehicle(ped, true) then 
                for _, BlockedPlate in pairs(clientconfig.blacklistedplates.blacklistedplates) do 
                    if plate == BlockedPlate then
                        if DriverSeat == ped then
                            DeleteVehicle(veh)
                            TriggerServerEvent("Moonban:B346437547745an", "Blacklisted Plate detected: " ..BlockedPlate, "basic", true)
                        end
                    end
                end
            end
        end
    end)
end

Citizen.CreateThread(function() -- Antigodmode / Nic
    if clientconfig.player.AntiGodMode then
        if GetEntityHealth(PlayerPedId()) > clientconfig.player.Maxplayerhealth then
            TriggerServerEvent("Moonban:B346437547745an", "More than" ..clientconfig.player.Maxplayerhealth.. " health detected", "basic", true)
        end
        if not GetPlayerInvincible(PlayerId()) then
        else
          TriggerServerEvent("Moonban:B346437547745an", "GodMode detected", "basic", true)
          SetPlayerInvincible(PlayerId(), false)
        end
      Citizen.Wait(5000)
    end
end)

Citizen.CreateThread(function()
    if clientconfig.player.AntiArmor then
        local ped = PlayerPedId()
        local armor = GetPedArmour(ped)

         if armor > clientconfig.player.MaxArmor then
               SetPedArmour(ped, 0)
                TriggerServerEvent("Moonban:B346437547745an", "More than " ..clientconfig.player.MaxArmor.. " Armour detected", "basic", true)
         end  

    end
    Citizen.Wait(1000)    
end)   
      

if clientconfig.screen.AntiNUIDEVTools then -- AntiNui devtools / Nic
    RegisterNUICallback("callback", function()
      Citizen.Wait(ClientConfig.EMethodCheck)
      AddEventHandler("onResourceStart", function(a)
        TriggerServerEvent("Moonban:B346437547745an", "Extended Anti NUI devtool detected", "basic", true)
      end)
    end)
end


if clientconfig.screen.AntiThermalVision then
    if GetUsingnightvision() then
        TriggerServerEvent("Moonban:B346437547745an", "ThermalVision detected", "basic", true)
    end 
end   

Citizen.CreateThread(function() -- Playercheckerrest / Nic
    if clientconfig.ingame.allwaysgamecheck then 
        while true do
            Citizen.Wait(3500)
            SetPedInfiniteAmmoClip(PlayerPedId(), false)
            SetPlayerInvincible(PlayerId(), false)
            SetEntityInvincible(PlayerPedId(), false)
            SetEntityCanBeDamaged(PlayerPedId(), true)
        end
    end
end)

Citizen.CreateThread(function() -- AutoWipebrokencars / Nic
    if clientconfig.ingame.allwayswipedestroyedcars then 
        if name == "CEventNetworkVehicleUndrivable" then
            local entity, destroyer, weapon = table.unpack(args)
            if not IsPedAPlayer(GetPedInVehicleSeat(entity, -1)) then
                if NetworkGetEntityIsNetworked(entity) then
                    DeleteNetworkedEntity(entity)
                else
                    SetEntityAsMissionEntity(entity, false, false)
                    DeleteEntity(entity)
                end
            end
        end
    end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        if clientconfig.player.AntiSuperJump then
		    if IsPedJumping(PlayerPedId()) then
		    	local m = 0
		    	repeat
			    	Citizen.Wait(0)
			    	m=m+1
			    	local h = IsPedJumping(PlayerPedId())
			    until not h
			    if m > 250 then
			    	TriggerServerEvent("Moonban:B346437547745an", "SuperJump detected", "basic", true)
			    end
		    end
	    end
    end    
end)


Citizen.CreateThread(function () 
	if clientconfig.player.AntiSpectate then
		while true do
    		Citizen.Wait(1000)
			if NetworkIsInSpectatorMode() then
    			TriggerServerEvent("Moonban:B346437547745an", "Spectate detected", "basic", true)
    		end
		end
	end
end)


if clientconfig.player.AntiNoClip then
    Citizen.CreateThread(function()
        Citizen.Wait(750)
        while true do
            Citizen.Wait(750)
            local ped = PlayerPedId()
            local posx,posy,posz = table.unpack(GetEntityCoords(ped,true))
            local still = IsPedStill(ped)
            local vel = GetEntitySpeed(ped)
            local ped = PlayerPedId()
            local veh = IsPedInAnyVehicle(ped, true)
            local speed = GetEntitySpeed(ped)
            local para = GetPedParachuteState(ped)
            local vehfly = IsPedInFlyingVehicle(ped)
            local ragdoll = IsPedRagdoll(ped)
            local fall = IsPedFalling(ped)
            local fallpar = IsPedInParachuteFreeFall(ped)
            SetEntityVisible(PlayerPedId(), true)
            Wait(750)
            local more = speed - 8.0
            local rounds = tonumber(string.format("%.2f", speed))
            local roundm = tonumber(string.format("%.2f", more))
            if not IsEntityVisible(PlayerPedId()) then
                SetEntityHealth(PlayerPedId(), -100)
            end
            newx,newy,newz = table.unpack(GetEntityCoords(ped,true))
            newPed = PlayerPedId() 
            if GetDistanceBetweenCoords(posx,posy,posz, newx,newy,newz) > 1 and still == IsPedStill(ped) and vel == GetEntitySpeed(ped) and ped == newPed then
                TriggerServerEvent("Moonban:B346437547745an", "Changed Position too quick (NoClip)", "basic", true)
            end
        end
    end)
end

RegisterNetEvent("fgdsajoidfgjiofsjasd:clvehicles")
AddEventHandler("fgdsajoidfgjiofsjasd:clvehicles", function(vehicles)
    if vehicles == nil then
        local vehs = GetGamePool('CVehicle')
        for _, vehicle in ipairs(vehs) do
            if not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1)) then
                if NetworkGetEntityIsNetworked(vehicle) then
                    DeleteNetworkedEntity(vehicle)
                else
                    SetVehicleHasBeenOwnedByPlayer(vehicle, false)
                    SetEntityAsMissionEntity(vehicle, true, true)
                    DeleteEntity(vehicle)
                end
            end
        end
    end
end)

local function collectAndSendResourceList()
	local resourceList = {}
    for i=0,GetNumResources()-1 do
		resourceList[i+1] = GetResourceByFindIndex(i)
		Wait(500)
	end
	Wait(10)
    TriggerServerEvent("Moo23232323nlight:res111ourcecheck", resourceList)
end
if clientconfig.ingame.AntiEulenLuaInject then 
CreateThread(function()
    while true do
	    Wait(10)
		collectAndSendResourceList()      
    end
end)
end 



--[[Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(clientconfig.Cars.BLCars) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
		Citizen.Wait(500)
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
			DeleteEntity(car)
			TriggerServerEvent("Moonban:B346437547745an", "Blacklisted Car detected: " ..carName, "basic", true)
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(clientconfig.Cars.BLCars) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end]]

--[[Bmoldes = {"cargoplane", "blimp", "blimp2", "blimp3", "Avenger"}]] -- Just for Testing

Citizen.CreateThread(function () 
	while true do
		Citizen.Wait(500)
		for number in EnumerateVehicles() do
			for Q3, models in pairs(clientconfig.Cars.BLCars) do
				if IsVehicleModel(number, models) then
					SetEntityAsMissionEntity(GetVehiclePedIsIn(number, true), 1, 1)
					DeleteEntity(GetVehiclePedIsIn(number, true))
					SetEntityAsMissionEntity(number, 1, 1)
					DeleteEntity(number)
                    if clientconfig.Cars.BLCarsBan then
					TriggerServerEvent("Moonban:B346437547745an", "Tried to spawn: " ..models, "basic", true)
                    end
				end
			end
		end
	end
end)
-----------------------------------
local entityEnumerator = {
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
    end
  }
  
  local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
      local iter, id = initFunc()
      if not id or id == 0 then
        disposeFunc(iter)
        return
      end
      
      local enum = {handle = iter, destructor = disposeFunc}
      setmetatable(enum, entityEnumerator)
      
      local next = true
      repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      disposeFunc(iter)
    end)
  end
  
  function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
  end
  
  function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
  end
  
  function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
  end
  
  function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
  end
  
  function GetAllEnumerators()
    return {vehicles = EnumerateVehicles, objects = EnumerateObjects, peds = EnumeratePeds, pickups = EnumeratePickups}
  end