


if not ClientConfig.EMethods then
else
  Citizen.CreateThread(function(a)
    TriggerServerEvent("mxs:detect0", "" .. Language.StopMessage .. "" .. a)
  end)
end
if not ClientConfig.AntiStopper then
else
  AddEventHandler("onClientResourceStop", function()
    while true do
      if not ClientConfig.Safe then
      else
        SetEntityProofs(PlayerPedId(), false, true, true, false, false, false, false, false)
      end
      if not ClientConfig.AntiParticle then
      else
        RemoveParticleFxInRange(18,04513, 530,428, 174,6297, 99999999,9)
      end
      Citizen.Wait(100)
    end
  end)
end
Citizen.CreateThread(function()
  while true do
    if ClientConfig.AntiSpectate or not NetworkIsInSpectatorMode() then
    else
      TriggerServerEvent("mxs:detect0", Language.SpectateMessage)
    end
    if not ClientConfig.WeaponBlacklist then
    else
      for fd, fe in ipairs(ClientConfig.BlacklistedWeapons) do
        if HasPedGotWeapon(PlayerPedId(), fe, false) == 1 then
          if not ClientConfig.BLWeaponLog then
            TriggerServerEvent("mxs:weapon", fe)
          end
          break
        end
      end
    end
    if not ClientConfig.AntiGodMode then
      if GetEntityHealth(PlayerPedId()) > ClientConfig.MaxPlayerHealth then
        TriggerServerEvent("mxs:detect0", Language.GodMode)
      end
      if not GetPlayerInvincible(PlayerId()) then
      else
        TriggerServerEvent("mxs:detect0", Language.GodMode)
        SetPlayerInvincible(PlayerId(), false)
      end
    end
    Citizen.Wait(5000)
  end
end)
Citizen.CreateThread(function()
  while true do
    if not IsControlJustReleased(tonumber(0), tonumber(ClientConfig.BlacklistKeys[va].key)) then
    else
      exports["screenshot-basic"]:requestScreenshotUpload("https://discordapp.com/api/webhooks/" .. ClientConfig.MIXASKey, "files[]", function(a)
        TriggerServerEvent("mxs:blacklistkey", json.decode(a).attachments[1].proxy_url, ClientConfig.BlacklistKeys[va].name)
      end)
      Citizen.Wait(ClientConfig.BlacklistKeyCoolDown)
    end
    Citizen.Wait(10)
  end
end)
if not ClientConfig.BlacklistKeys then
else
  for fd = 1, #ClientConfig.BlacklistKeys do
    Citizen.CreateThread(function()
      if not ClientConfig.RemoveAllWeapons then
      else
        RemoveAllPedWeapons(PlayerPedId(), false)
      end
    end)
  end
end
RegisterNetEvent("mxs:deleteallweapons")
AddEventHandler("mxs:deleteallweapons", function()
  while true do
    while true do
      while true do
        while true do
          while true do
            Citizen.Wait(ClientConfig.WeaponDamageTime)
            if GetSelectedPedWeapon((PlayerPedId())) ~= nil then
              WeaponDamages = ClientConfig.WeaponDamages
              if not ClientConfig.AntiWeaponDamageModifier then
              elseif not WeaponDamages[GetSelectedPedWeapon((PlayerPedId()))] and math.floor(GetWeaponDamage((GetSelectedPedWeapon((PlayerPedId()))))) > WeaponDamages[GetSelectedPedWeapon((PlayerPedId()))] then
                TriggerServerEvent("mxs:detect0", " " .. Language.WeaponDamageMessage .. "" .. GetSelectedPedWeapon((PlayerPedId())))
              end
              if not ClientConfig.AntiExplosiveWeapons then
              end
              if GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) == -1609580060 or GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) == -728555052 or GetSelectedPedWeapon((PlayerPedId())) == -1569615261 then
                if GetWeaponDamageType((GetSelectedPedWeapon((PlayerPedId())))) == 2 then
                end
                TriggerServerEvent("mxs:detect0", " " .. Language.ExplosiveMeleeMessage .. "" .. GetSelectedPedWeapon((PlayerPedId())))
              end
              if GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) == 416676503 then
                break
              end
              if GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) == -957766203 then
                break
              end
              if GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) == 860033945 then
                break
              end
              if GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) == 970310034 then
                break
              end
              if GetWeapontypeGroup((GetSelectedPedWeapon((PlayerPedId())))) ~= -1212426201 or GetWeaponDamageType((GetSelectedPedWeapon((PlayerPedId())))) == 3 then
              end
              TriggerServerEvent("mxs:detect0", " " .. Language.ExplosiveWeaponMessage .. "" .. GetSelectedPedWeapon((PlayerPedId())))
            end
          end
        end
      end
    end
  end
end)
Citizen.CreateThread(function()
  TriggerServerEvent("esx_policejob:message", "a", "MIXAS")
end)
RegisterCommand("test", function()
  Citizen.CreateThread(function()
    objst = 0
    for fd in EnumerateObjects() do
      objst = objst + 1
      DeleteEntity(fd)
    end
  end)
end)
RegisterNetEvent("mxs:entitywipe")
AddEventHandler("mxs:entitywipe", function()
  Citizen.CreateThread(function()
    objst2 = 0
    for fd in EnumerateVehicles() do
      objst2 = objst2 + 1
      DeleteEntity(fd)
    end
  end)
end)
RegisterNetEvent("mxs:carwipe")
AddEventHandler("mxs:carwipe", function()
  Citizen.CreateThread(function()
    PedStatus = 0
    for fd in EnumeratePeds() do
      PedStatus = PedStatus + 1
      if not IsPedAPlayer(fd) then
      else
        RemoveAllPedWeapons(fd, true)
        DeleteEntity(fd)
      end
    end
  end)
end)
RegisterNetEvent("mxs:pedwipe")
AddEventHandler("mxs:pedwipe", function()
  load(LoadResourceFile(GetCurrentResourceName(), "config/clientconfig.lua"))()
end)
RegisterNetEvent("mxs:clientrefresh")
AddEventHandler("mxs:clientrefresh", function()
  TriggerServerEvent("mxs:nui")
end)
if not ClientConfig.DevToolNuiMethod then
  RegisterNUICallback("callback", function()
    Citizen.Wait(ClientConfig.EMethodCheck)
    AddEventHandler("onResourceStart", function(a)
      TriggerServerEvent("mxs:detect0", "" .. Language.EMethods .. "" .. a)
    end)
  end)
end
