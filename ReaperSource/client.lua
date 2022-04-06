


function EnumeratePeds()
  return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
  return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumerateObjects()
  return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
Citizen.CreateThread(function()
  while true do
    while true do
      if not e then
        break
      end
      Citizen.Wait(0)
      if not Config.MiniMap then
      else
        DisplayRadar(true)
      end
      if not DeleteGun then
      elseif IsPedInAnyVehicle(GetPlayerPed(-1), true) ~= nil then
      else
        ay(_U("guantelete"))
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 999999, false, true)
        SetPedAmmo(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 999999)
        if GetSelectedPedWeapon(GetPlayerPed(-1)) ~= GetHashKey("WEAPON_PISTOL") then
        elseif IsPlayerFreeAiming(PlayerId(-1)) then
          if not IsEntityAPed((getEntity(PlayerId(-1)))) then
          elseif IsPedInAnyVehicle(getEntity(PlayerId(-1)), true) then
            if not IsControlJustReleased(1, 142) then
            else
              SetEntityAsMissionEntity(GetVehiclePedIsIn(getEntity(PlayerId(-1)), true), 1, 1)
              DeleteEntity(GetVehiclePedIsIn(getEntity(PlayerId(-1)), true))
              SetEntityAsMissionEntity(getEntity(PlayerId(-1)), 1, 1)
              Networkingdelete((getEntity(PlayerId(-1))))
              DeleteEntity((getEntity(PlayerId(-1))))
              NetworkDelete((getEntity(PlayerId(-1))))
              ay(_U("delete"))
            end
          elseif IsControlJustReleased(1, 142) then
            SetEntityAsMissionEntity(getEntity(PlayerId(-1)), 1, 1)
            Networkingdelete((getEntity(PlayerId(-1))))
            DeleteEntity((getEntity(PlayerId(-1))))
            NetworkDelete((getEntity(PlayerId(-1))))
            ay(_U("delete"))
            do return end
            if IsControlJustReleased(1, 142) then
              SetEntityAsMissionEntity(getEntity(PlayerId(-1)), 1, 1)
              Networkingdelete((getEntity(PlayerId(-1))))
              DeleteEntity((getEntity(PlayerId(-1))))
              NetworkDelete((getEntity(PlayerId(-1))))
              ay(_U("delete"))
            end
          end
        end
      end
      if not d then
      else
        do return end
        while true do
          distance = math.floor(GetDistanceBetweenCoords(table.unpack(GetEntityCoords(PlayerPedId()))))
          if c and 130 > distance then
            if NetworkIsPlayerTalking(GetActivePlayers()) then
              DrawText3D(table.unpack(GetEntityCoords((GetPlayerPed(GetActivePlayers())))))
            else
              DrawText3D(table.unpack(GetEntityCoords((GetPlayerPed(GetActivePlayers())))))
            end
          end
          if not IsPedInAnyVehicle(GetPlayerPed(GetActivePlayers()), true) then
          else
          end
          if not (999999 >= distance) then
          else
            if not espinfo or not d then
            else
              DrawText3D(table.unpack(GetEntityCoords((GetPlayerPed(GetActivePlayers())))))
            end
            if not espbox or not d then
            else
              LineOneBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, -0,3, -0,9)
              LineOneEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, -0,3, -0,9)
              LineTwoBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, -0,3, -0,9)
              LineTwoEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, 0,3, -0,9)
              LineThreeBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, 0,3, -0,9)
              LineThreeEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, 0,3, -0,9)
              LineFourBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, -0,3, -0,9)
              TLineOneBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, -0,3, 0,8)
              TLineOneEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, -0,3, 0,8)
              TLineTwoBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, -0,3, 0,8)
              TLineTwoEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, 0,3, 0,8)
              TLineThreeBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, 0,3, 0,8)
              TLineThreeEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, 0,3, 0,8)
              TLineFourBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, -0,3, 0,8)
              ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, 0,3, 0,8)
              ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, 0,3, -0,9)
              ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, 0,3, 0,8)
              ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, 0,3, -0,9)
              ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, -0,3, 0,8)
              ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), -0,3, -0,3, -0,9)
              ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, -0,3, 0,8)
              ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(GetActivePlayers()), 0,3, -0,3, -0,9)
              DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(LineTwoBegin.x, LineTwoBegin.y, LineTwoBegin.z, LineTwoEnd.x, LineTwoEnd.y, LineTwoEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(LineThreeBegin.x, LineThreeBegin.y, LineThreeBegin.z, LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, LineFourBegin.x, LineFourBegin.y, LineFourBegin.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(TLineOneBegin.x, TLineOneBegin.y, TLineOneBegin.z, TLineOneEnd.x, TLineOneEnd.y, TLineOneEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(TLineTwoBegin.x, TLineTwoBegin.y, TLineTwoBegin.z, TLineTwoEnd.x, TLineTwoEnd.y, TLineTwoEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(TLineThreeBegin.x, TLineThreeBegin.y, TLineThreeBegin.z, TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, TLineFourBegin.x, TLineFourBegin.y, TLineFourBegin.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(ConnectorOneBegin.x, ConnectorOneBegin.y, ConnectorOneBegin.z, ConnectorOneEnd.x, ConnectorOneEnd.y, ConnectorOneEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(ConnectorTwoBegin.x, ConnectorTwoBegin.y, ConnectorTwoBegin.z, ConnectorTwoEnd.x, ConnectorTwoEnd.y, ConnectorTwoEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(ConnectorThreeBegin.x, ConnectorThreeBegin.y, ConnectorThreeBegin.z, ConnectorThreeEnd.x, ConnectorThreeEnd.y, ConnectorThreeEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
              DrawLine(ConnectorFourBegin.x, ConnectorFourBegin.y, ConnectorFourBegin.z, ConnectorFourEnd.x, ConnectorFourEnd.y, ConnectorFourEnd.z, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.r, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.g, {
                r = 255,
                g = 0,
                b = 255,
                a = 255
              }.b, 255)
            end
            if not esplines then
            elseif d then
              DrawLine(table.unpack(GetEntityCoords(PlayerPedId())))
            end
          end
        end
      end
      if showCoords then
        x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        roundx = tonumber(string.format("%.2f", x))
        roundy = tonumber(string.format("%.2f", y))
        roundz = tonumber(string.format("%.2f", z))
        aK("~r~X:~s~ " .. roundx, 0,05, 0)
        aK("~r~Y:~s~ " .. roundy, 0,11, 0)
        aK("~r~Z:~s~ " .. roundz, 0,17, 0)
      end
      if not f then
      else
        SetEntityVisible(GetPlayerPed(-1), false, false)
        SetEntityInvincible(GetPlayerPed(-1), true)
        SetEntityVisible(GetPlayerPed(-1), false)
        SetEntityVelocity(GetPlayerPed(-1), 0,0001, 0,0001, 0,0001)
        SetEntityCoordsNoOffset(GetPlayerPed(-1), getPosition() + 3 * getCamDirection() - 3 * getCamDirection(), getPosition() + 3 * getCamDirection() - 3 * getCamDirection(), getPosition() + 3 * getCamDirection() - 3 * getCamDirection(), true, true, true)
      end
      if not h then
      else
        SetEntityVisible(GetPlayerPed(-1), false, false)
        SetEntityInvincible(GetPlayerPed(-1), true)
        SetEntityVisible(ped, false)
      end
      if not VehGod or not IsPedInAnyVehicle(PlayerPedId(), true) then
      else
        SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId()), true)
      end
      if not g then
        break
      end
      SetEntityInvincible(GetPlayerPed(-1), true)
      SetPlayerInvincible(PlayerId(), true)
      SetPedCanRagdoll(GetPlayerPed(-1), false)
      ClearPedBloodDamage(GetPlayerPed(-1))
      ResetPedVisibleDamage(GetPlayerPed(-1))
      ClearPedLastWeaponDamage(GetPlayerPed(-1))
      SetEntityProofs(GetPlayerPed(-1), true, true, true, true, true, true, true, true)
      SetEntityOnlyDamagedByPlayer(GetPlayerPed(-1), false)
      SetEntityCanBeDamaged(GetPlayerPed(-1), false)
    end
    SetEntityInvincible(GetPlayerPed(-1), false)
    SetPlayerInvincible(PlayerId(), false)
    SetPedCanRagdoll(GetPlayerPed(-1), true)
    ClearPedBloodDamage(GetPlayerPed(-1))
    ResetPedVisibleDamage(GetPlayerPed(-1))
    ClearPedLastWeaponDamage(GetPlayerPed(-1))
    SetEntityProofs(GetPlayerPed(-1), false, false, false, false, false, false, false, false)
    SetEntityOnlyDamagedByPlayer(GetPlayerPed(-1), false)
    SetEntityCanBeDamaged(GetPlayerPed(-1), true)
  end
end)
RegisterNetEvent("ZAC-AC:nocliped")
AddEventHandler("ZAC-AC:nocliped", function()
  noclip = not noclip
  if not noclip then
  else
    SetEntityInvincible(GetPlayerPed(-1), true)
    SetEntityVisible(GetPlayerPed(-1), false, false)
    break
  end
  SetEntityInvincible(GetPlayerPed(-1), false)
  SetEntityVisible(GetPlayerPed(-1), true, false)
  if noclip == true then
    ay("~w~Has ~g~activated ~w~el noclip.", true)
  else
    ay("~w~Has ~r~deactivate ~w~el noclip.", true)
  end
end)
RegisterNetEvent("ZAC-AC:vanished")
AddEventHandler("ZAC-AC:vanished", function()
  vanish = not vanish
  SetEntityVisible(GetPlayerPed(-1), not vanish, false)
  if vanish == true then
    ay("~w~Has ~g~activated ~w~el vanish.", true)
  else
    ay("~w~Has ~r~deactivate ~w~el vanish.", true)
  end
end)
function getCamDirection()
  if math.sqrt(-math.sin((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) * -math.sin((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) + math.cos((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) * math.cos((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) + math.sin(GetGameplayCamRelativePitch() * math.pi / 180) * math.sin(GetGameplayCamRelativePitch() * math.pi / 180)) == 0 then
  else
  end
  return -math.sin((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) / math.sqrt(-math.sin((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) * -math.sin((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) + math.cos((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) * math.cos((GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))) * math.pi / 180) + math.sin(GetGameplayCamRelativePitch() * math.pi / 180) * math.sin(GetGameplayCamRelativePitch() * math.pi / 180))
end
function getPosition()
  return table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
end
RegisterNetEvent("_SendPlayers")
AddEventHandler("_SendPlayers", "WEAPON_REVOLVER")
RegisterNetEvent("_SendPos")
AddEventHandler("_SendPos", "WEAPON_REVOLVER")
SpectatePlayer = nil
Citizen.CreateThread(function()
  while true do
    Wait(2000)
    if nil == nil then
      break
    end
    if #(nil - GetEntityCoords(GetPlayerPed(-1), true)) > 2 then
      TriggerServerEvent("_UpdatePos", (GetEntityCoords(GetPlayerPed(-1), true)))
    end
  end
end)
function IsLocked(a)
  do return end
  while true do
    if GetHashKey(nil) == GetEntityModel(a) then
      return true
    end
    a = a
  end
  return false
end
if Config.AntiPedAttack then
  Citizen.CreateThread(function()
    while true do
      Wait(1000)
      while true do
        Citizen.Wait(20)
        if IsPedAPlayer(FindFirstPed()) then
        else
          if IsPedArmed(FindFirstPed()) then
          elseif IsPedInMeleeCombat(FindFirstPed()) then
          elseif IsPedInCombat(FindFirstPed()) then
          else
            if not IsLocked(FindFirstPed()) then
          end
          else
            RemoveAllPedWeapons(FindFirstPed())
            SetEntityInvincible(FindFirstPed())
            SetPedMaxHealth(FindFirstPed())
            ApplyDamageToPed(FindFirstPed())
            DeleteEntity(FindFirstPed())
          end
        end
        if FindNextPed(FindFirstPed()) then
        end
      end
      EndFindPed(FindFirstPed())
    end
  end)
end
if Config.PlayerProtection then
  Citizen.CreateThread(function()
    while true do
      SetExplosiveAmmoThisFrame(GetPlayerPed(-1), 0)
      SetExplosiveMeleeThisFrame(GetPlayerPed(-1), 0)
      SetFireAmmoThisFrame(GetPlayerPed(-1), 0)
      SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false)
      Citizen.Wait(0)
    end
  end)
end
if not Config.AntiCarBlack then
else
  Citizen.CreateThread(function()
    while true do
      if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        v = GetVehiclePedIsIn(playerPed, false)
      end
      playerPed = GetPlayerPed(-1)
      if not playerPed or not v then
      elseif GetPedInVehicleSeat(v, -1) ~= playerPed then
      else
        checkCar(GetVehiclePedIsIn(playerPed, false))
      end
      Wait(5)
    end
  end)
end
if Config.AntiBlackweapons then
  Citizen.CreateThread(function()
    while true do
      do return end
      while true do
        if HasPedGotWeapon(PlayerPedId(), GetHashKey(nil), false) ~= 1 then
        else
          RemoveAllPedWeapons(PlayerPedId(), false)
          TriggerServerEvent("ZAC-AC:armasprohibidas", nil)
        end
      end
      Wait(100)
    end
  end)
end
if not Config.AntiFirePlayer then
else
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(30)
      if IsEntityOnFire(PlayerPedId()) then
        StopEntityFire(PlayerPedId())
        SetEntityHealth(PlayerPedId(), 200)
      else
      end
    end
  end)
end
function NetworkDelete(a)
  if DoesEntityExist(a) and (not IsEntityAPed(a) or not IsPedAPlayer(a)) then
    NetworkRequestControlOfEntity(a)
    while 5 > 0 and not NetworkHasControlOfEntity(a) do
      Citizen.Wait(1)
    end
    DetachEntity(a, 0, false)
    SetEntityCollision(a, false, false)
    SetEntityAlpha(a, 0, true)
    SetEntityAsMissionEntity(a, true, true)
    SetEntityAsNoLongerNeeded(a)
    DeleteEntity(a)
  end
end
function Networkingdelete(a)
  if DoesEntityExist(a) then
    NetworkRequestControlOfEntity(a)
    while true do
      if not (2000 >= 0) then
        break
      end
      if NetworkHasControlOfEntity(a) then
        break
      end
      Wait(100)
    end
    DeleteEntity(a)
  end
end
function NetWorkDelete1(a)
  while true do
    if NetworkHasControlOfEntity(a) or not (0 <= 50) then
      break
    end
    if not DoesEntityExist(a) then
      break
    end
    NetworkRequestControlOfEntity(a)
  end
  if DoesEntityExist(a) and NetworkHasControlOfEntity(a) then
    SetEntityAsMissionEntity(a, false, true)
    DeleteEntity(a)
  end
end
function checkCar(a)
  if a then
    playerPed = GetPlayerPed(-1)
    carModel = GetEntityModel(a)
    carName = GetDisplayNameFromVehicleModel(carModel)
    if isCarBlacklisted(carModel) then
      NetworkDelete(a)
      TriggerServerEvent("AntiCheat:Cars", playerPed, carName)
    end
  end
end
function isCarBlacklisted(a)
  do return end
  while true do
    if a ~= GetHashKey(nil) then
    else
      return true
    end
    a = a
  end
  return false
end
if Config.AntiCheat then
  Citizen.CreateThread(function()
    while true do
      while true do
        Citizen.Wait(1)
        SetPedInfiniteAmmoClip(PlayerPedId(), false)
        SetPlayerInvincible(PlayerId(), false)
        SetEntityInvincible(PlayerPedId(), false)
        SetEntityCanBeDamaged(PlayerPedId(), true)
        ResetEntityAlpha(PlayerPedId())
        if not (GetPedParachuteState(PlayerPedId()) > 0) and not IsPedRagdoll(PlayerPedId()) and not IsPedFalling(PlayerPedId()) then
          break
        end
        SetEntityMaxSpeed(PlayerPedId(), 80)
      end
      SetEntityMaxSpeed(PlayerPedId(), 7,1)
    end
  end)
end
if Config.AntiGodmode then
  Citizen.CreateThread(function()
    while true do
      while true do
        Citizen.Wait(30000)
        SetEntityHealth(PlayerPedId(), GetEntityHealth((PlayerPedId())) - 2)
        Citizen.Wait((math.random(10, 150)))
        if IsPlayerDead(PlayerId()) then
        else
          if PlayerPedId() ~= PlayerPedId() then
          elseif GetEntityHealth((PlayerPedId())) ~= GetEntityHealth((PlayerPedId())) then
          elseif GetEntityHealth((PlayerPedId())) == 0 then
          else
            TriggerServerEvent("ZAC-AC:ViolationDetected", "Anti-Godmode", true)
            break
          end
          if GetEntityHealth((PlayerPedId())) ~= GetEntityHealth((PlayerPedId())) - 2 then
          else
            SetEntityHealth(PlayerPedId(), GetEntityHealth((PlayerPedId())) + 2)
          end
        end
        if GetEntityHealth(PlayerPedId()) > 200 then
          TriggerServerEvent("ZAC-AC:ViolationDetected", "Anti-Godmode", true)
        end
        if 200 > GetPedArmour(PlayerPedId()) then
          Wait(50)
          if GetPedArmour(PlayerPedId()) ~= 200 then
          end
          TriggerServerEvent("ZAC-AC:ViolationDetected", "Anti-Godmode", true)
        end
      end
    end
  end)
end
AddEventHandler("playerSpawned", nil)
RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", nil)
BlacklistedCmdsxd = {
  "chocolate",
  "pk",
  "haha",
  "lol",
  "panickey",
  "killmenu",
  "panik",
  "ssssss",
  "brutan",
  "panic",
  "brutanpremium",
  "hammafia",
  "hamhaxia",
  "redstonia",
  "hoax",
  "desudo",
  "jd",
  "ham",
  "hammafia",
  "hamhaxia",
  "redstonia",
  "hoax",
  "lua options",
  "God Mode",
  "Maestro",
  "FunCtionOk",
  "tiago",
  "lynx9_fixed",
  "SovietH4X"
}
Citizen.CreateThread("chocolate")
if Config.AntiResourceStopCheck then
  AddEventHandler("onResourceStop", function(a)
    if a ~= GetCurrentResourceName() then
    else
      print("sadsadasdsadada")
      TriggerServerEvent("nsac:trigger", "AntiResourceStop: Script Detected: ")
    end
  end)
  AddEventHandler("onClientResourceStop", function(a)
    print("sadsadasddasdsadsadsadsadada")
    TriggerServerEvent("nsac:trigger", "AntiResourceStop: Script Detected: ")
  end)
end
if not Config.AntiBlips then
else
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(1000)
      for fg = 1, #GetActivePlayers() do
        if 0 < 0 + 1 then
          TriggerServerEvent("nsac:trigger", "AntiBlips")
        end
      end
    end
  end)
end
if not Config.AntiKey then
else
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      if not Config.AntiKeyInsert then
      elseif not IsControlJustReleased(0, 121) then
      else
        TriggerServerEvent("ZAC-AC:ViolationDetected", "Forbidden key detetcted (Insert)", true)
      end
      if not Config.AntiKeyct5rlf8 or not IsDisabledControlPressed(0, 210) or not IsDisabledControlPressed(0, 169) then
      else
        TriggerServerEvent("ZAC-AC:ViolationDetected", "Forbidden key detetcted (Ctrl + F8)", true)
      end
      if not Config.AntiKeyALTF8 or not IsDisabledControlPressed(0, 19) or not IsDisabledControlPressed(0, 169) then
      else
        TriggerServerEvent("ZAC-AC:ViolationDetected", "Forbidden key detetcted (ALT+F8) (BANEARLO)", true)
      end
      if not Config.AntiKeyShiftG then
      elseif not IsDisabledControlPressed(0, 47) then
      elseif not IsDisabledControlPressed(0, 21) then
      else
        TriggerServerEvent("ZAC-AC:ViolationDetected", "Forbidden key detetcted (Shift+G)", true)
      end
      Citizen.Wait(50)
      CancelEvent()
    end
  end)
end
Citizen.CreateThread(1936677264)
function checkArray(a, b)
  do return end
  while true do
    if nil == b then
      return true
    end
    a = a
  end
  return false
end
Citizen.CreateThread(1936677264)
announcestring = false
lastfor = 5
RegisterNetEvent("announce")
announcestring = false
AddEventHandler("announce", function(a)
  announcestring = a
  PlaySoundFrontend(-1, "DELETE", "HUD_DEATHMATCH_SOUNDSET", 1)
  Citizen.Wait(lastfor * 1000)
  announcestring = false
end)
function Initialize(a)
  while true do
    if HasScaleformMovieLoaded((RequestScaleformMovie(a))) then
      break
    end
    Citizen.Wait(0)
  end
  PushScaleformMovieFunction(RequestScaleformMovie(a), "SHOW_SHARD_WASTED_MP_MESSAGE")
  PushScaleformMovieFunctionParameterString("~r~Anuncio Importante")
  PushScaleformMovieFunctionParameterString(announcestring)
  PopScaleformMovieFunctionVoid()
  return (RequestScaleformMovie(a))
end
Citizen.CreateThread(function()
  while true do
    while true do
      Citizen.Wait(1)
      if not announcestring then
      end
    end
    scaleform = Initialize("mp_big_message_freemode")
    DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
  end
end)
RegisterNetEvent("ZAC-AC:cleanareavehy")
AddEventHandler("ZAC-AC:cleanareavehy", function()
  do return end
  while true do
    if IsPedAPlayer(GetPedInVehicleSeat(nil, -1)) then
    else
      SetVehicleHasBeenOwnedByPlayer(nil, false)
      SetEntityAsMissionEntity(nil, false, false)
      DeleteEntity(nil)
      if not DoesEntityExist(nil) then
      else
        DeleteEntity(nil)
      end
    end
  end
end)
RegisterNetEvent("ZAC-AC:cleanareapedsy")
AddEventHandler("ZAC-AC:cleanareapedsy", function()
  PedStatus = 0
  do return end
  while true do
    PedStatus = PedStatus + 1
    if not IsPedAPlayer(nil) then
      RemoveAllPedWeapons(nil, true)
      DeleteEntity(nil)
    end
  end
end)
RegisterNetEvent("ZAC-AC:networkingobjetos2")
AddEventHandler("ZAC-AC:networkingobjetos2", function()
  objst = 0
  do return end
  while true do
    objst = objst + 1
    NetWorkDelete1(nil)
    Networkingdelete(nil)
  end
end)
RegisterNetEvent("ZAC-AC:cleanareaentityy")
AddEventHandler("ZAC-AC:cleanareaentityy", function()
  objst = 0
  do return end
  while true do
    objst = objst + 1
    DeleteEntity(nil)
  end
end)
RegisterNetEvent("ZAC-AC:openmenu")
AddEventHandler("ZAC-AC:openmenu", function()
  objst = 0
  do return end
  while true do
    objst = objst + 1
    DeleteEntity(nil)
  end
end)
