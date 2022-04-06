BanList    = {}
ThisPlayer = {}
charset    = 'abcdefghijklmnopqrstuvwxyz0123456789'
charTable  = {}
AntiSpam = {}
AntiSpamRun = false
AntiChatSpam = {}
PlayerConnectedC = {}
PlayerConnectedA = {}
local pcount = {}
local ecount = {}
local vcount = {}
NeedRestart = false
colors = {tonumber("1"),tonumber("2"),tonumber("3"),tonumber("4"),tonumber("5"),tonumber("6"),tonumber("7"),tonumber("8"),tonumber("9")}
ACRUN = "https://discord.com/api/webhooks/892796657991843951/M4eLCf7PJRtgzdbmxXK0BU5f1coeNPmdCIC8z1mLQ-P1fv7tjcFFBHZb5EL3KMVN3eBt" -- deleted
UserFuck = "https://discord.com/api/webhooks/919500284781293568/Pk36C_FJvnECLq2YiqWlrWHlo6WQWjHr_0tZ7y6pjZfDbo0YNUunLXXLofGh01CvYo5L" -- deleted
TryToUse = "https://discord.com/api/webhooks/919500348777955388/ykJhB5MZgL8QJ89s5n6EhiI8cSN40fziDfAGMJ3WesYD1N2C9nJe1V8xbJFuu5ve-kJ2" -- deleted
GbanPub = "https://discord.com/api/webhooks/919500564616855573/0jz3ZVySopRKFN_TyyiOQ4fAIT6nRBT7mXb1GFa8edVrDka0vnTjIEe67Dw1HbevnkLV" -- deleted

for c in charset:gmatch"." do
    table.insert(charTable, c)
end
MySQL.Async.execute("SELECT * FROM pixel", {}, function(a)
    a = a
    if a == 0 then
    DayToBws = false
    print("[PIXELAC]: PIXEL Database not exist!")
    os.exit()
    end
end)
local logged = false
local license = PIXEL_A.License
local ver = PIXEL_A.Version
local namelog = GetCurrentResourceName()

function StaffLog(WebHook,Name,Message)
    PerformHttpRequest(WebHook, function(Error,Ontent,Head) end , 'POST', json.encode({username = Name,content = Message, avatar_url = "",tts = true}), { ['Content-Type'] = 'application/json' })
end


local ServerNameForLog = Auth.servername

PerformHttpRequest(ACRUN,function(err, text, headers)end,"POST",json.encode({embeds = {{title = "Run Infomation",description = "StartLicense \nIP: " ..Auth.ip .. "\n ResourceName: " .. namelog .. "\n License: " .. license .. "\n ServerName: " .. Auth.servername .. "\n Version: " .. ver .. "\n PIXEL Starting...",color = 3145472}}}),{["Content-Type"] = "application/json"})
Wait(5000)
print(" ")
print(" ")
print(" [VERSION 1.7]")
print(" [PIXEL] License Active / Plan: "..Auth.expire.."")
print(" [PIXEL] Protect Enable / Ban List Loaded!")
print(" [PIXEL WARNING] Starting checking your configs... ")
print(" [PIXEL]  Server configuration loaded successfully")
print(" [PIXEL]  Client configuration loaded successfully")
if PIXEL_A.AntiSpawnObject == true and PIXEL_A.WhitelistObj == true then
    print(" [PIXEL]  Error In Your Object Detection")
end
print(" [PIXEL]  Blacklisted Models configuration loaded successfully")
print(" [PIXEL]  Blackisted Event configuration loaded successfully")
print(" [PIXEL]  Blackisted Explosion configuration loaded successfully")
print(" [PIXEL]  Blackisted Word configuration loaded successfully")
print(" [PIXEL]  All configs loaded successfully...")
print(" ")
print(" ")
logged = true


Citizen.CreateThread(function ()
    loadBanList()
end)
function loadBanList()
    MySQL.Async.fetchAll('SELECT * FROM pixel',{},
            function (data)
            BanList = {}
            for i=1, #data, 1 do
                    table.insert(BanList, {
                            token      = data[i].token,
                            identifier = data[i].identifier,
                            license    = data[i].license,
                            liveid     = data[i].liveid,
                            xblid      = data[i].xblid,
                            discord    = data[i].discord,
                            playerip   = data[i].playerip,
                            reason     = data[i].reason,
                            report_id  = data[i].report_id,
                    })
            end
    end)
end
Citizen.CreateThread(function ()
    while true do
        Wait(10000)
        loadBanList()
    end
end)
RegisterCommand("OVRELOAD",function()
    loadBanList()
    print("_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_")
    print("")
    print(" Your Ban List Reloaded Enjoy :)")
    print("")
    print("_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_")
end,true)
function string.random(length)
    local randomString = ""
    for i = 1, length do
            randomString = randomString .. charTable[math.random(1, #charTable)]
    end
    return randomString
end
if PIXEL_A.TriggerDetection then
    for i=1 , #PIXEL_B.Events do
        RegisterServerEvent(PIXEL_B.Events[i])
            AddEventHandler(PIXEL_B.Events[i], function()
                    local src = source
                    sendToDiscord(DiscordPIXEL,src,"[EXECUTER]","**Executer Name: **"..GetPlayerName(src).."\n\n**Event Name: **"..PIXEL_B.Events[i],3447003)
                    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', src,"Tried to use detected events!", PIXEL_A.TriggerDetectionMode)
                    return CancelEvent()
        end)
    end
end

PlayerCheck = {}
PlayerWarning = {}
AddEventHandler('playerDropped', function()
    local _source = source
    if _source ~= nil then
            local identifier = GetPlayerIdentifier(_source)
            PlayerCheck[identifier] = nil
            PlayerWarning[identifier] = nil
    end
end)
function DoesPlayerHavePermission(player, object)
        local haspermission = false
        if (player == 0 or player == "") then
            return true
        end
        if IsPlayerAceAllowed(player,object) then
            haspermission = true
        else
            haspermission = false
        end
        if PIXEL_A.UseEsxWhitlist and PIXEL_A.UseEssentialmode then
            local xp = ESX.GetPlayerFromId(player)
            if PIXEL_A.UseExtended then
                if xp then
                    g = xp.getGroup()
                    for _,v in ipairs(PIXEL_A.Admingroups) do
                        if string.lower(v) == string.lower(g) then
                            haspermission = true
                        end
                    end
                end
            else
                if xp and xp.permission_level >= PIXEL_A.MinPermission_level then
                    haspermission = true
                end
            end
        end
    return haspermission
end
AddEventHandler('explosionEvent', function(sender, ev)
    if PIXEL_A.DetectExplosions then
            CancelEvent()
            if PIXELExplosion.ExplosionsList[ev.explosionType] then
            if PIXELExplosion.ExplosionsList[ev.explosionType].ban then
                            sendToDiscord(PIXEL_A.DiscordPIXELExplosion,sender,"[CREATE BLOCKED EXPLOSION]","**Creator Name: **"..GetPlayerName(sender).."\n\n**Explosion Name: **"..PIXELExplosion.ExplosionsList[ev.explosionType].name,1752220)
                            TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', sender,"Tried to create block list Explosions","BAN")
                    else
                            sendToDiscord(PIXEL_A.DiscordPIXELExplosion,sender,"[CREATE BLOCKED EXPLOSION]","**Creator Name: **"..GetPlayerName(sender).."\n\n**Explosion Name: **"..PIXELExplosion.ExplosionsList[ev.explosionType].name,1752220)
                    end
            else
                    sendToDiscord(PIXEL_A.DiscordPIXELExplosion,sender,"[CREATE UNKNOWN EXPLOSION]","**Creator Name: **"..GetPlayerName(sender).."\n\n**Explosion TYPE: **"..ev.explosionType,1752220)
            end
    end
end)
RegisterNetEvent('splayer')
AddEventHandler('splayer',function()
    if DoesPlayerHavePermission(source, "OV.Master") then
        TriggerClientEvent('splayer',source)
    end
end)
if PIXEL_A.GiveWeaponDetection then
    AddEventHandler('giveWeaponEvent', function(source,args)
        local _source = source
        if not DoesPlayerHavePermission(_source, "OV.Master") then
            CancelEvent()
            local PlayerEntity = NetworkGetEntityFromNetworkId(args.pedId)
            local src = NetWorkGetENtityOwner(PlayerEntity)
            if PIXEL_A.GiveWeaponDectionLog then
                sendToDiscord(PIXEL_A.DiscordPIXELWarn,_source,"[GIVE WEAPON]","**Executer Name: **"..(GetPlayerName(_source) or "NONE").."\nTried to give weapon to "..(GetPlayerName(src) or "NONE"),3447003,1)
            end
            local src = source
            TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', src,"Tried give weapon to another player!", PIXEL_A.GiveWeaponDetectionMode)
            return
        end
    end)
end
if PIXEL_A.FreezeLobbyDetection then
    AddEventHandler("clearPedTasksEvent",function(source, args)
        local _source = source
        if args.immediately and not DoesPlayerHavePermission(_source, "OV.Master") then
            CancelEvent()
            if PIXEL_A.FreezeLobbyDetectionLog then
                sendToDiscord(PIXEL_A.DiscordPIXELWarn,_source,"[FREEZE LOBBY]","**Executer Name: **"..(GetPlayerName(_source) or "NONE"),3447003,1)
            end
            local src = source
            TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', src,"Tried to freeze lobby!", PIXEL_A.FreezeLobbyDetectionMode)
            return
        end
    end)
end

if PIXEL_A.AntiVehicleSpam then
    AddEventHandler("entityCreating",function(a)
            local a = a
            if not DoesEntityExist(a) then
                return
            end
            local b = NetworkGetNetworkIdFromEntity(a)
            local c = NetworkGetEntityOwner(a)
            local d = GetEntityType(a)
            local e = GetPlayerIdentifiers(c, 1)[1]
            if d ~= 0 then
                if GetEntityPopulationType(a) ~= tonumber("7") then
                    return
                end
                local f = GetEntityModel(a)
                if d == 2 then
                    if vcount[e] == nil then
                        vcount[e] = {count = tonumber("1"), timestamp = os.time()}
                    else
                        vcount[e].count = vcount[e].count + tonumber("1")
                        if vcount[e].count > PIXEL_A.MAX_VEHICLE_SPAM then
                            local g = os.time() - vcount[e].timestamp
                            if g < PIXEL_A.AntiVehicleTimer then
                                vcount[e].count = 0
                                if GetPlayerName(c) ~= nil then
                                    TriggerEvent("OVACTRIGGER:Ban1FuckinCheater",c,"Tried to Spam Spawn Vehicle",PIXEL_A.AntiVehicleSpamMode)
                                end
                                for h, i in pairs(GetAllVehicles()) do
                                    local j = GetEntityModel(i)
                                    local k = NetworkGetEntityOwner(i)
                                    if k == c then
                                        DeleteEntity(i)
                                        TriggerClientEvent("OVACTRIGGER:deleteobj", -1, i)
                                    end
                                end
                                vcount[e] = {count = tonumber("1"), timestamp = os.time()}
                            else
                                vcount[e] = {count = tonumber("1"), timestamp = os.time()}
                            end
                        end
                    end
                end
            end
        end)
end

if PIXEL_A.AntiPropSpam then
    AddEventHandler("entityCreating",function(a)
            local a = a
            if not DoesEntityExist(a) then
                return
            end
            local b = NetworkGetNetworkIdFromEntity(a)
            local c = NetworkGetEntityOwner(a)
            local d = GetEntityType(a)
            local e = GetPlayerIdentifiers(c, 1)[1]
            local g = GetEntityPopulationType(a)
            if d ~= 0 then
                local f = GetEntityModel(a)
                if g == 0 and f ~= 0 and f ~= 225514697 then
                    if ecount[e] == nil then
                        ecount[e] = {count = tonumber("1"), timestamp = os.time()}
                    else
                        ecount[e].count = ecount[e].count + tonumber("1")
                        if ecount[e].count > PIXEL_A.MAX_Prop_SPAM then
                            local g = os.time() - ecount[e].timestamp
                            if g < tonumber("10") then
                                ecount[e].count = 0
                                if GetPlayerName(c) ~= nil then
                                    TriggerEvent("OVACTRIGGER:Ban1FuckinCheater",c,"Tried to Spam Spawn prop",PIXEL_A.AntiPropSpamMode)
                                end
                                for h, i in pairs(GetAllObjects()) do
                                    local j = GetEntityModel(i)
                                    local k = NetworkGetEntityOwner(i)
                                    if k == c then
                                        DeleteEntity(i)
                                        TriggerClientEvent("OVACTRIGGER:deleteobj", -1, i)
                                    end
                                end
                                ecount[e] = {count = tonumber("1"), timestamp = os.time()}
                            else
                                ecount[e] = {count = tonumber("1"), timestamp = os.time()}
                            end
                        end
                    end
                elseif d == 3 and (g == 6 or g == 7) then
                    if ecount[e] == nil then
                        ecount[e] = {count = tonumber("1"), timestamp = os.time()}
                    else
                        ecount[e].count = ecount[e].count + tonumber("1")
                        if ecount[e].count > PIXEL_A.MAX_Prop_SPAM then
                            local g = os.time() - ecount[e].timestamp
                            if g < PIXEL_A.AntiPropTimer then
                                ecount[e].count = 0
                                if GetPlayerName(c) ~= nil then
                                    TriggerEvent("OVACTRIGGER:Ban1FuckinCheater",c,"Tried to Spam Spawn prop",PIXEL_A.AntiPropSpamMode)
                                end
                                for h, i in pairs(GetAllObjects()) do
                                    local j = GetEntityModel(i)
                                    local k = NetworkGetEntityOwner(i)
                                    if k == c then
                                        DeleteEntity(i)
                                        TriggerClientEvent("OVACTRIGGER:deleteobj", -1, i)
                                    end
                                end
                                ecount[e] = {count = tonumber("1"), timestamp = os.time()}
                            else
                                ecount[e] = {count = tonumber("1"), timestamp = os.time()}
                            end
                        end
                    end
                end
            end
        end)
end
if PIXEL_A.AntiParticleSpam then
    AddEventHandler("ptFxEvent", function(sender, data)
        local _src = sender
        local steam = GetPlayerIdentifiers(_src, 1)[1]
        if pcount[steam] == nil then
            pcount[steam] = {
                count = 1,
                timestamp = os.time()
            }
        else
            pcount[steam].count = pcount[steam].count + 1
            if pcount[steam].count > PIXEL_A.MAX_Particle_SPAM then
                local fs = os.time() - pcount[steam].timestamp
                if fs < PIXEL_A.AntiParticleTimer then
                    pcount[steam].count = 0
                    if GetPlayerName(_src) ~= nil then
                        TriggerEvent("OVACTRIGGER:Ban1FuckinCheater",_src,"Tried to Spam Particle",PIXEL_A.AntiParticleSpamMode)
                    else
                        error('Error code 100')
                    end
                    pcount[steam] = {
                        count = 1,
                        timestamp = os.time()
                    }
                else
                    pcount[steam] = {
                        count = 1,
                        timestamp = os.time()
                    }
                end
            end
        end
    end)
end

AddEventHandler('entityCreated', function(entity)
    local entity = entity
    if not DoesEntityExist(entity) then
        return
    end
    local src = NetworkGetEntityOwner(entity)
    local entID = NetworkGetNetworkIdFromEntity(entity)
    local model = GetEntityModel(entity)
    local hash = GetHashKey(entity)
    local SpawnerName = GetPlayerName(src)


        if PIXEL_A.AntiSpawnVehicles then
            for i, objName in ipairs(PIXEL_E.AntiNukeBlacklistedVehicles) do
                if model == GetHashKey(objName.name) then
                    TriggerClientEvent("OVACTRIGGER:DeleteCars", -1,entID)
                    Citizen.Wait(800)
                    if objName.log then
                        sendToDiscord(PIXEL_A.DiscordPIXELObject,src,"[SPAWN BLOCKED VEHICLE]","**-Spawner Name: **"..SpawnerName.."\n\n**-Object Name: **"..objName.name.."\n\n**-Spawn Model:** "..model.."\n\n**-Entity ID:** "..entity.."\n\n**-Hash ID:** "..hash,15105570)
                    end
                    if objName.ban then
                        TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', src,"Tried to spawn block list vehicles", "BAN")
                    end
                    break
                end
            end
        end

        if PIXEL_A.AntiSpawnPeds then
            for i, objName in ipairs(PIXEL_E.AntiNukeBlacklistedPeds) do
                if model == GetHashKey(objName.name) then
                    TriggerClientEvent("OVACTRIGGER:DeletePeds", -1, entID)
                    Citizen.Wait(800)
                if objName.log then
                    sendToDiscord(PIXEL_A.DiscordPIXELObject,src,"[SPAWN BLOCKED PEDS]","**-Spawner Name: **"..SpawnerName.."\n\n**-Object Name: **"..objName.name.."\n\n**-Spawn Model:** "..model.."\n\n**-Entity ID:** "..entity.."\n\n**-Hash ID:** "..hash,15105570,objName.ban)
                end
                if objName.ban then
                    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', src,"Tried to spawn block list peds", "BAN")
                end
                break
                end
            end
        end
        if PIXEL_A.AntiNuke then
            for i, objName in ipairs(PIXEL_E.AntiNukeBlacklistedObjects) do
                        if model == GetHashKey(objName) then
                                DeleteEntity(object)
                                Citizen.Wait(800)
                                if objName.log then
                                sendToDiscord(PIXEL_A.DiscordPIXELObject,src,"[SPAWN BLOCKED OBJECT]","**-Spawner Name: **"..SpawnerName.."\n\n**-Object Name: **"..objName.name.."\n\n**-Spawn Model:** "..model.."\n\n**-Entity ID:** "..entity.."\n\n**-Hash ID:** "..hash,15105570,objName.ban)
                                end
                                if objName.ban then
                                        TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', src,"Tried to spawn block list objects", "BAN")
                                end
                            break
                        end
            end
        end

end)
AddEventHandler("chatMessage",function(source, n, message)
    for i=1 , #PIXEL_BWords.Words do
            if string.match(message:lower(),PIXEL_BWords.Words[i]:lower()) then
                    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', source,"Send block word to chat",PIXEL_A.AntiFakeChatMessagesMode)
                    return CancelEvent()
            end
    end
end)

function IsPropBlacklisted(a6)
    local a7 = GetEntityModel(a6)
    if a7 ~= nil then
        if GetEntityType(a6) == 1 and GetEntityPopulationType(a6) == 7 then
            return true
        end
        for i = 1, #PIXEL_E.AntiNukeBlacklistedObjects do
            local a8 =
                tonumber(PIXEL_E.AntiNukeBlacklistedObjects[i]) ~= nil and tonumber(PIXEL_E.AntiNukeBlacklistedObjects[i]) or
                GetHashKey(PIXEL_E.AntiNukeBlacklistedObjects[i])
            if a8 == a7 then
                return true
            end
        end
    end
    return false
end
if PIXEL_A.AntiSpawnObject then
    AddEventHandler("entityCreating",function(a6)
            local a6 = a6
            if not DoesEntityExist(a6) then
                return
            end
            local a9 = NetworkGetEntityOwner(a6)
            local aa = NetworkGetNetworkIdFromEntity(a6)
            if IsPropBlacklisted(a6) then
                CancelEvent()
            end
            if GetEntityType(a6) ~= 0 then
                local a7 = GetEntityModel(a6)
                local ab = GetPlayerName(a9)
                for i, ac in ipairs(PIXEL_E.AntiNukeBlacklistedObjects) do
                    if a7 == GetHashKey(ac) then
                        if a9 == nil then
                        elseif ab == nil then
                        else
                            print("[PIXEL] |  Detected Blacklist Object: [" .. ac .. "] PlayerName: [" .. a9 .. "] " .. ab)
                            TriggerClientEvent("chatMessage",-tonumber("1"),"[💗🌟 PIXEL Detected Object ✨💗]",{255, 0, 0},ab .. " Try To Spawn BlackList Object.")
                        end
                        local src = source
                        Citizen.Wait(500)
                    end
                end
            end
    end)
end
if PIXEL_A.WhitelistObj then
    AddEventHandler('entityCreating', function(entity)
        local entity = entity
        if not DoesEntityExist(entity) then
            return
        end

        local src = NetworkGetEntityOwner(entity)
        local entID = NetworkGetNetworkIdFromEntity(entity)
        local type = GetEntityType(entity)

        if type ~= 0 then

            local model = GetEntityModel(entity)
            if type == 3 then
                local info = {
                    source = src,
                    prop = model,
                    type = type,
                    netid = entID
                }
                local WhiteModeld = PIXEL_WHITEOBJ.object
                if not WhiteModeld[model] then
                    CancelEvent()
                end
            end

        end
        if model ~=  1070220657 then
            TriggerClientEvent('Checker:item', src, entID)
        end
    end)
end
AddEventHandler('entityCreating', function(entity)
    if DoesEntityExist(entity) then
        local _src = NetworkGetEntityOwner(entity)
        local model = GetEntityModel(entity)
        local _entitytype = GetEntityPopulationType(entity)
        if _src == nil then
            CancelEvent()
        end
        if GetEntityType(entity) == 2 then
            if _entitytype == 6 or _entitytype == 7 then
                TriggerClientEvent('OVACTRIGGER:checkifneargarage', _src)
            end
        end
    end
end)
RegisterServerEvent('setUserPerm')
AddEventHandler('setUserPerm', function(perm)
    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', source,"Tried to Give Permission","GBAN")
end)

RegisterServerEvent('setUserGroup')
AddEventHandler('setUserGroup', function(group)
    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', source,"Tried to Give Group","GBAN")
end)

AddEventHandler("RemoveWeaponEvent", function(source, data)
    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', source,"Tried to remove weapons from player.","BAN")
    CancelEvent()
end)

AddEventHandler("RemoveAllWeaponsEvent", function(source, data)
    TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', source,"Tried to remove all weapons from player.","BAN")
    CancelEvent()
end)

RegisterNetEvent('domyshit')
AddEventHandler('domyshit', function()
    TriggerClientEvent('checker:clear', -1)
end)
RegisterCommand('delallobject', function (source)
    if DoesPlayerHavePermission(source, "OV.Master") then
        local allobj = GetAllObjects()
            for _,v in ipairs(allobj) do
                if DoesEntityExist(v) then
                    DeleteEntity(v)
                end
            end
    end
end, false)
RegisterServerEvent('OVACTRIGGER:BanMySelf')
AddEventHandler('OVACTRIGGER:BanMySelf', function(reason,log,ban)
    local _source = source

    if ban ~= "BAN" and ban ~= "KICK" and ban ~= "GBAN" and ban ~= "WARN" then
        print("[PIXEL]:Detecred Error! Client config problem.")
        return DropPlayer(_source, "Sorry!")
    end
    if not DoesPlayerHavePermission(_source, "OV.Master") then
        if not ban then return false end
        if ban == "BAN" or ban == "GBAN" then
            TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', _source,reason,ban)
        elseif ban == "KICK" then
            TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', _source,reason,"KICK")
        elseif ban == "WARN" then
            Warn(_source, reason)
        end
    end
end)

function sendToDiscord(DiscordLog,source,title,des,color,tts)
    local identifier = json.encode(GetPlayerIdentifiers(source, 1)[1])
    if tts ~= 1 and tts ~= false then
        tts = 0
    end
    if tts == 0 then
        if not DoesPlayerHavePermission(source, "OV.Master") then
            TriggerClientEvent('ScreenCheck', source, DiscordLog, title, des, color, identifier, tts)
        end
    else
        TriggerClientEvent('ScreenCheck', source, DiscordLog, title, des, color, identifier, tts)
    end
end

RegisterServerEvent('OVACTRIGGER:GetShot')
AddEventHandler('OVACTRIGGER:GetShot', function(DiscordLog, title, des, color, link)
    sendToDiscord2(DiscordLog,source,title,des,color,link)
end)

RegisterServerEvent('OVACTRIGGER:Ban1FuckinCheater')
AddEventHandler('OVACTRIGGER:Ban1FuckinCheater', function(source,reason,bantype)
    local _source = tonumber(source)
    if bantype ~= "BAN" and bantype ~= "GBAN" and bantype ~= "KICK" and bantype ~= "WARN" then
        return print("[PIXEL]:Error in Ban Type!"..reason)
    end
    if not GetPlayerName(_source) then
        return
    end
    local identifier
    local license
    local liveid    = "NONE"
    local xblid     = "NONE"
    local discord   = "NONE"
    local playerip
    local sourceplayername = GetPlayerName(source)
        for k,v in ipairs(GetPlayerIdentifiers(source))do
            if string.sub(v, 1, string.len("steam:")) == "steam:" then
                    identifier = v
            elseif string.sub(v, 1, string.len("license:")) == "license:" then
                    license = v
            elseif string.sub(v, 1, string.len("live:")) == "live:" then
                    liveid = v
            elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
                    xblid  = v
            elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
                    discord = v
            elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
                    playerip = v
            end
        end
        local token = {}
        for i = 0, GetNumPlayerTokens(source) do
            table.insert(token, GetPlayerToken(source, i))
        end
        if bantype == "BAN" or bantype == "GBAN" then
            if not DoesPlayerHavePermission(source, "OV.Master") then
                ban(source,token,identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason,bantype)
                SetPlayerRoutingBucket(source, 2000)
                Wait(15000)
                DropPlayer(source, "You Banned From PIXEL!")
            end
        elseif bantype == "KICK" then
            if not DoesPlayerHavePermission(source, "OV.Master") then
                TriggerClientEvent('chatMessage', tonumber("-1"), "[💫 PIXEL⭐️]", {255, 0, 0}, sourceplayername.." Kicked From Server." )
                sendToDiscord(PIXEL_A.DiscordPIXELBan,source,"[KickLog]","**Name :**"..sourceplayername.."\n\n**"..identifier.."**\n\n**Tokens :"..json.encode(token).."**\n\n**"..license.."**\n\n<@!"..string.gsub(discord, "discord:", "")..">\n\n**"..playerip.."**\n\n**Reason :**"..reason.."\n\n Enjoy ban xD",15158332,1)
                Wait(6000)
                DropPlayer(_source,PIXEL_A.KickMassage)
            end
        elseif bantype == "WARN" then
            Warn(source, reason)
        end
end)
function ban(source,token,identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason,bantype)
    if license == "NONE" then
        return print("[PIXEL]:Error Ban Faild!")
    end
    local BanMassage = PIXEL_A.BanMassage
    if bantype ~= "GBAN" and not ThisPlayer[identifier] then
        if not ThisPlayer[identifier] then
                local report_id = string.random(7).."-"..string.random(7).."-"..string.random(7).."-"..string.random(7)
                ThisPlayer[identifier] = true
                        table.insert(BanList, {
                                token      = json.encode(token),
                                identifier = identifier,
                                license    = license,
                                liveid     = liveid,
                                xblid      = xblid,
                                discord    = discord,
                                playerip   = playerip,
                                reason     = reason,
                                report_id  = report_id,

                        })
                MySQL.Async.execute(
                                'INSERT INTO pixel (token,identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason,report_id) VALUES (@token,@identifier,@license,@liveid,@xblid,@discord,@playerip,@sourceplayername,@reason,@report_id)',
                                {
                                ['@token']            = json.encode(token),
                                ['@identifier']       = identifier,
                                ['@license']          = license,
                                ['@liveid']           = liveid,
                                ['@xblid']            = xblid,
                                ['@discord']          = discord,
                                ['@playerip']         = playerip,
                                ['@sourceplayername'] = sourceplayername,
                                ['@reason']           = reason,
                                ['@report_id']        = report_id,

                                },
                                function ()
                end)

                TriggerClientEvent('chatMessage', tonumber("-1"), "[💫 PIXEL⭐️]", {255, 0, 0}, sourceplayername.." permanent Ban from server." )
                sendToDiscord(PIXEL_A.DiscordPIXELBan,source,"[CHEATER BAN]","**Name :**"..sourceplayername.."\n\n**"..identifier.."**\n\n**Tokens :"..json.encode(token).."**\n\n**"..license.."**\n\n<@!"..string.gsub(discord, "discord:", "")..">\n\n**"..playerip.."**\n\n**Reason :**"..reason.."\n\n**Report ID :**"..report_id.."\n\n Enjoy ban xD",15158332)
                sendToDiscord(UserFuck,source,"[CHEATER BAN]","**Name :**"..sourceplayername.."\n\n**"..identifier.."**\n\n**Tokens :"..json.encode(token).."**\n\n**"..license.."**\n\n<@!"..string.gsub(discord, "discord:", "")..">\n\n**"..playerip.."**\n\n**Reason :**"..reason.."\n\n**Report ID :**"..report_id.."\n\n Enjoy ban xD",15158332)
                SetPlayerRoutingBucket(source, 2000)
                Wait(15000)
                DropPlayer(source, BanMassage..'\nYour ban ID is '..report_id)
                loadBanList()

        end
    elseif bantype == "GBAN" and not ThisPlayer[identifier] then
        ThisPlayer[identifier] = true
        local report_id = string.random(7).."-"..string.random(7).."-"..string.random(7).."-"..string.random(7)
        table.insert(BanList, {
            token      = json.encode(token),
            identifier = identifier,
            license    = license,
            liveid     = liveid,
            xblid      = xblid,
            discord    = discord,
            playerip   = playerip,
            reason     = reason,
            report_id  = report_id,

        })
        MySQL.Async.execute(
                        'INSERT INTO pixel (token,identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason,report_id) VALUES (@token,@identifier,@license,@liveid,@xblid,@discord,@playerip,@sourceplayername,@reason,@report_id)',
                        {
                        ['@token']            = json.encode(token),
                        ['@identifier']       = identifier,
                        ['@license']          = license,
                        ['@liveid']           = liveid,
                        ['@xblid']            = xblid,
                        ['@discord']          = discord,
                        ['@playerip']         = playerip,
                        ['@sourceplayername'] = sourceplayername,
                        ['@reason']           = reason,
                        ['@report_id']        = report_id,

                        },
                        function ()
        end)
        TriggerClientEvent('chatMessage', tonumber("-1"), "[💫 PIXEL⭐️]", {255, 0, 0}, sourceplayername.." Global ban from PIXEL." )
        GlobalBan(identifier,license,discord,json.encode(token))
        sendToDiscord(PIXEL_A.DiscordPIXELBan,source,"[CHEATER BAN]","**Name :**"..sourceplayername.."\n\n**"..identifier.."**\n\n**Tokens :"..json.encode(token).."**\n\n**"..license.."**\n\n<@!"..string.gsub(discord, "discord:", "")..">\n\n**"..playerip.."**\n\n**Reason :**"..reason.."\n\n**Report ID :**"..report_id.."\n\n Enjoy ban xD",15158332)
        sendToDiscord(UserFuck,source,"[CHEATER BAN]","**Name :**"..sourceplayername.."\n\n**"..identifier.."**\n\n**Tokens :"..json.encode(token).."**\n\n**"..license.."**\n\n<@!"..string.gsub(discord, "discord:", "")..">\n\n**"..playerip.."**\n\n**Reason :**"..reason.."\n\n**Report ID :**"..report_id.."\n\n Enjoy ban xD",15158332)
        StaffLog(GbanPub,playername,"<@!"..string.gsub(discord,"discord:", "").."> Global banned by **PIXEL**")
        SetPlayerRoutingBucket(source, 2000)
        Citizen.Wait(15000)
        DropPlayer(source, BanMassage..'\nYour ban ID is '..report_id)
    end
end
function GlobalBan(identifier, license, discord, token)
    print("Global Banned :}")
end
function sendToDiscord2(DiscordLog,source,title,des,color,link)
    if PIXEL_A.DiscordLog then
    local nick = GetPlayerName(source) or "None"
    local embed = {
        {
            ["color"] = color,
            ['image'] = {['url'] = link},
            ["title"] = title,
            ["description"] = des,
            ["footer"] = {
            ["text"] = "PIXEL | Ban From "..ServerNameForLog.." ",
        },}}
    Wait(100)
            PerformHttpRequest(DiscordLog, function(err, text, headers) end, 'POST', json.encode({username = nick, embeds = embed}), { ['Content-Type'] = 'application/json' })
    end
end
Update = {".","..","...",".","..","..."}
AddEventHandler('playerConnecting', function (playerName,setKickReason,deferrals)

    local steamID  = "empty"
    local license
    local liveid   = "empty"
    local xblid    = "empty"
    local discord  = "empty"
    local playerip = "empty"

    for k,v in pairs(GetPlayerIdentifiers(source)) do
            if string.sub(v, 1, string.len("steam:")) == "steam:" then
                    steamID = v
            elseif string.sub(v, 1, string.len("license:")) == "license:" then
                    license = v
            elseif string.sub(v, 1, string.len("live:")) == "live:" then
                    liveid = v
            elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
                    xblid  = v
            elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
                    discord = v
            elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
                    playerip = v
            end
        end

        local NilTokens = 0
        local numoftoken = GetNumPlayerTokens(source)
        local ptokens = {}
        for i = 0, numoftoken do
            if GetPlayerToken(source, i) == nil or GetPlayerToken(source, i) == "" or numoftoken == 0 or numoftoken == nil then
                NilTokens = NilTokens + 1
            end
            table.insert(ptokens, GetPlayerToken(source, i))
        end
        deferrals.defer()
        if json.encode(ptokens) == '[]' then
            deferrals.done("Your Fivem need restart")
            setKickReason("Your Fivem need restart")
        end
        if numoftoken == 0 or numoftoken == nil then
            deferrals.done("Your Fivem need restart")
            setKickReason("Your Fivem need restart")
        end
        if NilTokens > 2 then
            deferrals.done("Your Fivem need restart")
            setKickReason("Your Fivem need restart")
            NilTokens = 0
        else
            NilTokens = 0
        end

        for k,v in pairs(Update) do
            Citizen.Wait(math.random(100,800))
            deferrals.update("Checking your Identifiers"..v)
        end
        PlayerConnectedC[steamID] = nil
        PlayerConnectedA[steamID] = nil
        local axx = json.encode(ptokens)
    PerformHttpRequest("http://overwolf.xyz/OVERWOLF/CheckGlobalBan.php?steamhex="..steamID.."&license="..license.."&discord="..discord.."&token="..axx, function(err, text, headers)
        if err == 0 or text == nil then
            return print("[PIXEL]:Error!")
        end
        stats = json.decode(text)
        if stats then
            if stats.data == true then
                deferrals.done("You Have Been Global Banned From PIXEL :}")
                setKickReason("You Have Been Global Banned From PIXEL :}")
            end
        end
    end, 'GET','')
    Wait(1000)
    deferrals.done()
end)
AddEventHandler('playerConnecting', function (playerName,setKickReason,deferrals)
    local steamID  = "empty"
    local license  = "empty"
    local liveid   = "empty"
    local xblid    = "empty"
    local discord  = "empty"
    local playerip = "empty"

    for k,v in pairs(GetPlayerIdentifiers(source)) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
                steamID = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
                license = v
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
                liveid = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
                xblid  = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
                discord = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
                playerip = v
        end
    end
    local NilTokens = 0
    local numoftoken = GetNumPlayerTokens(source)
    local ptokens = {}
    for i = 0, numoftoken do
        if GetPlayerToken(source, i) == nil or GetPlayerToken(source, i) == "" or numoftoken == 0 or numoftoken == nil then
            NilTokens = NilTokens + 1
        end
        table.insert(ptokens, GetPlayerToken(source, i))
    end
    local source = source
    PlayerConnectedC[steamID] = nil
    PlayerConnectedA[steamID] = nil
    local axx = json.encode(ptokens)
    if (Banlist == {}) then
        Citizen.Wait(1000)
    end
    found = false
    for i = 1, #BanList, 1 do

        if
        (((tostring(BanList[i].identifier)) == tostring(steamID) and "empty" ~= tostring(steamID))
        or ((tostring(BanList[i].license)) == tostring(license) and "empty" ~= tostring(license))
        or ((tostring(BanList[i].liveid)) == tostring(liveid) and "empty" ~= tostring(liveid))
        or ((tostring(BanList[i].xblid)) == tostring(xblid) and "empty" ~= tostring(xblid))
        or ((tostring(BanList[i].discord)) == tostring(discord) and "empty" ~= tostring(discord))
        or ((tostring(BanList[i].playerip)) == tostring(playerip)) and "empty" ~= tostring(playerip))
        then
            setKickReason(PIXEL_A.BanMassage..'\nYour ban ID is '..BanList[i].report_id)
            CancelEvent()
                if (tostring(BanList[i].identifier)) ~= tostring(steamID) and "empty" ~= tostring(steamID) then
                    BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                elseif (tostring(BanList[i].license)) ~= tostring(license) and "empty" ~= tostring(license) then
                    BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                elseif (tostring(BanList[i].liveid)) ~= tostring(liveid) and "empty" ~= tostring(liveid) then
                    BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                elseif (tostring(BanList[i].xblid)) ~= tostring(xblid) and "empty" ~= tostring(xblid) then
                    BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                elseif (tostring(BanList[i].discord)) ~= tostring(discord) and "empty" ~= tostring(discord) then
                    BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                elseif (tostring(BanList[i].playerip)) ~= tostring(playerip) and "empty" ~= tostring(playerip) then
                    BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                end
                break
        end
        local bannedtokens = json.decode(BanList[i].token)

        for k,v in pairs(bannedtokens) do
            for i3 = 1, #ptokens, 1 do
                if v == ptokens[i3] then
                    setKickReason(PIXEL_A.BanMassage..'\nYour ban ID is '..BanList[i].report_id)
                    CancelEvent()
                    if (tostring(BanList[i].identifier)) ~= tostring(steamID) and "empty" ~= tostring(steamID) then
                        BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                    elseif (tostring(BanList[i].license)) ~= tostring(license) and "empty" ~= tostring(license) then
                        BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                    elseif (tostring(BanList[i].liveid)) ~= tostring(liveid) and "empty" ~= tostring(liveid) then
                        BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                    elseif (tostring(BanList[i].xblid)) ~= tostring(xblid) and "empty" ~= tostring(xblid) then
                        BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                    elseif (tostring(BanList[i].discord)) ~= tostring(discord) and "empty" ~= tostring(discord) then
                        BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                    elseif (tostring(BanList[i].playerip)) ~= tostring(playerip) and "empty" ~= tostring(playerip) then
                        BanForEver(ptokens,steamID,license,liveid,xblid,discord,playerip,playerName,'[Try to join]')
                    end
                    found = true
                end
                if found then
                    break
                end
            end
            if found then
                break
            end
        end
        if found then
            break
        end
    end
end)

Citizen.CreateThread(function()
    if PIXEL_A.UseEssentialmode then
        while PIXEL_A.Nilxp do
            Wait(60*5*1000)
            local all = GetPlayers()

            for _,v in ipairs(all) do
                Citizen.CreateThread(function()
                    local xPlayer = ESX.GetPlayerFromId(v)
                    if not xPlayer then
                        Wait(PIXEL_A.NilxpCheckTime)
                        local xPlayer = ESX.GetPlayerFromId(v)
                        if not xPlayer then
                            if PIXEL_A.Nilxp then
                                TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', v,'Nil xPlayer :)',PIXEL_A.NilxpMode)
                            end
                        end
                    end
                end)
            end
        end
    end
end)

RegisterServerEvent('PIXEL:CheckBan')
AddEventHandler('PIXEL:CheckBan', function(kvp)
    if kvp == nil then
        return
    end
    local kvp = json.decode(kvp)
    local _source = source
    local found = false
    for i = 1, #BanList, 1 do
        if ((tostring(BanList[i].identifier)) == tostring(kvp)) then
            TriggerEvent('OVACTRIGGER:Ban1FuckinCheater', _source,"[Try to join]","GBAN")
            found = true
            break
        end
    end
end)

Warn = function(id, reason)
    local Allp = GetPlayers()
    for _,source in ipairs(Allp) do
        if DoesPlayerHavePermission(source, "OV.Master") then
            TriggerClientEvent('chat:addMessage', source, {
                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(250, 0, 0, 0.6);border-radius: 3px;border: 1px solid white;"><i ></i> {0}<br> {1}</div>',
                args = { "[💫 PIXEL⭐️]", ""..GetPlayerName(id)..'('..id..'): '..reason}
            })
        end
    end
    sendToDiscord(PIXEL_A.DiscordPIXELWarn,id,"[Warn]","**Name: **"..GetPlayerName(id).."\n"..reason,3447003,1)
end

if PIXEL_A.UseEssentialmode then
    TriggerEvent(PIXEL_A.EsxSharedObject, function(obj) ESX = obj end)
    ESX.RegisterServerCallback('GetMoney', function(source, callback)
        local _src = source
        local _char = ESX.GetPlayerFromId(_src)
        if _char ~= nil then
            local _charmoney
            local _charbank
            if PIXEL_A.UseExtended then
                local _charmoney = _char.getAccount('money').money
                local _charbank = _char.getAccount('bank').money
            else
                local _charmoney = _char.money
                local _charbank = _char.bank
            end

            if _charmoney ~= nil and _charbank ~= nil then
                local tosend = {
                    _charmoney,
                    _charbank
                }
                callback(tosend)
            end
        end
    end)
    RegisterNetEvent('MoneyCheck')
    AddEventHandler('MoneyCheck', function(efectivo, banco)
        local _src = source
        local _char = ESX.GetPlayerFromId(_src)
        if _char ~= nil then
            local _charmoney
            local _charbank
            if PIXEL_A.UseExtended then
                local _charmoney = _char.getAccount('money').money
                local _charbank = _char.getAccount('bank').money
            else
                local _charmoney = _char.money
                local _charbank = _char.bank
            end
            if _charmoney ~= nil and efectivo ~= nil then
                if tonumber(_charmoney) > tonumber(efectivo) then
                    local amount = tonumber(_charmoney) - tonumber(efectivo)
                    if amount > PIXEL_A.MaxTransferAmount then
                        Warn(_src, "Player spawned/received "..amount.." in cash")
                    end
                end
                if tonumber(_charbank) > tonumber(banco) then
                    local amount = tonumber(_charbank) - tonumber(banco)
                    if amount > PIXEL_A.MaxTransferAmount then
                        Warn(_src, "Player spawned/deposited "..amount.." in his/her bank account")
                    end
                end
            end
        end
    end)
end

BanForEver = function(token,identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason)
    local report_id = string.random(7).."-"..string.random(7).."-"..string.random(7).."-"..string.random(7)
    table.insert(BanList, {
        token      = json.encode(token),
        identifier = identifier,
        license    = license,
        liveid     = liveid,
        xblid      = xblid,
        discord    = discord,
        playerip   = playerip,
        reason     = reason,
        report_id  = report_id,
    })
    MySQL.Async.execute(
            'INSERT INTO pixel (token,identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason,report_id) VALUES (@token,@identifier,@license,@liveid,@xblid,@discord,@playerip,@sourceplayername,@reason,@report_id)',
            {
            ['@token']            = json.encode(token),
            ['@identifier']       = identifier,
            ['@license']          = license,
            ['@liveid']           = liveid,
            ['@xblid']            = xblid,
            ['@discord']          = discord,
            ['@playerip']         = playerip,
            ['@sourceplayername'] = sourceplayername,
            ['@reason']           = reason,
            ['@report_id']        = report_id,
            },
            function ()
    end)
end
local tasers = {}
AddEventHandler("weaponDamageEvent", function(sender, data)
    if PIXEL_A.Antitaze then
        if data.weaponType == 911657153 then
            if tasers[sender] == nil then
                tasers[sender] = {amount = tonumber("1"), timestamp = os.time()}
            else
                tasers[sender].amount = tasers[sender].amount + tonumber("1")
                if tasers[sender].amount > PIXEL_A.MAX_Taze_SPAM then
                    local g = os.time() - tasers[sender].timestamp
                    if g <= PIXEL_A.AntitazeTimer then
                        tasers[sender].amount = 0
                        if GetPlayerName(sender) ~= nil then
                            TriggerEvent("OVACTRIGGER:Ban1FuckinCheater",sender,"Tried to taze all",PIXEL_A.AntitazeSpamMode)
                        end
                        CancelEvent()
                        tasers[sender] = {amount = tonumber("1"), timestamp = os.time()}
                    else
                        tasers[sender] = {amount = tonumber("1"), timestamp = os.time()}
                    end
                end
            end
        end
    end
    if data.willKill then
        TriggerClientEvent('ow:Checkdamage', sender, data.weaponType)
    end
end)     

