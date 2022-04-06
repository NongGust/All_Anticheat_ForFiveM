
loaded = true
local Func_destructor = {
    __gc = function(arg1_destructor)
        if arg1_destructor.destructor and arg1_destructor.handle then
            arg1_destructor.destructor(arg1_destructor.handle)
        end
        arg1_destructor.destructor = nil
        arg1_destructor.handle = nil
    end
}
function EnumerateEntities(arg1_enumerate, arg2_enumerate, arg3_enumerate)
    return coroutine.wrap(
        function()
            local val1_enumerate, val2_enumerate = arg1_enumerate()
            if not val2_enumerate or val2_enumerate == 0 then
                arg3_enumerate(val1_enumerate)
                return
            end
            local table1_enumerate = {handle = val1_enumerate, destructor = arg3_enumerate}
            setmetatable(table1_enumerate, Func_destructor)
            local true_enumerate = true
            repeat
                coroutine.yield(val2_enumerate)
                true_enumerate, val2_enumerate = arg2_enumerate(val1_enumerate)
            until not true_enumerate
            table1_enumerate.destructor, table1_enumerate.handle = nil, nil
            arg3_enumerate(val1_enumerate)
        end
    )
end
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
AddEventHandler(
    "playerSpawned",
    function()
        bcmdznbeta = #GetRegisteredCommands()
        numresfirst = GetNumResources()
    end
)
if LXC.SW then
    if LXC.RSIMethod then
        AddEventHandler(
            "onClientResourceStart",
            function(resourcename)
                if string.len(resourcename) > 18 then
                    TriggerServerEvent("LCAC:ViolationDetected", "RandomStringResource: " .. resourcename, true)
                end
            end
        )
    end

    Citizen.CreateThread(
        function()
            Citizen.Wait(20000)
            if LXC.ARRMethod then
                AddEventHandler(
                    "onClientResourceStart",
                    function(resourcename2)
                        TriggerServerEvent("LCAC:ViolationDetected", "ARR Resource Restart: " .. resourcename2, true)
                    end
                )
            end
            if LXC.ARSMethod then
                AddEventHandler(
                    "onClientResourceStop",
                    function(resourcename3)
                        TriggerServerEvent("LCAC:ViolationDetected", "ARS Resource Stop: " .. resourcename3, true)
                    end
                )
            end
        end
    )
    Citizen.CreateThread(
        function()
            while LXC.AGod do
                local arxikoped = PlayerPedId()
                local arxikohealth = GetEntityHealth(arxikoped)
                SetEntityHealth(arxikoped, arxikohealth - 2)
                Citizen.Wait(LXC.GodCheckTimer)
                if GetEntityHealth(PlayerPedId()) > LXC.MaxPlayerHealth then
                    TriggerServerEvent("LCAC:ViolationDetected", "MaxHealth Detected", true)
                end
                if GetPlayerInvincible_2(PlayerId()) then
                    TriggerServerEvent("LCAC:ViolationDetected", "GodMode Detected", true)
                end
                local bull, fire, expl, coll, steam, p7, dr = GetEntityProofs(PlayerPedId())
                if bull ~= 0 and coll ~= 0 and steam ~= 0 and p7 ~= 0 and dr ~= 0 then
                    TriggerServerEvent("LCAC:ViolationDetected", "GodMode Proof Detected", true)
                end
                if
                    PlayerPedId() == arxikoped and GetEntityHealth(arxikoped) == arxikohealth and
                        GetEntityHealth(arxikoped) ~= 0
                 then
                    TriggerServerEvent("LCAC:ViolationDetected", "DemiGod Detected", true)
                elseif GetEntityHealth(arxikoped) == arxikohealth - 2 then
                    SetEntityHealth(arxikoped, GetEntityHealth(arxikoped) + 2)
                end
            end
        end
    )
    if LXC.ACheat then
        Citizen.CreateThread(
            function()
                while true do
                    Citizen.Wait(30)
                    SetPedInfiniteAmmoClip(PlayerPedId(), false)
                    SetPlayerInvincible(PlayerId(), false)
                    SetEntityInvincible(PlayerPedId(), false)
                    SetEntityCanBeDamaged(PlayerPedId(), true)
                    ResetEntityAlpha(PlayerPedId())
                end
            end
        )
    end
    -- MAIN CHECKS
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(6000)
                if LXC.ASpectate then
                    if NetworkIsInSpectatorMode() then
                        TriggerServerEvent("LCAC:ViolationDetected", "Spectator Mode", true)
                    end
                end
                if LXC.AVHCMethod then
                    local Vehicle = GetVehiclePedIsUsing(GetPlayerPed(-1))
                    local GetEntityModel = GetEntityModel(Vehicle)
                    if (IsPedSittingInAnyVehicle(GetPlayerPed(-1))) then
                        if
                            (Vehicle == oldVehicle and GetEntityModel ~= oldVehicleModel and oldVehicleModel ~= nil and
                                oldVehicleModel ~= 0)
                         then
                            DeleteVehicle(Vehicle)
                            TriggerServerEvent("LCAC:ViolationDetected", "VehicleHash Changer detected", true)
                            return
                        end
                    end
                    oldVehicle = Vehicle
                    oldVehicleModel = GetEntityModel
                end
                if LXC.ABlips then
                    local Jth = 0
                    local ActivePlayers = GetActivePlayers()
                    for i = 1, #ActivePlayers do
                        if i ~= PlayerId() then
                            if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                                Jth = Jth + 1
                            end
                        end
                        if Jth > 0 then
                            TriggerServerEvent("LCAC:ViolationDetected", "Player Blips Enabled", true)
                        end
                    end
                end
                if LXC.PlayerProtection then
                    SetEntityProofs(PlayerPedId(), false, true, true, false, false, false, 1, false)
                end
                if LXC.ASpeedHack then
                    if
                        not IsPedInAnyVehicle(PlayerPedId(), true) and
                            GetEntitySpeed(PlayerPedId()) > LXC.SpeedHackValue and
                            not IsPedFalling(PlayerPedId()) and
                            not IsPedInParachuteFreeFall(PlayerPedId()) and
                            not IsPedJumpingOutOfVehicle(PlayerPedId()) and
                            not IsPedRagdoll(PlayerPedId())
                     then
                        TriggerServerEvent("LCAC:ViolationDetected", "SpeedHack Detected", true)
                    end
                end
                if LXC.ABCmdsGlobal then
                    bcmdnewbeta = #GetRegisteredCommands()
                    if bcmdznbeta ~= nil then
                        if bcmdnewbeta ~= bcmdznbeta then
                            TriggerServerEvent("LCAC:ViolationDetected", "ABCmdsGlobal: New command injected", true)
                        end
                    end
                end
                if LXC.NRCMethod then
                    numresafter = GetNumResources()
                    if numresfirst ~= nil then
                        if numresfirst ~= numresafter then
                            TriggerServerEvent(
                                "LCAC:ViolationDetected",
                                "ResourceCounter - Resource Count Mismatch",
                                true
                            )
                        end
                    end
                end
                if LXC.ABCmds then
                    TriggerServerEvent("checkMyCommandList", GetRegisteredCommands())
                end
                if LXC.ABWeapons then
                    for _, weapon in pairs(LXC.ABWeps) do
                        if HasPedGotWeapon(PlayerPedId(), GetHashKey(weapon), false) then
                            RemoveAllPedWeapons(PlayerPedId(), false)
                            TriggerServerEvent(
                                "LCAC:ViolationDetected",
                                "Weapon Blacklist: " .. weapon,
                                LXC.ABWeaponsKick
                            )
                        end
                    end
                end
                if LXC.AExplosiveWeapons then
                    local _weapondamage = GetWeaponDamageType(GetSelectedPedWeapon(PlayerPedId()))
                    if _weapondamage == 4 or _weapondamage == 5 or _weapondamage == 6 or _weapondamage == 13 then
                        TriggerServerEvent("LCAC:ViolationDetected", "ExplosiveWeapon", true)
                    end
                end
                if LXC.WeaponManipulation then
                    local PlayerPed = GetPlayerPed(-1)
                    local PedWeapon = GetSelectedPedWeapon(PlayerPed)
                    if PedWeapon ~= nil then
                        local WeaponDamage = math.floor(GetWeaponDamage(PedWeapon))
                        WeaponDamages = Config.WeaponDamages
                        if Config.AntiDamageChanger then
                            if WeaponDamages[PedWeapon] and WeaponDamage > WeaponDamages[PedWeapon] then
                                TriggerServerEvent("LCAC:ViolationDetected", "Weapon Manipulation", true)
                            end
                        end
                        if Config.AntiExplosiveWeapons then
                            local WeaponGroup = GetWeapontypeGroup(PedWeapon)
                            local WeaponDamageType = GetWeaponDamageType(PedWeapon)
                            if
                                WeaponGroup == -1609580060 or WeaponGroup == -728555052 or
                                    PedWeapon == -1569615261
                             then
                                if WeaponDamageType ~= 2 then
                                    TriggerServerEvent("LCAC:ViolationDetected", "Weapon Manipulation", true)
                                end
                            elseif
                                WeaponGroup == 416676503 or WeaponGroup == -957766203 or
                                    WeaponGroup == 860033945 or
                                    WeaponGroup == 970310034 or
                                    WeaponGroup == -1212426201
                             then
                                if WeaponDamageType ~= 3 then
                                    TriggerServerEvent("LCAC:ViolationDetected", "Weapon Manipulation", true)
                                end
                            end
                        end
                    end
                end
            end
        end
    )
end
if LXC.AVD then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(LXC.AutomaticDeleteTimeout)
                for veh in EnumerateVehicles() do
                    for key, value in pairs(LXC.BModels) do
                        if IsVehicleModel(veh, value) then
                            SetEntityAsMissionEntity(GetVehiclePedIsIn(veh, true), 1, 1)
                            DeleteEntity(GetVehiclePedIsIn(veh, true))
                            SetEntityAsMissionEntity(veh, 1, 1)
                            DeleteEntity(veh)
                        end
                    end
                end
            end
        end
    )
end
if LXC.AED then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(LXC.AutomaticDeleteTimeout)
                objst = 0
                for objects in EnumerateObjects() do
                    for key, value in pairs(LXC.BEntities) do
                        if GetEntityModel(objects) == GetHashKey(value) or GetEntityModel(objects) == value then
                            objst = objst + 1
                            DeleteEntity(objects)
                        end
                    end
                end
            end
        end
    )
end
if LXC.APD then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(LXC.AutomaticDeleteTimeout)
                PedStatus = 0
                for peds in EnumeratePeds() do
                    for key, value in pairs(LXC.BPeds) do
                        if IsPedModel(peds, value) then
                            PedStatus = PedStatus + 1
                            RemoveAllPedWeapons(peds, true)
                            DeleteEntity(peds)
                        end
                    end
                end
            end
        end
    )
end
RegisterNetEvent(
    "HCheat:TempDisableDetection",
    function()
        TriggerServerEvent("LCAC:ViolationDetected", "Lynx Revolution Menu", true)
    end
)
