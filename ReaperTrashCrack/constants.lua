ESX
LoadResourceFile
es_extended
client/common.lua
gsub
AddEventHandler
cb
function
return ESX
(ESX)
function
getSharedObject%(%)
end
%(
%)
,


'
%s+
tostring
esx:getSharedObject
print
^
math
random
WARNING!: This server is using trigger replacement, watch out!
TriggerEvent
logo
Citizen
CreateThread
string
match
GetCurrentResourceName
lower
anti
Reaper
Premium
cheat
Reaper Premium: WARNING! Rename your Reaper Premium folder to something else than
 for better protection... DON'T INCLUDE `anti`,`Reaper`,`Premium`, in the name
https://cdn.discordapp.com/attachments/739450016682475531/765988767357468713/asdasd.png
Hertz - Logs
RegisterServerEvent
discordlog:sendToDiscord2
discordlog:sendToDiscord
playerConnecting
playerDropped
RegisterNetEvent
EGnetkoPlayers
_GetCoords
_UpdatePos
playerDied
nsac:trigger
AntiCheat:Cars
ZAC-AC:armasprohibidas
ZAC-AC:BanExplosiones
ZAC-AC:BanObjetos
ZAC-AC:LogExplosiones
ZAC-AC:BanMenu
explosionEvent
msg
ZAC:Anuncios
IsPropBlacklisted
entityCreating
doesPlayerHavePerms
zACogkick
ZAC-AC:ViolationDetected
ZAC-AC:kick
ZAC-AC:adminmenuenable
ZAC-AC:checkup
ZAC-AC:openmenu
ZAC-AC:cleanareaveh
ZAC-AC:banmenu
ZAC-AC:cleanareapeds
ZAC-AC:networkingobjetos
ZAC-AC:cleanareaentity
ConfigCS
lynx
chatMessage
loadBans
ESX
print

               Reaper Premium
               Reaper Premium By: Hertz#1337


Reaper Premium
PerformHttpRequest
https://api.ipify.org?format=text
match
(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)
math
floor
GetConvar
zac_license
none
PerformHttpRequest
http://reaper-authserver.duckdns.org:8070/licensing/validate.php?license=
&hwid=
none
json
decode
reason
authenticated
logo
print

[Reaper] | Welcome, your license was authenticated!
Your HWID:

----------------------------------------------------------------------





expired

[Reaper] | Sorry, Your License has expired...
Your HWID:
Citizen
Wait
StopResource
GetCurrentResourceName
os
exit
wrong_hwid

[Reaper] | Sorry, Your current HWID doesnt match this machine HWID...
Your HWID:
not_found

[Reaper] |Sorry, Your license key was invalid.
Your HWID:

[Reaper] |Sorry, Couldn't find License from server.cfg please double check...
Your HWID:

[Reaper] |Sorry, Our auth server's are down....
color
title
**
description
footer
text
Reaper
PerformHttpRequest
ConfigCS
LOGS
POST
json
encode
username
embeds
avatar_url
Content-Type
application/json
color
title
**
description
footer
text
Reaper
PerformHttpRequest
ConfigCS
GlobalBan
POST
json
encode
username
embeds
avatar_url
Content-Type
application/json
os
time
date
!*t
ESX
GetPlayers
id
name
GetPlayerName
table
insert
tostring
source
os
time
tostring
source
TriggerEvent
discordlog:sendToDiscord2
Disconnected
**
GetPlayerName
Has left from the server.
 Reason:
TriggerClientEvent
_SendPlayers
source
TriggerClientEvent
_SendPos
source
source
tostring
os
time
TriggerEvent
discordlog:sendToDiscord2
Death logs
doesPlayerHavePerms
source
ConfigCS
Bypass
GetPlayerName
GetPlayerIdentifier
GetPlayerIdentifiers
ipairs
string
sub
len
steam:
permBanUser
ip:
license:
discord:
pairs
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
print
[Reaper] | ID[
] Reason:

DropPlayer
├é┬ş├é┬ş├é┬şYou are globally banned from Reaper Secured servers. | Submit unban request at: Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k
GetPlayerName
source
GetPlayerIdentifier
Exploit detected: Coches prohibidos:
(
)
pairs
GetPlayerIdentifiers
string
sub
len
steam:
license:
ip:
discord:
print
[Reaper] |
[
]
TriggerClientEvent
chatMessage
├é┬şReaper


TriggerEvent
discordlog:sendToDiscord
Reaper, Detected illegal vehicles
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
GetPlayerName
source
GetPlayerIdentifier
Has illegal weapons:
(
)
pairs
GetPlayerIdentifiers
string
sub
len
steam:
license:
ip:
discord:
print
[Reaper] |
[
]
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper, Detected illegal weapons
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason:**
GetPlayerName
GetPlayerIdentifier
GetPlayerIdentifiers
source
ipairs
string
sub
len
steam:
permBanUser
ip:
license:
discord:
pairs
TriggerEvent
discordlog:sendToDiscord
Reaper, Detected explosions
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
DropPlayer
├é┬ş├é┬ş├é┬şYou are globally banned from Reaper Secured servers. | Submit unban request at: Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k
GetPlayerName
GetPlayerIdentifier
GetPlayerIdentifiers
source
ipairs
string
sub
len
steam:
permBanUser
ip:
license:
discord:
pairs
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper BAN POR OBJETOS BLOQUEADOS
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
DropPlayer
├é┬ş├é┬şYou are globally banned from Reaper Secured servers. | Submit unban request at Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k
GetPlayerName
GetPlayerIdentifier
pairs
GetPlayerIdentifiers
string
sub
len
steam:
license:
ip:
discord:
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper, Explosions log
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
GetPlayerName
GetPlayerIdentifier
GetPlayerIdentifiers
source
ipairs
string
sub
len
steam:
permBanUser
ip:
license:
discord:
pairs
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
DropPlayer
├é┬ş├é┬ş├é┬şYou are globally banned from Reaper Secured servers. | Submit unban request at: Discord.me/Reaperac. | Your ban license: 21c434d2b-b9dsaa-1337-ae4k
CancelEvent
ownerNetId
CancelEvent
posX
posY
pairs
ConfigCS
ExplosionsList
explosionType
log
print
[Reaper] | Detected explosions: [
name
] Player: [
]
GetPlayerName
Citizen
Wait
Detected explosion:
TriggerEvent
ZAC-AC:LogExplosiones
ban
ZAC-AC:BanExplosiones
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
pairs

TriggerClientEvent
announce
├é┬şReaper | You don't have enough high permission to use this.
TriggerEvent
ZAC-AC:BanMenu
GetEntityModel
GetEntityType
GetEntityPopulationType
Config
ObjectsBL
tonumber
GetHashKey
DoesEntityExist
NetworkGetEntityOwner
NetworkGetNetworkIdFromEntity
IsPropBlacklisted
CancelEvent
GetEntityType
GetEntityModel
GetPlayerName
ipairs
Config
ObjectsBL
GetHashKey
print
[Reaper] |  Detected objects: [
] Players: [
]
Blacklisted object:
TriggerEvent
ZAC-AC:BanObjetos
Citizen
Wait
ipairs
IsPlayerAceAllowed
GetPlayerName
pairs
GetPlayerIdentifiers
string
sub
len
steam:
steamid
license:
license
ip:
ips
discord:
discord
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
DropPlayer
doesPlayerHavePerms
source
ConfigCS
Bypass
zACogkick
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
GetPlayerName
pairs
GetPlayerIdentifiers
string
sub
len
steam:
steamid
license:
license
ip:
ips
discord:
discord
TriggerEvent
discordlog:sendToDiscord
├é┬şReaper Kick Menu
**
Number: **
tostring
**
 Steam: **
**
 Discord: **
**
 Fivem: **
**
IP: **
**
Reason: **
DropPlayer
├é┬şReaper | You don't have enough high permission to use this.
ZAC-AC:BanMenu
ipairs
ConfigCS
OpenMenuAllowed
IsPlayerAceAllowed
source
TriggerClientEvent
adminmenuenabley
doesPlayerHavePerms
source
ConfigCS
OpenMenuAllowed
zACogkick
unauthorized AdminMenu Opening
ipairs
ConfigCS
OpenMenuAllowed
IsPlayerAceAllowed
source
TriggerClientEvent
ZAC-AC:openmenu
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
TriggerClientEvent
ZAC-AC:cleanareavehy
zACogkick
Reaper | unauthorized Clear Area
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
Blacklisted from Reaper Menu
TriggerEvent
ZAC-AC:BanMenu
Reaper | Blacklisted from Reaper Menu
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
TriggerClientEvent
ZAC-AC:cleanareapedsy
zACogkick
Reaper | unauthorized Clear Area
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
TriggerClientEvent
ZAC-AC:networkingobjetos2
zACogkick
├é┬şReaper | You don't have enough high permission to use this.
doesPlayerHavePerms
source
ConfigCS
ClearAreaAllowed
TriggerClientEvent
ZAC-AC:cleanareaentityy
zACogkick
├é┬şReaper | unauthorized Clear Area
source
Injection.
TriggerEvent
ZAC-AC:BanMenu
Citizen
Wait
CancelEvent
pairs
ConfigCS
lol
string
match
lower
zACogkick
├é┬şReaper | You said illegal word, do not do that again. |
CancelEvent