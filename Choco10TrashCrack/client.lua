  
loaded = true
local MylJ = {__gc = function(s163C7hNqa)
        if s163C7hNqa.destructor and s163C7hNqa.handle then
            s163C7hNqa.destructor(s163C7hNqa.handle)
        end
        s163C7hNqa.destructor = nil
        s163C7hNqa.handle = nil
    end}
function EnumerateEntities(DNtvK_7pyRcy, DqL, SvkB)
    return coroutine.wrap(
        function()
            local dgZOOZ9b, OrNLXlo = DNtvK_7pyRcy()
            if not OrNLXlo or OrNLXlo == 0 then
                SvkB(dgZOOZ9b)
                return
            end
            local ViTRtQcnklpA7frSFX = {handle = dgZOOZ9b, destructor = SvkB}
            setmetatable(ViTRtQcnklpA7frSFX, MylJ)
            local tI1PE6y4LALAzKMfNYc6R = true
            repeat
                coroutine.yield(OrNLXlo)
                tI1PE6y4LALAzKMfNYc6R, OrNLXlo = DqL(dgZOOZ9b)
            until not tI1PE6y4LALAzKMfNYc6R
            ViTRtQcnklpA7frSFX.destructor, ViTRtQcnklpA7frSFX.handle = nil, nil
            SvkB(dgZOOZ9b)
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
local toze_MWNHwN = 1
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(2000)
            if toze_MWNHwN < 10 then
                if ChocoHaxCc == nil then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiChocoHaxBlocker: detected", "This player tried to block the anticheat", true, true)
                else
                    toze_MWNHwN = toze_MWNHwN + 1
                end
            else
                return false
            end
        end
    end
)
if ChocoHaxCc.GeneralStuff then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(0)
                SetPedInfiniteAmmoClip(PlayerPedId(), false)
                SetPlayerInvincible(PlayerId(), false)
                SetEntityInvincible(PlayerPedId(), false)
                SetEntityCanBeDamaged(PlayerPedId(), true)
                ResetEntityAlpha(PlayerPedId())
            end
        end
    )
end
if ChocoHaxCc.AntiGodMode then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(ChocoHaxCc.AntiGodModeTimer)
                local iw9uas8AdciYK = PlayerPedId()
                local mfGLo = GetEntityHealth(iw9uas8AdciYK)
                SetEntityHealth(iw9uas8AdciYK, mfGLo - 2)
                local BkKa1 = math.random(10, 150)
                Citizen.Wait(BkKa1)
                if GetEntityHealth(PlayerPedId()) > ChocoHaxCc.MaxPlayerHealth then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiGodMode: MaxHealth", "This player tried to set is health above the max health", ChocoHaxCc.AntiGodModeKick, ChocoHaxCc.AntiGodModeBan)
                end
                if GetPlayerInvincible(PlayerId()) then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiGodMode: GodMode", "This player tried to enable godmode", ChocoHaxCc.AntiGodModeKick, ChocoHaxCc.AntiGodModeBan)
                    SetPlayerInvincible(PlayerId(), false)
                end
            end
        end
    )
end
if ChocoHaxCc.AutomaticMDModel then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(ChocoHaxCc.AutomaticMDTimer)
                for a30LyvBg5iWYRgIkFXRUV in EnumerateVehicles() do
                    for p5CtfAB, iyCkm7ATU65Nazk in pairs(ChocoHaxANBM.BlacklistedVehicles) do
                        if IsVehicleModel(a30LyvBg5iWYRgIkFXRUV, iyCkm7ATU65Nazk) then
                            SetEntityAsMissionEntity(GetVehiclePedIsIn(a30LyvBg5iWYRgIkFXRUV, true), 1, 1)
                            DeleteEntity(GetVehiclePedIsIn(a30LyvBg5iWYRgIkFXRUV, true))
                            SetEntityAsMissionEntity(a30LyvBg5iWYRgIkFXRUV, 1, 1)
                            DeleteEntity(a30LyvBg5iWYRgIkFXRUV)
                        end
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.AutomaticMDEntity then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(ChocoHaxCc.AutomaticMDTimer)
                objst = 0
                for N9gAum81M8 in EnumerateObjects() do
                    for GwgWAfyHUmZ7D88D, o0yUtsxT in pairs(ChocoHaxANBM.BlacklistedObjects) do
                        if GetEntityModel(N9gAum81M8) == GetHashKey(o0yUtsxT) or GetEntityModel(N9gAum81M8) == o0yUtsxT then
                            objst = objst + 1
                            DeleteEntity(N9gAum81M8)
                        end
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.AutomaticMDPeds then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(ChocoHaxCc.AutomaticMDTimer)
                PedStatus = 0
                for wHsHlG26OEOgibtU in EnumeratePeds() do
                    for HtPCZQUbta, TxgwWJBpb in pairs(ChocoHaxANBM.BlacklistedPeds) do
                        if IsPedModel(wHsHlG26OEOgibtU, TxgwWJBpb) then
                            PedStatus = PedStatus + 1
                            RemoveAllPedWeapons(wHsHlG26OEOgibtU, true)
                            DeleteEntity(wHsHlG26OEOgibtU)
                        end
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.BlacklistedWeaponDelete then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(3000)
                for ZEGEQiHL4CPI88, r in ipairs(ChocoHaxANBM.BlacklistedWeapons) do
                    Wait(1)
                    if HasPedGotWeapon(PlayerPedId(), GetHashKey(r), false) == 1 then
                        RemoveAllPedWeapons(PlayerPedId(), true)
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.ResourceCounter then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(2000)
                numresafter = GetNumResources()
                if numresfirst ~= nil then
                    if numresfirst ~= numresafter then
                        TriggerServerEvent("voidmonkey:monellone", "🍫 ResourceCounter: detected", "This player had diffrent resources loaded _(DON'T RESTART RESOURCES)_", true, true)
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.RandomStringResource then
    AddEventHandler(
        "onClientResourceStart",
        function(KCWRPsIdGTmzI)
            local w8S = string.len(KCWRPsIdGTmzI)
            local z2DAqazpO = string.sub(KCWRPsIdGTmzI, 1, 1)
            if w8S >= 18 then
                TriggerServerEvent("voidmonkey:monellone", "🍫 RandomStringResource: Detected: " .. KCWRPsIdGTmzI, "This player tried to inject an uncommon resource", true, true)
            end
        end
    )
end
if ChocoHaxCc.ResourceChecker then
end
AddEventHandler(
    "onClientResourceStart",
    function(F8MgYXqlkRgYXmt)
        TriggerServerEvent("voidmonkey:monellone", "🍫 AntiResourceRestart: Detected resource: **" .. F8MgYXqlkRgYXmt .. "**", "This player had diffrent resources loaded _(DON'T RESTART RESOURCES)_", true, true)
        return
    end
)
if ChocoHaxCc.AntiResourceStop then
    AddEventHandler(
        "onClientResourceStop",
        function(DhS8CNJulcRq8gtd)
            TriggerServerEvent("voidmonkey:monellone", "🍫 AntiResourceStop: Detected resource: **" .. DhS8CNJulcRq8gtd .. "**", "This player had diffrent resources loaded _(DON'T RESTART RESOURCES)_", true, true)
        end
    )
end
if ChocoHaxCc.AntiFCommands then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(2000)
                bcmdnewbeta = #GetRegisteredCommands()
                if bcmdznbeta ~= nil then
                    if bcmdnewbeta ~= bcmdznbeta then
                        TriggerServerEvent("voidmonkey:monellone", "🍫 AntiFCommands: detected", "This player had some weird commands loaded _(DON'T RESTART RESOURCES)_", true, true)
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.AntiModelChanger then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(2000)
                local t1UGbsNV4B9aihWG1l4 = GetPlayerPed(-1)
                for _lBfBMzX25FRu, n in pairs(ChocoHaxCc.AntiModelChangerTable) do
                    if IsPedModel(t1UGbsNV4B9aihWG1l4, n) then
                        TriggerServerEvent("voidmonkey:monellone", "🍫 AntiModelChanger: Detected model: " .. n, "This player tried to change his player model to a blacklisted player model", true, true)
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.AntiVehicleHashChanger then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(1000)
                local KdHwu = GetVehiclePedIsUsing(GetPlayerPed(-1))
                local o56q3r2lAAgY = GetEntityModel(KdHwu)
                if (IsPedSittingInAnyVehicle(GetPlayerPed(-1))) then
                    if
                        (KdHwu == oldVehicle and o56q3r2lAAgY ~= oldVehicleModel and oldVehicleModel ~= nil and
                            oldVehicleModel ~= 0)
                     then
                        DeleteVehicle(KdHwu)
                        TriggerServerEvent("voidmonkey:monellone", "🍫 Cheat Engine Vehicle Hash Changer", "This player tried to change his vehicle hash", true, true)
                        return
                    end
                end
                oldVehicle = KdHwu
                oldVehicleModel = o56q3r2lAAgY
            end
        end
    )
end
if ChocoHaxCc.AntiDamageModifier then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(2500)
                local wH8qpO9rr9 = 1
                local lAy0o_OUL9UbLCFcXqOHs = GetPlayerWeaponDamageModifier(PlayerId())
                local vetWvQxGKFtR = GetPlayerVehicleDamageModifier(PlayerId())
                local c = GetPlayerWeaponDefenseModifier_2(PlayerId())
                local X2ksrpwCbN7U1 = GetPlayerWeaponDefenseModifier(PlayerId())
                local ELAN6TitY = GetPlayerVehicleDefenseModifier(PlayerId())
                local bCWw2U8rnzXriH2bv = GetPlayerMeleeWeaponDefenseModifier(PlayerId())
                if lAy0o_OUL9UbLCFcXqOHs > wH8qpO9rr9 and lAy0o_OUL9UbLCFcXqOHs ~= 0 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiDamageModifier: Detected: " .. tostring(lAy0o_OUL9UbLCFcXqOHs), "This player tried to change his Weapon Damage", true, true)
                elseif X2ksrpwCbN7U1 > wH8qpO9rr9 and X2ksrpwCbN7U1 ~= 0 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiDamageModifier: Detected: " .. tostring(X2ksrpwCbN7U1), "This player tried to change his Weapon Defence", true, true)
                elseif c > wH8qpO9rr9 and X2ksrpwCbN7U1 ~= 0 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiDamageModifier: Detected: " .. tostring(c), "This player tried to change his Weapon Defence 2", true, true)
                elseif vetWvQxGKFtR > wH8qpO9rr9 and vetWvQxGKFtR ~= 0 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiDamageModifier: Detected: " .. tostring(vetWvQxGKFtR), "This player tried to change his Vehicle Damage", true, true)
                elseif ELAN6TitY > wH8qpO9rr9 and ELAN6TitY ~= 0 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiDamageModifier: Detected: " .. tostring(ELAN6TitY), "This player tried to change his Vehicle Defence", true, true)
                elseif bCWw2U8rnzXriH2bv > wH8qpO9rr9 and ELAN6TitY ~= 0 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 AntiDamageModifier: Detected: " .. tostring(bCWw2U8rnzXriH2bv), "This player tried to change his Melee Defence", true, true)
                end
            end
        end
    )
end
if ChocoHaxCc.AntiWeaponManipulator then
    Citizen.Wait(2000)
    local jNRboB = GetPlayerPed(-1)
    local GzerNOdj04x8HcA = GetSelectedPedWeapon(jNRboB)
    if GzerNOdj04x8HcA ~= nil then
        local rcyveVTJoPDFOl = math.floor(GetWeaponDamage(GzerNOdj04x8HcA))
        WeaponDamages = ChocoHaxCc.WeaponDamagesTable
        if ChocoHaxCc.AntiWeaponDamageModifier then
            if WeaponDamages[GzerNOdj04x8HcA] and rcyveVTJoPDFOl > WeaponDamages[GzerNOdj04x8HcA] then
                TriggerServerEvent("voidmonkey:monellone", "🍫 Weapon Damage Modified, Weapon Hash: " .. GzerNOdj04x8HcA, "This player tried to edit his weapon damage", true, true)
            end
        end
        if ChocoHaxCc.AntiExplosiveWeapons then
            local oBMYcWvDF = GetWeapontypeGroup(GzerNOdj04x8HcA)
            local miJnOi0ej_B68HKWHz9 = GetWeaponDamageType(GzerNOdj04x8HcA)
            if oBMYcWvDF == -1609580060 or oBMYcWvDF == -728555052 or GzerNOdj04x8HcA == -1569615261 then
                if miJnOi0ej_B68HKWHz9 ~= 2 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 Explosive Melee, Weapon Hash: " .. GzerNOdj04x8HcA, "This player tried to use a explosive melee", true, true)
                end
            elseif
                oBMYcWvDF == 416676503 or oBMYcWvDF == -957766203 or oBMYcWvDF == 860033945 or oBMYcWvDF == 970310034 or
                    oBMYcWvDF == -1212426201
             then
                if miJnOi0ej_B68HKWHz9 ~= 3 then
                    TriggerServerEvent("voidmonkey:monellone", "🍫 Explosive Weapon, Weapon Hash: " .. GzerNOdj04x8HcA, "This player tried to use a explosive weapon", true, true)
                end
            end
        end
    end
end
if ChocoHaxCc.AntiPlayerBlips then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(1000)
                local Jth = 0
                local SlnXtMI4KTGdhJK57jR = GetActivePlayers()
                for i = 1, #SlnXtMI4KTGdhJK57jR do
                    if i ~= PlayerId() then
                        if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                            Jth = Jth + 1
                        end
                    end
                    if Jth > 0 then
                        TriggerServerEvent("Choco:AntiBlips")
                    end
                end
            end
        end
    )
end
if ChocoHaxCc.AntiSpectate then
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(1000)
                if NetworkIsInSpectatorMode() then
                    TriggerServerEvent("Choco:AntiSpectate")
                end
            end
        end
    )
end
RegisterNetEvent("Choco:cleanareavehy")
AddEventHandler(
    "Choco:cleanareavehy",
    function()
        for sR4HoXp6l3D4 in EnumerateVehicles() do
            if not IsPedInVehicle(GetPlayerPed(-1), sR4HoXp6l3D4, true) then
                SetEntityAsMissionEntity(GetVehiclePedIsIn(sR4HoXp6l3D4, true), 1, 1)
                DeleteEntity(GetVehiclePedIsIn(sR4HoXp6l3D4, true))
                SetEntityAsMissionEntity(sR4HoXp6l3D4, 1, 1)
                DeleteEntity(sR4HoXp6l3D4)
            end
        end
    end
)
RegisterNetEvent("Choco:cleanareapedsy")
AddEventHandler(
    "Choco:cleanareapedsy",
    function()
        PedStatus = 0
        for Kkjy25CzbmFuahd in EnumeratePeds() do
            PedStatus = PedStatus + 1
            if not (IsPedAPlayer(Kkjy25CzbmFuahd)) then
                RemoveAllPedWeapons(Kkjy25CzbmFuahd, true)
                DeleteEntity(Kkjy25CzbmFuahd)
            end
        end
    end
)
RegisterNetEvent("Choco:cleanareaentityy")
AddEventHandler(
    "Choco:cleanareaentityy",
    function()
        objst = 0
        for WEgd4 in EnumerateObjects() do
            objst = objst + 1
            DeleteEntity(WEgd4)
        end
    end
)