local isSpawn = false
AddEventHandler("playerSpawned", function()
    isSpawn = true
    print('FIREAC : You have spawn and are being checked')
end)
RegisterNetEvent('FIREAC:DeleteEntity')
AddEventHandler('FIREAC:DeleteEntity', function(entity)
    if DoesEntityExist(entity) then
        Citizen.Wait(FIREACC.CitizenWait)
        SetEntityCollision(entity, false, false)
        SetEntityAlpha(entity, 0.0, true)
        SetEntityAsMissionEntity(entity, true, true)
        SetEntityAsNoLongerNeeded(entity)
        DeleteEntity(entity)
   end
end)
if FIREACC.AntiSpectate then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            if NetworkIsInSpectatorMode() then
                TriggerServerEvent("AntiSpectate", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Spectate", "Try For Spectate Player")
            end
        end
    end)
end
if FIREACC.ThermalVision then
Citizen.CreateThread(function ()
    Citizen.Wait(FIREACC.CitizenWait)
        if GetUsingseethrough(true) then
            TriggerServerEvent("AntiThermalVision", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Thermal Vision", "Try For Thermal Vision")
        end
    end)
end
if FIREACC.AntiInfinityAmmo then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            SetPedInfiniteAmmoClip(PlayerPedId(), false)
        end
    end)
end
if FIREACC.AntiNightVision then
    Citizen.CreateThread(function ()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            if GetUsingnightvision(true) then
                TriggerServerEvent("AntiNightVision", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Night Vision", "Try For Night Vision")
            end
        end
    end)
end
if FIREACC.AntiInvisble then
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(FIREACC.CitizenWait)
            local ped = GetPlayerPed(-1)
            if GetGameTimer() - 120000  > 0 then
            if not IsEntityVisible(ped) then
                SetEntityVisible(ped, 1, 0)
                    if isSpawn then
                    TriggerServerEvent("AntiInvisble", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Invisble", "Try For Invisble in Server")
                    end
                end
            end
         end
    end)
end
if FIREACC.AntiCheat then
    Citizen.CreateThread(function()
        while true do
          Citizen.Wait(FIREACC.CitizenWait)
          SetPedInfiniteAmmoClip(PlayerPedId(), false)
          SetPlayerInvincible(PlayerId(), false)
          SetEntityInvincible(PlayerPedId(), false)
          SetEntityCanBeDamaged(PlayerPedId(), true)
          ResetEntityAlpha(PlayerPedId())
          local cs = IsPedFalling(PlayerPedId())
          local ct = IsPedRagdoll(PlayerPedId())
          local cu = GetPedParachuteState(PlayerPedId())
          if cu >= 0 or ct or cs then
           SetEntityMaxSpeed(PlayerPedId(), 80.0)
           else
           SetEntityMaxSpeed(PlayerPedId(), 7.1)
           end
        end
    end)
end
if FIREACC.PlayerProtection then
    Citizen.CreateThread(function()
        while true do
            local cj = GetPlayerPed(-1)
            SetExplosiveAmmoThisFrame(cj, 0)
            SetExplosiveMeleeThisFrame(cj, 0)
            SetFireAmmoThisFrame(cj, 0)
            SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false)
            Citizen.Wait(FIREACC.CitizenWait)
        end
    end)
end
if FIREACC.AntiBlackListWeapon then
    Citizen.CreateThread(function()
            while true do
                Citizen.Wait(50)
                for cb, cl in ipairs(FIREACWEAPON.BlackListWeapon) do
                    local cm = PlayerPedId()
                    if HasPedGotWeapon(cm, GetHashKey(cl), false) == 1 then
                        RemoveAllPedWeapons(cm, true)
                        TriggerServerEvent("BlackListWeapon", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Black List Weapon", "Try For Add Black List Weapon")
                    end
                end
            Wait(FIREACC.CitizenWait)
        end
    end)
end
if FIREACC.AntiGodmode then
    Citizen.CreateThread(function()
        while true do
          Citizen.Wait(FIREACC.CitizenWait)
            local curPed = PlayerPedId()
            local curHealth = GetEntityHealth(curPed)
            SetEntityHealth( curPed, curHealth-2)
            local curWait = math.random(10,150)
            Citizen.Wait(curWait)
            if PlayerPedId() == curPed and GetEntityHealth(curPed) == curHealth and GetEntityHealth(curPed) ~= 0 and GetEntityHealth(curPed) > 2 then
                if isSpawn then
                    TriggerServerEvent("AntiGodMod", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti God Mode", "Try For God Mod")
                end
            elseif GetEntityHealth(curPed) == curHealth-2 then
                SetEntityHealth(curPed, GetEntityHealth(curPed)+2)
            end
            if GetPlayerInvincible(PlayerId()) then
               if GetGameTimer() - 120000  > 0 then
                if isSpawn then
                   TriggerServerEvent("AntiGodMod", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti God Mode", "Try For God Mod")
                end
                Wait(FIREACC.CitizenWait)
                end
            end
        end
    end)
end
if FIREACC.AntiTeleport then
    Citizen.CreateThread(function()
        Citizen.Wait(FIREACC.CitizenWait)
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            local ped = PlayerPedId()
            local posx,posy,posz = table.unpack(GetEntityCoords(ped,true))
            local still = IsPedStill(ped)
            local vel = GetEntitySpeed(ped)
            local ped = PlayerPedId()
            local veh = IsPedInAnyVehicle(ped, true)
            local speed = GetEntitySpeed(ped)
            local para = GetPedParachuteState(ped)
            local flyveh = IsPedInFlyingVehicle(ped)
            local rag = IsPedRagdoll(ped)
            local fall = IsPedFalling(ped)
            local parafall = IsPedInParachuteFreeFall(ped)
            SetEntityVisible(PlayerPedId(), true)
            Wait(FIREACC.CitizenWait)
            local more = speed - 8.0
            local rounds = tonumber(string.format("%.2f", speed))
            local roundm = tonumber(string.format("%.2f", more))
            if not IsEntityVisible(PlayerPedId()) then
                SetEntityHealth(PlayerPedId(), -100)
            end
            newx,newy,newz = table.unpack(GetEntityCoords(ped,true))
            newPed = PlayerPedId() -- make sure the peds are still the same, otherwise the player probably respawned
            if GetDistanceBetweenCoords(posx,posy,posz, newx,newy,newz) > 1 and still == IsPedStill(ped) and vel == GetEntitySpeed(ped) and ped == newPed then
                TriggerServerEvent("AntiTeleport", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Teleport", "Try For Teleport in other coords")
            end
        end
    end)
end
if FIREACC.AntiFastRun then
    Citizen.CreateThread(function()
        Citizen.Wait(FIREACC.CitizenWait)
        local ped = GetPlayerPed(-1)
        local speed = GetEntitySpeed(ped)
        local runing = IsPedRunning(ped)
        if runing and speed > 5 then
            TriggerServerEvent("AntiFastRun", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Fast Run", "Try For Fast Run")
        end
    end)
end
if FIREACC.AntiBlips then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            local playerblips = 0
            local playersonline = GetActivePlayers()
            for i = 1, #playersonline do
                local id = playersonline[i]
                local blipped = GetPlayerPed(id)
                if blipped ~= PlayerPedId(-1) then
                    local blipped = GetBlipFromEntity(blipped)
                    if not DoesBlipExist(blipped) then
                    else
                        playerblips = playerblips+1
                    end
                end
            end
            if playerblips > 0 then
                local src = source
                TriggerServerEvent("AntiPlayerBlip", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti All Player Blip", "Try For Show All Player Blip")
            end
        end
    end)
end
if FIREACC.VehicleSpwan then
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(FIREACC.CitizenWait)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        local DriverSeat = GetPedInVehicleSeat(veh, -1)
        local plate = GetVehicleNumberPlateText(veh)
                if IsPedInAnyVehicle(ped, true) then
                    for _, BlockedPlate in pairs(FIREACPLATE.BlacklistedPlates) do
                        if plate == BlockedPlate then
                            if DriverSeat == ped then
                            DeleteVehicle(veh)
                            TriggerServerEvent("FIREAC:Ban", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Spawn Car", "Try For Spawn Car By Menu Plate : ".. plate .."")
                        end
                    end
                end
            end
         end
    end)
end
if FIREACC.AntiSuperJump then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
                if IsPedJumping(PlayerPedId()) then
                local firstCoord = GetEntityCoords(GetPlayerPed(-1))
                while IsPedJumping(PlayerPedId()) do
                    Citizen.Wait(FIREACC.CitizenWait)
                end
                local secondCoord = GetEntityCoords(GetPlayerPed(-1))
                local jumplength = GetDistanceBetweenCoords(firstCoord, secondCoord, false)
                if jumplength > FIREACC.SuperJumpMaxLength then
                    TriggerServerEvent("AntiSuperJump", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Super Jump", "Player Try For Super Jump")
                end
            end
        end
    end)
end
if FIREACC.AntiBlackListCommands then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            for RE, RF in ipairs(GetRegisteredCommands()) do
                for RG, RCO in ipairs(FIREACommands.AntiCommands) do
                    if RF.name == RCO then
                        TriggerServerEvent("AntiBlackListCommands", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Black List Commands", "Try For Use Black List Commands : "..RF.name.."")
                    end
                end
            end
        end
    end)
end
if FIREACC.AntiSpeedHack then
   Citizen.CreateThread(function()
 while true do
    Citizen.Wait(FIREACC.CitizenWait)
    local ped = GetPlayerPed(-1)
    local speed = GetEntitySpeed(ped)
    local inveh = IsPedInAnyVehicle(ped, false)
    local ragdoll = IsPedRagdoll(ped)
    local jumping = IsPedJumping(ped)
    local falling = IsPedFalling(ped)
          if not inveh then
               if not ragdoll then
                  if not falling then
                        if not jumping then
                            if speed > FIREACC.MaxSpeed then
                                TriggerServerEvent("FIREAC:Ban", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Speed Hack", "Try For Speed Hack")
                            end
                        end
                    end
                end
             end
         end
    end)
end
if FIREACC.AntiWeaponDamageChange or FIREACC.AntiWeaponsExplosive then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            local weaponHash = GetSelectedPedWeapon(GetPlayerPed(-1))
            if FIREACC.AntiWeaponDamageChange then
                local WeaponDamage = math.floor(GetWeaponDamage(weaponHash))
                if FIREACC.WeaponDamages[weaponHash] and WeaponDamage > FIREACC.WeaponDamages[weaponHash].damage then
                    local src = source
                    TriggerServerEvent("FIREAC:Ban", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Damage Changer", "Try To Change Weapon Damage")
                end
            end
            if FIREACC.AntiWeaponsExplosive then
                local wgroup = GetWeapontypeGroup(weaponHash)
                local dmgt = GetWeaponDamageType(weaponHash)
                if wgroup == -1609580060 or wgroup == -728555052 or weaponHash == -1569615261 then
                    if dmgt ~= 2 then
                        local src = source
                        TriggerServerEvent("FIREAC:Ban", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Damage Changer", "Try To Change Weapon Damage")
                    end
                elseif wgroup == 416676503 or wgroup == -957766203 or wgroup == 860033945 or wgroup == 970310034 or wgroup == -1212426201 then
                    if dmgt ~= 3 then
                        local src = source
                        TriggerServerEvent("FIREAC:Ban", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Damage Changer", "Try To Change Weapon Damage")
                    end
                end
            end
        end
    end)
end
if FIREACC.AntiCheatEngine then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(FIREACC.CitizenWait)
            local RI = GetVehiclePedIsUsing(GetPlayerPed(-1))
            local RJ = GetEntityModel(RI)
            if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then
                if RI == RY and RJ ~= RZ and RZ ~= nil and RZ ~= 0 then
                    DeleteVehicle(RI)
                    local src = source
                     TriggerServerEvent("FIREAC:Ban", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Cheat Engine", "Try For Use CheatEngine (Hash Changer)")
                    return
                end
            end
            RY = RI
            RZ = RJ
        end
    end)
end
if FIREACC.AntiKey then
 Citizen.CreateThread(function()
         while true do
                 Wait(FIREACC.CitizenWait);
                 local blacklistedKeys = FIREACC.BlacklistKeys;
                 for i = 1, #blacklistedKeys do
                         local keyCombo = blacklistedKeys[i][1];
                         local keyStr = blacklistedKeys[i][2];
                         if #keyCombo == 1 then
                                 local key1 = keyCombo[1];
                                 if IsDisabledControlJustReleased(0, key1) then
                        local src = source
                        TriggerServerEvent("BlackListKey", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Black List Key", "Try For Use Blacklisted Keys")
                    end
                         elseif #keyCombo == 2 then
                                 local key1 = keyCombo[1];
                                 local key2 = keyCombo[2];
                                 if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) then
                        local src = source
                        TriggerServerEvent("BlackListKey", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Black List Key", "Try For Use Blacklisted Keys")
                                 end
                         elseif #keyCombo == 3 then
                                 local key1 = keyCombo[1];
                                 local key2 = keyCombo[2];
                                 local key3 = keyCombo[3];
                                 if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) and
                                 IsDisabledControlPressed(0, key3) then
                        local src = source
                        TriggerServerEvent("BlackListKey", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Black List Key", "Try For Use Blacklisted Keys")
                                 end
                         elseif #keyCombo == 4 then
                                 local key1 = keyCombo[1];
                                 local key2 = keyCombo[2];
                                 local key3 = keyCombo[3];
                                 local key4 = keyCombo[4];
                                 if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) and
                                 IsDisabledControlPressed(0, key3) and IsDisabledControlPressed(0, key4) then
                        local src = source
                        TriggerServerEvent("BlackListKey", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Black List Key", "Try For Use Blacklisted Keys")
                                 end
                         end
                 end
         end
 end)
end
if FIREACC.AntiResourceStopper then
    AddEventHandler("onClientResourceStop", function(resource)
        if isSpawn then
            TriggerServerEvent("AntiResourceStop", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Resource Stoper", "Try For Stop resource : "..resource.."")
        end
    end)
end
if FIREACC.AntiResourceStarter then
AddEventHandler('onClientResourceStart', function (resource)
    if isSpawn then
        TriggerServerEvent("AntiResourceStart", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Resource Start", "Try For Start resource : "..resource.."")
    end
  end)
end
AddEventHandler('gameEventTriggered', function (EventName, args)
    if isSpawn then
        TriggerServerEvent('FIREAC:Event', EventName)
    end
end)
