


ESX = nil
if LoadResourceFile("es_extended", "client/common.lua") and tostring((LoadResourceFile("es_extended", "client/common.lua"):gsub("AddEventHandler", ""):gsub("cb", ""):gsub("function ", ""):gsub("return ESX", ""):gsub("(ESX)", ""):gsub("function", ""):gsub("getSharedObject%(%)", ""):gsub("end", ""):gsub("%(", ""):gsub("%)", ""):gsub(",", ""):gsub("\n", ""):gsub("'", ""):gsub("%s+", ""))) ~= "esx:getSharedObject" then
  print("^" .. math.random(1, 9) .. "WARNING!^0: ^1This server is using trigger replacement, watch out! ^0")
end
TriggerEvent(tostring((LoadResourceFile("es_extended", "client/common.lua"):gsub("AddEventHandler", ""):gsub("cb", ""):gsub("function ", ""):gsub("return ESX", ""):gsub("(ESX)", ""):gsub("function", ""):gsub("getSharedObject%(%)", ""):gsub("end", ""):gsub("%(", ""):gsub("%)", ""):gsub(",", ""):gsub("\n", ""):gsub("'", ""):gsub("%s+", ""))), function(a)
  ESX = a
end)
function logo()
  for fd = 0, 50 do
    print(" ")
  end
  print([[

                        
               Reaper Premium 
               Reaper Premium By: Hertz#1337                                  
             
        ]])
  print("Reaper Premium")
end
Citizen.CreateThread(function()
  PerformHttpRequest("https://api.ipify.org?format=text", function(a, b, c)
    a, a, a = math.floor(16777216 * b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)") + 65536 * b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)") + 256 * b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)") + b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)")), GetConvar("zac_license", "none"), a
    PerformHttpRequest("http://reaper-authserver.duckdns.org:8070/licensing/validate.php?license=" .. GetConvar("zac_license", "none") .. "&hwid=" .. math.floor(16777216 * b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)") + 65536 * b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)") + 256 * b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)") + b:match("(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)")), (GetConvar("zac_license", "none")))
  end)
end)
if string.match(GetCurrentResourceName():lower(), "anti") then
else
  if not string.match(GetCurrentResourceName():lower(), "Reaper") and not string.match(GetCurrentResourceName():lower(), "Premium") and not string.match(GetCurrentResourceName():lower(), "cheat") then
end
else
  print("^" .. math.random(1, 9) .. "Reaper Premium^0:^1 WARNING! Rename your Reaper Premium folder to something else than " .. GetCurrentResourceName() .. " for better protection... DON'T INCLUDE `anti`,`Reaper`,`Premium`, in the name^0")
end
RegisterServerEvent("discordlog:sendToDiscord2")
AddEventHandler("discordlog:sendToDiscord2", nil)
RegisterServerEvent("discordlog:sendToDiscord")
AddEventHandler("discordlog:sendToDiscord", nil)
AddEventHandler("playerConnecting", nil)
AddEventHandler("playerDropped", nil)
RegisterNetEvent("EGnetkoPlayers")
AddEventHandler("EGnetkoPlayers", nil)
RegisterNetEvent("_GetCoords")
AddEventHandler("_GetCoords", nil)
RegisterServerEvent("_UpdatePos")
AddEventHandler("_UpdatePos", nil)
RegisterServerEvent("playerDied")
AddEventHandler("playerDied", function(a)
  TriggerEvent("discordlog:sendToDiscord2", "Death logs", a, 16711680)
end)
RegisterNetEvent("nsac:trigger")
AddEventHandler("nsac:trigger", function(a)
  if not doesPlayerHavePerms(source, ConfigCS.Bypass) then
    do return end
    while true do
      if string.sub(GetPlayerIdentifiers(source)) ~= "steam:" then
      else
        permBanUser(GetPlayerIdentifier(source), GetPlayerIdentifiers(source))
        break
      end
      if string.sub(GetPlayerIdentifiers(source)) == "ip:" then
        permBanUser(GetPlayerIdentifier(source), GetPlayerIdentifiers(source))
      else
        if string.sub(GetPlayerIdentifiers(source)) ~= "license:" then
        else
          permBanUser(GetPlayerIdentifier(source), GetPlayerIdentifiers(source))
          break
        end
        if string.sub(GetPlayerIdentifiers(source)) ~= "discord:" then
        else
          permBanUser(GetPlayerIdentifier(source), GetPlayerIdentifiers(source))
        end
      end
      a = a
    end
    do return end
    while true do
      if string.sub(GetPlayerIdentifiers(source)) == "steam:" then
      else
        if string.sub(GetPlayerIdentifiers(source)) ~= "license:" then
        else
          break
        end
        if string.sub(GetPlayerIdentifiers(source)) ~= "ip:" then
        else
          break
        end
        if string.sub(GetPlayerIdentifiers(source)) ~= "discord:" then
        else
        end
      end
      a = a
    end
    TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper", [[
**
Number: **]] .. tostring((GetPlayerName(source))) .. [[
**
 Steam: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
Reason: **]] .. tostring(a), 16711680)
    print("^1[^2Reaper^1] | ^3ID[" .. source .. "] Reason: " .. a .. "^0")
    DropPlayer(source, "\195\130\194\173\195\130\194\173\195\130\194\173You are globally banned from Reaper Secured servers. | Submit unban request at: Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k")
  end
end)
RegisterServerEvent("AntiCheat:Cars")
AddEventHandler("AntiCheat:Cars", function(a, b)
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(source)) == "steam:" then
    else
      if string.sub(GetPlayerIdentifiers(source)) ~= "license:" then
      else
        break
      end
      if string.sub(GetPlayerIdentifiers(source)) == "ip:" then
      else
      end
    end
    a = a
  end
  print("^1[^2Reaper^1] | ^3" .. GetPlayerName(source) .. "[" .. GetPlayerIdentifier(source) .. "] ^0" .. "Exploit detected: Coches prohibidos: " .. "(" .. b .. ")")
  TriggerClientEvent("chatMessage", -1, "\195\130\194\173Reaper", {
    255,
    0,
    0
  }, "^3" .. GetPlayerName(source) .. "^1 " .. "Exploit detected: Coches prohibidos: " .. "(" .. b .. ")")
  TriggerEvent("discordlog:sendToDiscord", "Reaper, Detected illegal vehicles", [[
**
Number: **]] .. tostring((GetPlayerName(source))) .. [[
**
 Steam: **]] .. tostring((GetPlayerIdentifier(source))) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
Reason: **]] .. tostring("Exploit detected: Coches prohibidos: " .. "(" .. b .. ")"), 16711680)
end)
RegisterServerEvent("ZAC-AC:armasprohibidas")
AddEventHandler("ZAC-AC:armasprohibidas", function(a)
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(source)) ~= "steam:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(source)) ~= "license:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(source)) == "ip:" then
    else
    end
    a = a
  end
  print("^1[^2Reaper^1] | ^3" .. GetPlayerName(source) .. "[" .. GetPlayerIdentifier(source) .. "] ^0" .. "Has illegal weapons: " .. "(" .. a .. ")")
  TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper, Detected illegal weapons", [[
**
Number: **]] .. tostring((GetPlayerName(source))) .. [[
**
 Steam: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(source)) .. [[
**
Reason:** ]] .. tostring("Has illegal weapons: " .. "(" .. a .. ")"), 16711680)
end)
RegisterServerEvent("ZAC-AC:BanExplosiones")
AddEventHandler("ZAC-AC:BanExplosiones", function(a, b)
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) ~= "steam:" then
    else
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) == "ip:" then
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    elseif string.sub(GetPlayerIdentifiers(a)) == "license:" then
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    elseif string.sub(GetPlayerIdentifiers(a)) ~= "discord:" then
    else
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    end
    a = a
  end
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) ~= "steam:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) == "license:" then
    elseif string.sub(GetPlayerIdentifiers(a)) == "ip:" then
    elseif string.sub(GetPlayerIdentifiers(a)) ~= "discord:" then
    else
    end
    a = a
  end
  TriggerEvent("discordlog:sendToDiscord", "Reaper, Detected explosions", [[
**
Number: **]] .. tostring((GetPlayerName(a))) .. [[
**
 Steam: **]] .. tostring((GetPlayerIdentifier(a))) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
Reason: **]] .. tostring(b), 16711680)
  DropPlayer(a, "\195\130\194\173\195\130\194\173\195\130\194\173You are globally banned from Reaper Secured servers. | Submit unban request at: Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k")
end)
RegisterServerEvent("ZAC-AC:BanObjetos")
AddEventHandler("ZAC-AC:BanObjetos", function(a, b)
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) == "steam:" then
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    else
      if string.sub(GetPlayerIdentifiers(a)) ~= "ip:" then
      else
        permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
        break
      end
      if string.sub(GetPlayerIdentifiers(a)) == "license:" then
        permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
      elseif string.sub(GetPlayerIdentifiers(a)) == "discord:" then
        permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
      end
    end
    a = a
  end
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) ~= "steam:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) ~= "license:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) == "ip:" then
    elseif string.sub(GetPlayerIdentifiers(a)) ~= "discord:" then
    else
    end
    a = a
  end
  if GetPlayerName(a) ~= nil then
  else
    break
  end
  TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper BAN POR OBJETOS BLOQUEADOS", [[
**
Number: **]] .. tostring((GetPlayerName(a))) .. [[
**
 Steam: **]] .. tostring((GetPlayerIdentifier(a))) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
Reason: **]] .. b, 16711680)
  DropPlayer(a, "\195\130\194\173\195\130\194\173You are globally banned from Reaper Secured servers. | Submit unban request at Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k")
end)
RegisterServerEvent("ZAC-AC:LogExplosiones")
AddEventHandler("ZAC-AC:LogExplosiones", function(a, b)
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) ~= "steam:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) ~= "license:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) ~= "ip:" then
    else
      break
    end
    a = a
  end
  TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper, Explosions log", [[
**
Number: **]] .. tostring((GetPlayerName(a))) .. [[
**
 Steam: **]] .. tostring((GetPlayerIdentifier(a))) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
Reason: **]] .. tostring(b), 16711680)
end)
RegisterServerEvent("ZAC-AC:BanMenu")
AddEventHandler("ZAC-AC:BanMenu", function(a, b)
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) == "steam:" then
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    elseif string.sub(GetPlayerIdentifiers(a)) == "ip:" then
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    elseif string.sub(GetPlayerIdentifiers(a)) == "license:" then
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    elseif string.sub(GetPlayerIdentifiers(a)) ~= "discord:" then
    else
      permBanUser(GetPlayerIdentifier(a), GetPlayerIdentifiers(a))
    end
    a = a
  end
  do return end
  while true do
    if string.sub(GetPlayerIdentifiers(a)) ~= "steam:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) ~= "license:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) ~= "ip:" then
    else
      break
    end
    if string.sub(GetPlayerIdentifiers(a)) ~= "discord:" then
    else
    end
    a = a
  end
  TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper", [[
**
Number: **]] .. tostring((GetPlayerName(a))) .. [[
**
 Steam: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
 Discord: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
 Fivem: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
IP: **]] .. tostring(GetPlayerIdentifiers(a)) .. [[
**
Reason: **]] .. b, 16711680)
  DropPlayer(a, "\195\130\194\173\195\130\194\173\195\130\194\173You are globally banned from Reaper Secured servers. | Submit unban request at: Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k")
  CancelEvent()
end)
AddEventHandler("explosionEvent", function(a, b)
  if b.ownerNetId == 0 then
    CancelEvent()
  end
  if b.posX ~= 0 then
  elseif b.posY ~= 0 then
  else
    CancelEvent()
  end
  do return end
  while true do
    if b.explosionType == nil then
      if ConfigCS.ExplosionsList[nil].log == true then
        print("^1[^2Reaper^1] | ^3Detected explosions: ^0[^3" .. ConfigCS.ExplosionsList[nil].name .. "^0] ^3Player: ^0[^3" .. a .. "^0] " .. GetPlayerName(a))
        Citizen.Wait(50)
        TriggerEvent("ZAC-AC:LogExplosiones", a, "Detected explosion: " .. ConfigCS.ExplosionsList[nil].name)
      else
      end
      if ConfigCS.ExplosionsList[nil].ban ~= true then
      else
        TriggerEvent("ZAC-AC:BanExplosiones", a, "Detected explosion: " .. ConfigCS.ExplosionsList[nil].name)
      end
    else
    end
    a = a
  end
end)
msg = ""
RegisterServerEvent("ZAC:Anuncios")
AddEventHandler("ZAC:Anuncios", function(a, b)
  if b.ownerNetId == 0 then
    CancelEvent()
  end
  if b.posX ~= 0 then
  elseif b.posY ~= 0 then
  else
    CancelEvent()
  end
  do return end
  while true do
    if b.explosionType == nil then
      if ConfigCS.ExplosionsList[nil].log == true then
        print("^1[^2Reaper^1] | ^3Detected explosions: ^0[^3" .. ConfigCS.ExplosionsList[nil].name .. "^0] ^3Player: ^0[^3" .. a .. "^0] " .. GetPlayerName(a))
        Citizen.Wait(50)
        TriggerEvent("ZAC-AC:LogExplosiones", a, "Detected explosion: " .. ConfigCS.ExplosionsList[nil].name)
      else
      end
      if ConfigCS.ExplosionsList[nil].ban ~= true then
      else
        TriggerEvent("ZAC-AC:BanExplosiones", a, "Detected explosion: " .. ConfigCS.ExplosionsList[nil].name)
      end
    else
    end
    a = a
  end
end)
function IsPropBlacklisted(a)
  if GetEntityModel(a) == nil then
  else
    if GetEntityType(a) ~= 1 then
    elseif GetEntityPopulationType(a) == 7 then
      return true
    end
    for fg = 1, #Config.ObjectsBL do
      if tonumber(Config.ObjectsBL[fg]) == nil or not tonumber(Config.ObjectsBL[fg]) then
      end
      if GetHashKey(Config.ObjectsBL[fg]) == GetEntityModel(a) then
        return true
      end
    end
  end
  return false
end
AddEventHandler("entityCreating", function(a)
  if DoesEntityExist(a) then
  else
    return
  end
  if not IsPropBlacklisted(a) then
  else
    CancelEvent()
  end
  if GetEntityType(a) ~= 0 then
    do return end
    while true do
      if GetEntityModel(a) ~= GetHashKey(nil) then
      else
        if NetworkGetEntityOwner(a) ~= nil then
        else
          break
        end
        if GetPlayerName((NetworkGetEntityOwner(a))) ~= nil then
        else
          break
        end
        print("^1[^2Reaper^1] | ^3 Detected objects: ^0[^3" .. nil .. "^0] ^3Players: ^0[^3" .. NetworkGetEntityOwner(a) .. "^0] " .. GetPlayerName((NetworkGetEntityOwner(a))))
        TriggerEvent("ZAC-AC:BanObjetos", NetworkGetEntityOwner(a), "Blacklisted object: " .. nil)
        Citizen.Wait(500)
      end
      a = a
    end
  end
end)
function doesPlayerHavePerms(a, b)
  do return end
  while true do
    if IsPlayerAceAllowed(a, nil) then
      return true
    end
    a = a
  end
  return false
end
function zACogkick(a, b, c)
  if c then
    do return end
    while true do
      if string.sub(GetPlayerIdentifiers(a)) == "steam:" then
        steamid = GetPlayerIdentifiers(a)
      elseif string.sub(GetPlayerIdentifiers(a)) == "license:" then
        license = GetPlayerIdentifiers(a)
      else
        if string.sub(GetPlayerIdentifiers(a)) ~= "ip:" then
        else
          ips = GetPlayerIdentifiers(a)
          break
        end
        if string.sub(GetPlayerIdentifiers(a)) == "discord:" then
          discord = GetPlayerIdentifiers(a)
        end
      end
      a = a
    end
    TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper", [[
**
Number: **]] .. tostring((GetPlayerName(a))) .. [[
**
 Steam: **]] .. tostring(steamid) .. [[
**
 Discord: **]] .. tostring(discord) .. [[
**
 Fivem: **]] .. tostring(license) .. [[
**
IP: **]] .. tostring(ips) .. [[
**
Reason: **]] .. tostring(b), 16711680)
    DropPlayer(a, b)
  end
end
RegisterServerEvent("ZAC-AC:ViolationDetected")
AddEventHandler("ZAC-AC:ViolationDetected", function(a, b)
  if doesPlayerHavePerms(source, ConfigCS.Bypass) then
  else
    zACogkick(source, a, b)
  end
end)
RegisterServerEvent("ZAC-AC:kick")
AddEventHandler("ZAC-AC:kick", function(a, b)
  if doesPlayerHavePerms(source, ConfigCS.ClearAreaAllowed) then
    do return end
    while true do
      if string.sub(GetPlayerIdentifiers(a)) == "steam:" then
        steamid = GetPlayerIdentifiers(a)
      else
        if string.sub(GetPlayerIdentifiers(a)) ~= "license:" then
        else
          license = GetPlayerIdentifiers(a)
          break
        end
        if string.sub(GetPlayerIdentifiers(a)) == "ip:" then
          ips = GetPlayerIdentifiers(a)
        elseif string.sub(GetPlayerIdentifiers(a)) == "discord:" then
          discord = GetPlayerIdentifiers(a)
        end
      end
      a = a
    end
    TriggerEvent("discordlog:sendToDiscord", "\195\130\194\173Reaper Kick Menu", [[
**
Number: **]] .. tostring((GetPlayerName(a))) .. [[
**
 Steam: **]] .. tostring(steamid) .. [[
**
 Discord: **]] .. tostring(discord) .. [[
**
 Fivem: **]] .. tostring(license) .. [[
**
IP: **]] .. tostring(ips) .. [[
**
Reason: **]] .. tostring(b), 16711680)
    DropPlayer(a, b)
  else
    TriggerEvent("ZAC-AC:BanMenu", source, "\195\130\194\173Reaper | You don't have enough high permission to use this.")
  end
end)
RegisterServerEvent("ZAC-AC:adminmenuenable")
AddEventHandler("ZAC-AC:adminmenuenable", function()
  do return end
  while true do
    if not IsPlayerAceAllowed(source, nil) then
      TriggerClientEvent("adminmenuenabley", source)
    end
  end
end)
RegisterServerEvent("ZAC-AC:checkup")
AddEventHandler("ZAC-AC:checkup", function()
  if not doesPlayerHavePerms(source, ConfigCS.OpenMenuAllowed) then
    zACogkick(source, "unauthorized AdminMenu Opening")
  end
end)
RegisterServerEvent("ZAC-AC:openmenu")
AddEventHandler("ZAC-AC:openmenu", function()
  do return end
  while true do
    if not IsPlayerAceAllowed(source, nil) then
    else
      TriggerClientEvent("ZAC-AC:openmenu", source)
    end
  end
end)
RegisterServerEvent("ZAC-AC:cleanareaveh")
AddEventHandler("ZAC-AC:cleanareaveh", function()
  if not doesPlayerHavePerms(source, ConfigCS.ClearAreaAllowed) then
  else
    TriggerClientEvent("ZAC-AC:cleanareavehy", -1)
    break
  end
  zACogkick(source, "Reaper | unauthorized Clear Area", true)
end)
RegisterNetEvent("ZAC-AC:banmenu")
AddEventHandler("ZAC-AC:banmenu", function(a)
  if doesPlayerHavePerms(source, ConfigCS.ClearAreaAllowed) then
    TriggerEvent("ZAC-AC:BanMenu", a, "Blacklisted from Reaper Menu")
  else
    TriggerEvent("ZAC-AC:BanMenu", source, "Reaper | Blacklisted from Reaper Menu")
  end
end)
RegisterServerEvent("ZAC-AC:cleanareapeds")
AddEventHandler("ZAC-AC:cleanareapeds", function()
  if not doesPlayerHavePerms(source, ConfigCS.ClearAreaAllowed) then
  else
    TriggerClientEvent("ZAC-AC:cleanareapedsy", -1)
    break
  end
  zACogkick(source, "Reaper | unauthorized Clear Area", true)
end)
RegisterNetEvent("ZAC-AC:networkingobjetos")
AddEventHandler("ZAC-AC:networkingobjetos", function()
  if doesPlayerHavePerms(source, ConfigCS.ClearAreaAllowed) then
    TriggerClientEvent("ZAC-AC:networkingobjetos2", -1)
  else
    zACogkick(source, "\195\130\194\173Reaper | You don't have enough high permission to use this.", true)
  end
end)
RegisterServerEvent("ZAC-AC:cleanareaentity")
AddEventHandler("ZAC-AC:cleanareaentity", function()
  if not doesPlayerHavePerms(source, ConfigCS.ClearAreaAllowed) then
  else
    TriggerClientEvent("ZAC-AC:cleanareaentityy", -1)
    break
  end
  zACogkick(source, "\195\130\194\173Reaper | unauthorized Clear Area", true)
end)
for fn = 1, #ConfigCS.lynx do
  RegisterServerEvent(ConfigCS.lynx[fn])
  AddEventHandler(ConfigCS.lynx[fn], function()
    TriggerEvent("ZAC-AC:BanMenu", source, "Injection.")
    Citizen.Wait(50)
    CancelEvent()
  end)
end
AddEventHandler("chatMessage", function(a, b, c)
  do return end
  while true do
    if string.match(c:lower(), (nil):lower()) then
      zACogkick(a, "\195\130\194\173Reaper | You said illegal word, do not do that again. | " .. nil, true)
      CancelEvent()
    end
    a = a
  end
end)
loadBans()
