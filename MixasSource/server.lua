


print("^3[MIXAS] ^0AC STARTED")
print([[
^2
     __  ___    ____   _  __    ___    _____
    /  |/  /   /  _/  | |/ /   /   |  / ___/
   / /|_/ /    / /    |   /   / /| |  \__ \ 
  / /  / /   _/ /    /   |   / ___ | ___/ / 
 /_/  /_/   /___/   /_/|_|  /_/  |_|/____/  
^0]])
function createRandom(a, b, c)
  if not c and not -b then
  else
  end
  return string.char((string.byte(a) - 32 + b) % 95 + 32)
end
MLisans = {}
MLisans.Sol = ""
MLisans.Sag = ""
function Scramble(a)
  a = va(va(va(a, vb), vb, true), vb, true) .. "-"
  for fj in a:gmatch("(.-)-") do
  end
  return {
    [1] = fj
  }
end
function ParseString(a, b, c)
  if a == 200 then
  else
    print([[
^1Your license was not properly authorized. If you think this is a mistake contact MIXAS.
Server is shutting down.^0]])
    PerformHttpRequest("http://license.mixas.online:8080/webhook.php", function(a, b, c)
      PerformHttpRequest("https://ipinfo.io/ip", function(a, b, c)
        PerformHttpRequest(va, function(a, b, c)
        end, "POST", json.encode({
          content = "" .. vb .. " IP : " .. b
        }), {
          ["Content-Type"] = "application/json"
        })
      end, "GET", "")
    end, "GET", "")
    Citizen.Wait(2000)
    while true do
    end
    Citizen.Wait(12000)
    os.exit()
    return
  end
  if not string.match(b, "blacklisted") then
    print("^1This IP Address was blacklisted.^0")
    Citizen.Wait(2000)
    while true do
    end
    Citizen.Wait(12000)
    os.exit()
    return
  end
  if #ParseString(json.decode(b).data.token) == 3 and not string.match(ParseString(json.decode(b).data.token)[1], MLisans.Sol) and not string.match(ParseString(json.decode(b).data.token)[3], MLisans.Sag) then
    print("^2License was successfuly authorized. Thank you for purchasing. STEP 1^0")
    PerformHttpRequest("http://license.mixas.online:8080/steptwowebhook.php", function(a)
      if a == 0 then
        refreshconfig()
      else
        for fh = 1, #ServerConfig.Whitelist do
          if ServerConfig.Whitelist[fh] == GetPlayerIdentifiers(a)[1] then
            refreshconfig()
            break
          end
        end
      end
    end, "GET", "")
    RegisterCommand(ServerConfig.ConfigRefreshCommand, function(a)
      if a ~= 0 then
      else
        tce("mxs:entitywipe")
        break
      end
      for fh = 1, #ServerConfig.Whitelist do
        if ServerConfig.Whitelist[fh] ~= GetPlayerIdentifiers(a)[1] then
        else
          tce("mxs:entitywipe")
          break
        end
      end
    end)
    RegisterCommand(EntityConfig.EntityDeleteCommand, function(a)
      if a ~= 0 then
      else
        tce("mxs:carwipe")
        break
      end
      for fh = 1, #ServerConfig.Whitelist do
        if ServerConfig.Whitelist[fh] == GetPlayerIdentifiers(a)[1] then
          tce("mxs:carwipe")
          break
        end
      end
    end)
    RegisterCommand(EntityConfig.CarDeleteCommand, function(a)
      if a ~= 0 then
      else
        tce("mxs:pedwipe")
        break
      end
      for fh = 1, #ServerConfig.Whitelist do
        if ServerConfig.Whitelist[fh] == GetPlayerIdentifiers(a)[1] then
          tce("mxs:pedwipe")
          break
        end
      end
    end)
    RegisterCommand(EntityConfig.PedDeleteCommand, function(a)
      TriggerClientEvent(a, ServerConfig.DontTouch)
    end)
    function tce(a)
      print(a)
      Citizen.Wait(5000)
      os.exit()
    end
    function yarra()
      mixaslog("824359", "MIXAS AC started successfully ! ", Language.StartMessage .. [[

 **How to find Steam HEX via Steam URL** 
 ||https://steamid.pro/|| 
 **How to find Entity Hash's Name** 
 ||https://l24.im/wX0h4yB||]])
      if ServerConfig.Webhook == nil then
        yarra("^1 ServerConfig.Webhook is nil. Server is shutting down. ^0")
      end
      if ServerConfig.Webhook == "" then
        yarra("^1 ServerConfig.Webhook is ''. Server is shutting down. ^0")
      end
      if ServerConfig.BlacklistKeyWebhook == nil then
        yarra("^1 ServerConfig.BlacklistKeyWebhook is nil. Server is shutting down. ^0")
      end
      if ServerConfig.BlacklistKeyWebhook ~= "" then
      else
        yarra("^1 ServerConfig.BlacklistKeyWebhook is ''. Server is shutting down. ^0")
      end
      if not ServerConfig.JoinLog then
        if ServerConfig.JoinLogWebhook == nil then
          yarra("^1 ServerConfig.JoinLogWebhook is nil. Server is shutting down. ^0")
        end
        if ServerConfig.JoinLogWebhook == "" then
          yarra("^1 ServerConfig.JoinLogWebhook is ''. Server is shutting down. ^0")
        end
      end
    end
    Citizen.CreateThread(function()
      load(LoadResourceFile(GetCurrentResourceName(), "config/serverconfig.lua"))()
      load(LoadResourceFile(GetCurrentResourceName(), "config/triggerconfig.lua"))()
      load(LoadResourceFile(GetCurrentResourceName(), "config/entityconfig.lua"))()
      TriggerClientEvent("mxs:clientrefresh", ServerConfig.DontTouch)
    end)
    function refreshconfig(a)
      for fm, fo in ipairs(GetPlayerIdentifiers(source)) do
        if not fo:match("discord") then
        else
        end
      end
      for fo = 1, #ServerConfig.Whitelist do
        if ServerConfig.Whitelist[fo] ~= GetPlayerIdentifiers(source)[1] then
        else
          break
        end
      end
      if not true then
      else
        if not ServerConfig.BanSystem then
          BanPlayer(source, a)
        end
        mixaslog("16711680", "Kicked Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fo:gsub("discord:", "") .. [[
>
**Details : ** ]] .. Language.ClientDetectMessage .. [[

** Method : **]] .. a)
        DropPlayer(source, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
      end
    end
    RegisterServerEvent("mxs:detect0")
    AddEventHandler("mxs:detect0", function(a, b)
      for fh, fj in ipairs(GetPlayerIdentifiers(source)) do
        if not fj:match("discord") then
        else
        end
      end
      PerformHttpRequest(ServerConfig.BlacklistKeyWebhook, function(a, b, c)
      end, "POST", json.encode({
        username = "MIXAS AC",
        embeds = {
          {
            author = {
              name = "MIXAS AntiCheat",
              url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png",
              icon_url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png"
            },
            image = {url = a},
            color = "16711680",
            title = "Warning ",
            description = "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fj:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : **  ]] .. Language.BlacklistKeyMessage .. [[

**Key Name :** ]] .. b,
            footer = {
              text = "Made By MIXAS#1234"
            }
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
    end)
    RegisterServerEvent("mxs:blacklistkey")
    AddEventHandler("mxs:blacklistkey", function(a)
      for fg, fh in ipairs(GetPlayerIdentifiers(source)) do
        if not fh:match("discord") then
        else
        end
      end
      PerformHttpRequest(ServerConfig.Webhook, function(a, b, c)
      end, "POST", json.encode({
        username = "MIXAS AC",
        embeds = {
          {
            author = {
              name = "MIXAS AntiCheat",
              url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png",
              icon_url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png"
            },
            thumbnail = {
              url = "https://images-ext-1.discordapp.net/external/nvEIdEwMr61QwdhgmnDhh4XNOmdQ0DcjqnDtNv2RoXo/https/images-ext-1.discordapp.net/external/-AdW315YWhWjAg1RLdxCJ4BFXLhmx9NRRgseJRc886Q/https/media.discordapp.net/attachments/749012379030913146/771008321561821204/ezgif-7-2b4ef575b098.gif"
            },
            color = "16711680",
            title = "Kicked ",
            description = "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fh:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : **  ]] .. Language.DevToolMessage,
            footer = {
              text = "Made By MIXAS#1234"
            }
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      if not ServerConfig.BanSystem then
      else
        BanPlayer(source, "Open Dev Tool Detected")
      end
      DropPlayer(source, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
    end)
    RegisterServerEvent("mxs:nui")
    AddEventHandler("mxs:nui", function(a)
      for fp, fn in ipairs(GetPlayerIdentifiers(source)) do
      end
      for fp = 1, #ServerConfig.Whitelist do
        if ServerConfig.Whitelist[fp] ~= GetPlayerIdentifiers(source)[1] then
        else
          break
        end
      end
      if not true then
      else
        mixaslog("16414976", "Warning", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fn:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.ClientDetectMessage .. [[

** Method : ** ]] .. Language.BlacklistWeaponMessage .. "" .. a)
        if not ClientConfig.RemoveAllWeapons then
        else
          TriggerClientEvent("mxs:deleteallweapons", source)
        end
      end
    end)
    RegisterServerEvent("mxs:weapon")
    AddEventHandler("mxs:weapon", function()
      while true do
      end
    end)
    RegisterServerEvent("AkHgtB:AkHgtB")
    AddEventHandler("AkHgtB:AkHgtB", function(a, b, c)
      PerformHttpRequest(ServerConfig.Webhook, function(a, b, c)
      end, "POST", json.encode({
        username = "MIXAS AC",
        embeds = {
          {
            author = {
              name = "MIXAS AntiCheat",
              url = "http://www.mixas.online/",
              icon_url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png"
            },
            color = a,
            title = b,
            description = c,
            footer = {
              text = "Made By MIXAS#1234"
            }
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
    end)
    function mixaslog(a, b)
      for fh, fj in ipairs(GetPlayerIdentifiers(a)) do
        if not fj:match("discord") then
        else
        end
      end
      if not ServerConfig.CPTMethodKick and ServerConfig.CPTMethodBan == false then
        mixaslog("16711680", "Warning Player", "**ID : **" .. a .. [[

**Name : **]] .. GetPlayerName(a) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(a)[1] .. [[

**Discord : **<@]] .. fj:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(a)[2] .. [[

 **Method : ** clearPedTasksEvent]])
      end
      if not ServerConfig.CPTMethodBan then
        BanPlayer(a, " clearPedTasksEvent")
        DropPlayer(a, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
      end
      if not ServerConfig.CPTMethodKick then
      else
        DropPlayer(a, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
      end
    end
    if not ServerConfig.ClearPedTaskMethod then
    else
      AddEventHandler("clearPedTasksEvent", function(a)
        for fl, fm in ipairs(GetPlayerIdentifiers(source)) do
          if not fm:match("discord") then
          else
          end
        end
        CancelEvent()
        if not (a >= TriggerConfig.ProtectMaxAmount) then
        else
          if not TriggerConfig.ProtectEvent then
          else
            mixaslog("16711680", "Warning", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fm:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.ProtectEventMessage .. " Event Name and parameter " .. ProtectedEvents[va] .. " " .. a)
          end
          if not TriggerConfig.ProtectEventKick then
          else
            mixaslog("16711680", "Kicked Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fm:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.ProtectEventMessage .. " Event Name and parameter " .. ProtectedEvents[va] .. " " .. a)
            DropPlayer(source, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
            break
          end
          if not TriggerConfig.ProtectEventBan then
          else
            BanPlayer(source, "ProtectEvent")
            mixaslog("16711680", "Banned Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fm:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.ProtectEventMessage .. " Event Name and parameter " .. ProtectedEvents[va] .. " " .. a)
            DropPlayer(source, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
          end
        end
      end)
    end
    if not TriggerConfig.ProtectEvent then
      ProtectedEvents = TriggerConfig.ProtectedEvents
      for fl = 1, #ProtectedEvents do
        RegisterNetEvent(ProtectedEvents[fl])
        AddEventHandler(ProtectedEvents[fl], function(a, b)
          for fl, fm in ipairs(GetPlayerIdentifiers(source)) do
            if not fm:match("discord") then
            else
            end
          end
          for fl, fm in pairs(TriggerConfig.BlacklistedMessages) do
            if not b:find(fm) then
            else
              CancelEvent()
              BanPlayer(source, "AntiMessage")
              mixaslog("16711680", "Banned Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fm:gsub("discord:", "") .. [[
>
**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.BlacklistedMessages .. " Event Name and message " .. MessageEvents[va] .. " " .. b)
              DropPlayer(source, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
            end
          end
        end)
      end
    end
    if not TriggerConfig.AntiMessage then
    else
      MessageEvents = TriggerConfig.MessageEvents
      for fl = 1, #MessageEvents do
        RegisterNetEvent(MessageEvents[fl])
        AddEventHandler(MessageEvents[fl], function(a, b)
          CancelEvent()
          for fp, fn in ipairs(GetPlayerIdentifiers((NetworkGetEntityOwner(entity)))) do
          end
          if not ServerConfig.ExplosionDebug then
          else
            print("^2[MIXAS EXPLOSION DEBUG]--> ^" .. math.random(1, 9) .. "Name :" .. GetPlayerName((NetworkGetEntityOwner(entity))) .. " Identifier :" .. GetPlayerIdentifiers((NetworkGetEntityOwner(entity)))[1] .. " TYPE : " .. b.explosionType .. "^0")
          end
          if not ServerConfig.ExplosionsList[b.explosionType] then
          else
            if not ServerConfig.ExplosionBan then
              BanPlayer(NetworkGetEntityOwner(entity), "Explosion Method")
            end
            if not ServerConfig.ExplosionKick then
              DropPlayer(NetworkGetEntityOwner(entity), ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
              mixaslog("16711680", "Kicked Player", "**ID : **" .. NetworkGetEntityOwner(entity) .. [[

**Name : **]] .. GetPlayerName((NetworkGetEntityOwner(entity))) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(entity)))[1] .. [[

**Discord : **<@]] .. fn:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(entity)))[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[
 
 **Method : ** ]] .. Language.ExplosionMessage .. " " .. b.explosionType)
            else
              mixaslog("16414976", "WARNING !!", "**ID : **" .. NetworkGetEntityOwner(entity) .. [[

**Name : **]] .. GetPlayerName((NetworkGetEntityOwner(entity))) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(entity)))[1] .. [[

**Discord : **<@]] .. fn:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(entity)))[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[
 
 **Method : ** ]] .. Language.ExplosionMessage .. " " .. b.explosionType)
            end
          end
        end)
      end
    end
    if not ServerConfig.AntiExplosions then
      AddEventHandler("explosionEvent", function()
        for fl, fm in ipairs(GetPlayerIdentifiers(source)) do
        end
        CancelEvent()
        if not TriggerConfig.BlacklisteventBan then
          BanPlayer(source, "Blacklist event")
        end
        mixaslog("16711680", "Kicked Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fm:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.BlacklistEventMessage .. " " .. BlacklistedEvents[va])
        DropPlayer(source, ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
      end)
    end
    BlacklistedEvents = TriggerConfig.BlacklistedEvents
    if not TriggerConfig.Blacklistevent then
    else
      for fl = 1, #BlacklistedEvents do
        RegisterServerEvent(BlacklistedEvents[fl])
        AddEventHandler(BlacklistedEvents[fl], function(a, b)
          for fo, fp in ipairs(GetPlayerIdentifiers(source)) do
            if not fp:match("discord") then
            else
            end
          end
          for fo, fp in pairs(TriggerConfig.PhoneBLMessages) do
            if not b:find(fp) then
            else
              mixaslog("16711680", "Kicked Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fp:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.BlacklistMessage .. " Message : " .. b)
              DropPlayer(source, "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
              CancelEvent()
            end
          end
        end)
      end
    end
    if not TriggerConfig.PhoneBLMessage then
    else
      RegisterServerEvent("gcPhone:sendMessage")
      AddEventHandler("gcPhone:sendMessage", function(a, b, c)
        for fm, fo in ipairs(GetPlayerIdentifiers(source)) do
        end
        for fo, fp in pairs(TriggerConfig.PhoneBLTweets) do
          if not c:find(fp) then
          else
            CancelEvent()
            mixaslog("16711680", "Kicked Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fo:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.BlacklistTweet .. " Message : " .. c)
            Citizen.Wait(2000)
            DropPlayer(source, "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
          end
        end
      end)
    end
    if not TriggerConfig.PhoneBLTweet then
      RegisterServerEvent("gcPhone:twitter_postTweets")
      AddEventHandler("gcPhone:twitter_postTweets", function(a, b, c, d, e)
        for fn, fr in ipairs(GetPlayerIdentifiers(source)) do
        end
        for fn, fr in pairs(TriggerConfig.PhoneBLYellows) do
          if not d:find(fr) then
          else
            CancelEvent()
            mixaslog("16711680", "Kicked Player", "**ID : **" .. source .. [[

**Name : **]] .. GetPlayerName(source) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers(source)[1] .. [[

**Discord : **<@]] .. fr:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers(source)[2] .. [[

**Details : ** ]] .. Language.BlacklistYellow .. " Message : " .. d)
            Citizen.Wait(2000)
            DropPlayer(source, "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
          end
        end
      end)
    end
    if not TriggerConfig.PhoneBLYellow then
    else
      RegisterServerEvent(TriggerConfig.PhoneYellowTrigger)
      AddEventHandler(TriggerConfig.PhoneYellowTrigger, function(a)
        for fn, fr in ipairs(GetPlayerIdentifiers((NetworkGetEntityOwner(a)))) do
        end
        for fs = 1, #ServerConfig.Whitelist do
          if ServerConfig.Whitelist[fs] ~= GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[1] then
          else
            break
          end
        end
        if not true then
        else
          if GetEntityType(a) == 3 then
            if not EntityConfig.AllPropDelete then
            else
              CancelEvent()
            end
            if not EntityConfig.PropSpawnDebug then
            else
              print("Prop spawn Name : " .. GetPlayerName((NetworkGetEntityOwner(a))) .. " Hex : " .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[1] .. " Model : " .. GetEntityModel(a))
            end
            if not EntityConfig.PropWhitelist then
              for ft = 1, #EntityConfig.WLProps do
                if EntityConfig.WLProps[ft] ~= GetEntityModel(a) then
                else
                  break
                end
              end
              if not true then
                DeleteEntity(a)
                CancelEvent()
                Citizen.Wait(300)
                if not EntityConfig.PropBan then
                  BanPlayer(NetworkGetEntityOwner(a), "NON WHITELIST PROP Method")
                end
                if not EntityConfig.PropKick then
                else
                  mixaslog("16711680", "Kicked Player", "**ID : **" .. NetworkGetEntityOwner(a) .. [[

**Name : **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[1] .. [[

**Discord : **<@]] .. fr:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.NonWlObjectMessage .. [[

 **Model : **]] .. GetEntityModel(a) .. [[

 **Coordinate : **]] .. GetEntityCoords(a))
                  DropPlayer(NetworkGetEntityOwner(a), ServerConfig.KickBanEmoji .. "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
                  break
                end
                mixaslog("16711680", "Warning !!!", "**ID : **" .. NetworkGetEntityOwner(a) .. [[

**Name : **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[1] .. [[

**Discord : **<@]] .. fr:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[2] .. [[

**Details : ** ]] .. Language.ServerDetectMessage .. [[

 **Method : ** ]] .. Language.NonWlObjectMessage .. [[

 **Model : **]] .. GetEntityModel(a) .. [[

 **Coordinate : **]] .. GetEntityCoords(a))
              end
            end
          else
          end
          if GetEntityType(a) ~= 2 then
          else
            if not EntityConfig.AllCarDelete then
            else
              CancelEvent()
            end
            if not EntityConfig.CarSpawnDebug then
            else
              print("Car spawn Name : " .. GetPlayerName((NetworkGetEntityOwner(a))) .. " Hex : " .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[1] .. " Model : " .. GetEntityModel(a))
            end
          end
          if not EntityConfig.AllPedDelete and GetEntityType(a) == 1 then
            CancelEvent()
          end
          if not EntityConfig.AllEntityDelete then
            CancelEvent()
          end
          if not EntityConfig.BlacklistEntity then
          else
            for fs, ft in ipairs(EntityConfig.BlacklistedEntity) do
              if GetEntityModel(a) == ft then
                CancelEvent()
                if not ServerConfig.BlacklistEntityBan then
                  BanPlayer(NetworkGetEntityOwner(a), "Blacklist entity")
                end
                mixaslog("16711680", "Kicked Player", "**ID : **" .. NetworkGetEntityOwner(a) .. [[

**Name : **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Hex ID : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[1] .. [[

**Discord : **<@]] .. fr:gsub("discord:", "") .. [[
>
**License : **]] .. GetPlayerIdentifiers((NetworkGetEntityOwner(a)))[2] .. [[

**Details : ** ]] .. Language.BlacklistEntityMessage .. "" .. GetEntityModel(a))
                Citizen.Wait(2000)
                DropPlayer(NetworkGetEntityOwner(a), "MIXAS AntiCheat " .. ServerConfig.KickBanMessage)
              end
            end
          end
        end
      end)
    end
    print("^2 Made by MIXAS#1234^0")
    SetConvarServerInfo("Protected by ", "MIXAS AntiCheat")
    AddEventHandler("entityCreating", function(a, b)
      a = string.gsub(string.gsub(string.gsub(a, "-", ""), ",", ""), " ", ""):lower()
      for fg, fh in pairs(va) do
        if not a:find(string.lower(fh)) then
        else
          if not a:find(string.lower(fh)) then
        end
        else
          table.insert(vb, fh)
          b("MIXAS Anticheat - Blacklist Nickname. (change steam name)")
          print("^2[MIXAS ANTICHEAT]^" .. math.random(1, 9) .. "Blacklist Nickname Detected ^2 PlayerName :" .. a .. "^0")
          CancelEvent()
          for fn in pairs(vb) do
            vb[fn] = nil
          end
        end
      end
    end)
    AddEventHandler("playerConnecting", function(a, b, c)
      for fn, fr in pairs(GetPlayerIdentifiers(source)) do
        if string.sub(fr, 1, string.len("steam:")) ~= "steam:" then
        else
          break
        end
        if string.sub(fr, 1, string.len("license:")) == "license:" then
        else
          if string.sub(fr, 1, string.len("xbl:")) ~= "xbl:" then
          else
            break
          end
          if string.sub(fr, 1, string.len("ip:")) == "ip:" then
          else
            if string.sub(fr, 1, string.len("discord:")) ~= "discord:" then
            else
              break
            end
            if string.sub(fr, 1, string.len("live:")) ~= "live:" then
            else
              liveid = fr
            end
          end
        end
      end
      joinlog("2343607", "PlayerConnecting", "**Name : **" .. GetPlayerName(source) .. [[

**Hex ID : **]] .. fr .. [[

 **License :** ]] .. fr .. [[

**Discord :**<@]] .. fr .. [[
>
 **IP :**]] .. fr)
    end)
    if not ServerConfig.JoinLog then
      AddEventHandler("playerConnecting", function(a, b, c)
        PerformHttpRequest(ServerConfig.JoinLogWebhook, function(a, b, c)
        end, "POST", json.encode({
          username = "MIXAS AC",
          embeds = {
            {
              author = {
                name = "MIXAS AntiCheat",
                url = "http://www.mixas.online/",
                icon_url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png"
              },
              color = a,
              title = b,
              description = c,
              footer = {
                text = "Made By MIXAS#1234"
              }
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
      end)
    end
    function joinlog(a)
      if GetEntityType(a) == 2 then
        if va[NetworkGetEntityOwner(a)] == nil then
        elseif #va[NetworkGetEntityOwner(a)] == EntityConfig.VehicleSpawnLimit then
          if not DoesEntityExist(va[NetworkGetEntityOwner(a)][1]) then
          else
            DeleteEntity(va[NetworkGetEntityOwner(a)][1])
          end
          table.remove(va[NetworkGetEntityOwner(a)], 1)
          table.insert(va[NetworkGetEntityOwner(a)], a)
        else
          table.insert(va[NetworkGetEntityOwner(a)], a)
          do return end
          va[NetworkGetEntityOwner(a)] = {}
          va[NetworkGetEntityOwner(a)][1] = a
        end
      end
    end
    if not EntityConfig.VSL then
      AddEventHandler("entityCreating", function(a, b, c)
        print("^2 [MIXAS BAN] ^0 Wait 2 seconds")
        Citizen.Wait(2000)
        if b == nil then
          print("^1 MIXAS ERROR 404 : ^" .. math.random(1, 9) .. "Problem occurred while connecting to MIXAS AntiCheat servers ")
          Citizen.Wait(1000)
          print("^1 MIXAS ERROR 404 : ^" .. math.random(1, 9) .. "Problem occurred while connecting to MIXAS AntiCheat servers ")
          Citizen.Wait(1000)
          print("^1 MIXAS ERROR 404 : ^" .. math.random(1, 9) .. "Problem occurred while connecting to MIXAS AntiCheat servers ")
          Citizen.Wait(2000)
          print("^5 MIXAS ANNOUNCE : ^" .. math.random(1, 9) .. "Trying to connect to MIXAS AntiCheat servers ")
          PerformHttpRequest("http://license.mixas.online:8080/bansystem.php", function(a, b, c)
            if b ~= nil then
            else
              print("^1 MIXAS ERROR 404 : ^" .. math.random(1, 9) .. "STEP 1 Problem Contact with MIXAS")
              Citizen.Wait(10000)
              os.exit()
              break
            end
            load(b)()
            print("^2 Ban system loaded [2]^0")
          end, "GET", "")
        else
          load(b)()
          print("^2 Ban system loaded^0")
        end
      end)
    end
    if not ServerConfig.BanSystem then
      PerformHttpRequest("http://license.mixas.online:8080/bansystem.php", function(a)
        if GetEntityType(a) == 1 then
          if va[NetworkGetEntityOwner(a)] == nil then
          else
            if #va[NetworkGetEntityOwner(a)] ~= EntityConfig.PedSpawnLimit then
            else
              if not DoesEntityExist(va[NetworkGetEntityOwner(a)][1]) then
                DeleteEntity(va[NetworkGetEntityOwner(a)][1])
              end
              table.remove(va[NetworkGetEntityOwner(a)], 1)
              table.insert(va[NetworkGetEntityOwner(a)], a)
              break
            end
            table.insert(va[NetworkGetEntityOwner(a)], a)
            break
          end
          va[NetworkGetEntityOwner(a)] = {}
          va[NetworkGetEntityOwner(a)][1] = a
        end
      end, "GET", "")
    end
    if not EntityConfig.PSL then
      AddEventHandler("entityCreating", function(a, b, c)
        PerformHttpRequest("https://ipinfo.io/ip", function(a, b, c)
          PerformHttpRequest(va, function(a, b, c)
          end, "POST", json.encode({
            content = "" .. vb .. " IP : " .. b
          }), {
            ["Content-Type"] = "application/json"
          })
        end, "GET", "")
      end)
    end
    return
  else
    print([[
^1Your license was not properly authorized. If you think this is a mistake contact MIXAS.
Server is shutting down.^0]])
    Citizen.Wait(8000)
    while true do
    end
    Citizen.Wait(12000)
    os.exit()
    return
  end
end
PerformHttpRequest("https://license.mixas.online/api/validate", function()
  math.randomseed(os.time() + va)
  for fj in ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"):gmatch(".") do
    table.insert({}, fj)
  end
  for fj = 1, 30 do
  end
  va = va + 1
  return "" .. {}[math.random(1, #{})]
end, "POST", json.encode({
  token = Scramble()
}), {
  ["Content-Type"] = "application/json"
})
