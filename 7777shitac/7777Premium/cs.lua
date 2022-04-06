AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('7777 - PremiumAC > ON')
end)
AC = {
  'esx_garbagejob:pay',
  'esx_drugs:startHarvestCoke',
  'esx_drugs:startTransformCoke',
  'esx_drugs:starTriggerServerEventllCoke',
  'esx_drugs:startHarvestMeth',
  'esx_drugs:startTransformMeth',
  'esx_drugs:starTriggerServerEventllMeth',
  'esx_drugs:startHarvestOpium',
  'esx_drugs:startTransformOpium',
  'esx_drugs:starTriggerServerEventllOpium',
  'esx_truckerjob:pay',
  'esx_gopostaljob:pay',
  'esx_slotmachine:sv:2',
  'esx_carthief:pay',
  'esx_ranger:pay',
  'esx_pizza:pay',
  'LegacyFuel:PayFuel',
  'xaries gang 3*',
  'xseira.CreateSubMenu("SelfMenu", "MainMenu", "Self Menu3")',
  'esx-qalle-hunting:sell',
  'esx-qalle-hunting:reward',
  'esx_jebackoguszkaa_jailer:sendToJail',
  'esx-qalle-jail:jailPlayer',
  'esx_jail:sendToJail',
  'esx_jailer:sendToJail',
}

lol = {
'Desudo',
'Brutan',
'EulenCheats',
"TAJNEMENUMenu",
"RedEngine",
"Brutan Premium",
"https://dc.xaries.pl",
"SKAZA",
"SKAZA V500",
"redengine",
"lynxmenu",
"xaries",
"xariesgang2",
"xariesgang3",
"xariesv2",
'xariesgang3',
"xaries gang 3*",
"ariesv1.0_1_1",
"BEE_1",
"HamHaxia",
"Ham Mafia",
"https://dc.xaries.pl",
"www.renalua.com",
"Fallen#0811",
"Rena 8",
"HamHaxia",
"Ham Mafia",
"Xanax#0134",
">:D Player Crash",
"34ByTe Community",
"lynxmenu.com",
"Anti-Spartan",
"MainMenu",
"SelfMenu",
"Baran#8992",
"iLostName#7138",
"LynX",
"LynxX",
"stt_prop_stunt_soccer_ball",
"WarMenu",
"INTERACTION MENU",
"ARIES MENU",
"XARIES",
"666 GANG",
"Lynx",
"6666",
"85.190.90.118",
"Melon#1379",
"hammafia.com",
"TITOMODZ",
"xseira",
'xseira',
"AlphaV ~ 5391",
"Soviet Bear",
"fefev",
"ariesMenu",
"AlikhanCheats",
"ariesMenu",
"werfvtghiouuiowrfetwerfio",
"Lynx8",
"LynxSeven",
"KoGuSzEk",
"lynxunknowncheats",
"BrutanPremium",
"gaybuild",
"TiagoMenu",
"Dopamine",
"Plane",
"MMenu",
"nigmenu0001",
"HamMafia",
"b00mek",
"LynxEvo",
"WarMenu",
}

ExecuteCommand('sets 7777 ✅')

RegisterServerEvent("AC:cleanareaveh")
RegisterServerEvent("AC:cleanareapeds")
RegisterServerEvent("AC:cleanareaentity")
RegisterServerEvent("AC:enable")
RegisterServerEvent("AC:log")
RegisterServerEvent("AC:spectate")
RegisterServerEvent("AC:openmenu")
RegisterServerEvent("AC:checkup")
RegisterServerEvent("AC:adminmenuenable")
RegisterServerEvent("AC:ViolationDetected")
RegisterServerEvent("AC:askAwake")



function doesPlayerHavePerms(player,perms)
  local allowed = false
  for k,v in ipairs(perms) do
      if IsPlayerAceAllowed(player, v) then
          return true
      end
  end
  return false
end

AddEventHandler('explosionEvent', function(sender, ev)
  local j=GetPlayerName(sender)
  local k=GetPlayerEndpoint(sender)
  local m=GetPlayerIdentifier(sender)
  local gra="EXPLOSIONS"
        local n= {
        {
        ["color"]="8663711",
        ["title"]="7777 » Premium AntiCheat",
        ["description"]="***```DETECT REASON:".. gra .."```*** \n\n > PLAYER: ***".. j .."***\n > IP ADRESS: ***".. k .."***\n > PLAYER HEX ***".. m .."***",
        ["footer"]=
        {
            ["text"]="https://discord.gg/aTefrtH"},
            ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%S'),
        }
    }

    PerformHttpRequest(Config.webhook,function(f,o,h)end,'POST',json.encode({username="Cheater",embeds=n}),{['Content-Type']='application/json'})
  CancelEvent()
end)

local ace_perm = "ACadmin"
local debug = false

function ProcessAces()
    if GetNumPlayerIndices() > 0 then
        for i=0, GetNumPlayerIndices()-1 do
            player = tonumber(GetPlayerFromIndex(i))
            Citizen.Wait(0)
            if IsPlayerAceAllowed(player, ace_perm) then
                TriggerClientEvent("sendAcePermissionToClient", player, true)
                if debug then print("[DEBUG][" .. GetCurrentResourceName() .. "] ^5Syncronising player aces, sending to client...^0") end
            end
        end
    end
end
RegisterServerEvent('yung_ac:ban')
AddEventHandler('yung_ac:ban', function(argument, powod, typkary)
  argument_ = argument
  if argument_ == source then
  zapiszsql(source, 'Godmode', 'BAN')
  local j=GetPlayerName(source)
  local m=GetPlayerIdentifier(source)
  DropPlayer(source, '⚡️ This server is protected by 7777')

  else
  zapiszsql(source, 'Event Triggering: yung_ac:ban', 'BAN')
  local j=GetPlayerName(source)
  local m=GetPlayerIdentifier(source)
  DropPlayer(source, '⚡️ This server is protected by 7777')

  end
end)

Citizen.CreateThread(function()
    while true do
        ProcessAces()
        Citizen.Wait(30000)
    end
end)

AddEventHandler("onResourceStart", function(name)
    if name == GetCurrentResourceName() then
        ProcessAces()
        if debug then print("[DEBUG][" .. GetCurrentResourceName() .. "] ^6Resource [ " .. GetCurrentResourceName() .. " ] was (re)started, syncing aces to all players.^0") end
    end
end)

local ListaBanow         = {}
local ListaBanowStatus   = false
local czasreload         = 1000 * 10 * 5

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

CreateThread(function()
  while true do
    Wait(1000)
        if ListaBanowStatus == false then
      LoadBany()
      if ListaBanow ~= {} then
        ListaBanowStatus = true
      end
    end
  end
end)

CreateThread(function()
  while true do
    Wait(czasreload)
    LoadBany()
  end
end)

function LoadBany()
  MySQL.Async.fetchAll(
    'SELECT * FROM ACbans',
    {},
    function (identifiers)
      ListaBanow = {}

      for i=1, #identifiers, 1 do
        table.insert(ListaBanow, {
			identifier           = identifiers[i].identifier,
			license              = identifiers[i].license,
			ip                   = identifiers[i].ip,
			discord              = identifiers[i].discord,
			nazwa                = identifiers[i].nazwa,
			powod                = identifiers[i].powod,
			typkary              = identifiers[i].typkary,
			datanadania          = identifiers[i].datanadania,
			liveid               = identifiers[i].liveid,
			xbl                  = identifiers[i].xbl,
          })
      end
    end
  )
end

MySQL.ready(function()
	LoadBany()
end)

function zapiszsql(target, powod, typkary, czas)
  local identifier    = nil
  local license       = nil
  local playerip      = nil
  local playerdiscord = nil
  local liveid        = nil
  local xbl       = nil
  local nazwa         = GetPlayerName(target)
  local powod         = tostring(powod)
  local typkary       = typkary
  local datanadania   = os.date("%Y/%m/%d %H:%M")

  for k,v in pairs(GetPlayerIdentifiers(target))do
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      identifier = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
      xbl  = v
    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
      playerip = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      playerdiscord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
      liveid = v
    end
  end

  if playerip == nil then
    playerip = GetPlayerEndpoint(target)
    if playerip == nil then
      playerip = 'not found'
    end
  end
  if playerdiscord == nil then
    playerdiscord = 'not found'
  end
  if liveid == nil then
    liveid = 'not found'
  end
  if xbl == nil then
    xbl = 'not found'
  end

  MySQL.Async.execute(
    'INSERT INTO ACbans (identifier,license,ip,discord,nazwa,powod,typkary,datanadania,liveid,xbl) VALUES (@identifier,@license,@ip,@discord,@nazwa,@powod,@typkary,@datanadania,@liveid,@xbl)', {
      ['@identifier'] = identifier,
      ['@license'] = license,
      ['@ip'] = playerip,
      ['@discord'] = playerdiscord,
      ['@nazwa'] = nazwa,
      ['@powod'] = powod,
      ['@typkary'] = typkary,
      ['@datanadania'] = datanadania,
      ['@liveid'] = liveid,
      ['@xbl'] = xbl,
    },
    function ()
  end)
end

AddEventHandler('playerConnecting', function (playerName,setKickReason)

  local identifier    = nil
  local license       = nil
  local playerip      = nil
  local playerdiscord = nil
  local liveid        = nil
  local xbl       = nil
  local nazwa         = GetPlayerName(source)

  for k,v in pairs(GetPlayerIdentifiers(source))do
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      identifier = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
      xbl  = v
    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
      playerip = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      playerdiscord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
      liveid = v
    end
  end

  if playerip == nil then
    playerip = GetPlayerEndpoint(source)
    if playerip == nil then
      playerip = 'nie ma'
    end
  end
  if playerdiscord == nil then
    playerdiscord = 'nie ma'
  end
  if liveid == nil then
    liveid = 'nie ma'
  end
  if xbl == nil then
    xbl = 'nie ma'
  end

  if (ListaBanow == {}) then
    Citizen.Wait(1000)
  end

    if identifier == false then
    setKickReason('You need to have open steam to acces this server')
    CancelEvent()
    end
  for i = 1, #ListaBanow, 1 do
    if (tostring(ListaBanow[i].identifier)) == tostring(identifier)
    or (tostring(ListaBanow[i].license)) == tostring(license)
    or (tostring(ListaBanow[i].xbl)) == tostring(xbl)
    or (tostring(ListaBanow[i].liveid)) == tostring(liveid)
    or (tostring(ListaBanow[i].ip)) == tostring(playerip)
    or (tostring(ListaBanow[i].discord)) == tostring(playerdiscord)
    and (tostring(ListaBanow[i].typkary)) == 'BAN' then

      setKickReason('⚡️ This server is protected by 7777')
      print('[7777] User: ' .. GetPlayerName(source) .. ' - tried to connect the server being banned')
      CancelEvent()
    end
  end
end)



function AClogkick(source,arg,kick)
  local steamid = "nA"
  local discord = "nA"
  local license = "nA"
  for k,v in ipairs(GetPlayerIdentifiers(source))do
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steamid = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      discord = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    end
  end
 	local j=GetPlayerName(source)
	local k=GetPlayerEndpoint(source)
	local m=GetPlayerIdentifier(source)
    local n= {
        {
        ["color"]="8663711",
        ["title"]="7777 » Premium AntiCheat",
        ["description"]="***```DETECT REASON:"..arg.."```*** \n\n > PLAYER NAME:: ***".. j .."***\n > PLAYER IP: ***".. k .."***\n > PLAYER HEX: ***".. m .."***",
        ["footer"]=
        {
            ["text"]="https://discord.gg/aTefrtH"},
            ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%S'),
        }
    }

    PerformHttpRequest(Config.webhook,function(f,o,h)end,'POST',json.encode({username="Cheater Detected",embeds=n}),{['Content-Type']='application/json'})

  if kick then
  zapiszsql(source, arg, 'BAN')
  local j=GetPlayerName(source)
  local m=GetPlayerIdentifier(source)
	DropPlayer(source, '⚡️ This server is protected by 7777')
  end
end

AddEventHandler("AC:ViolationDetected", function(arg,kick)
  if not doesPlayerHavePerms(source,Config.Bypass) then
  AClogkick(source,arg,kick)
  end
end)

AddEventHandler("AC:adminmenuenable", function()
  for k,v in ipairs(Config.OpenMenuAllowed) do
  if not IsPlayerAceAllowed(source, v) then
    TriggerClientEvent('adminmenuenabley',source)
  end
end
end)

AddEventHandler("AC:checkup", function()
  if not doesPlayerHavePerms(source,Config.OpenMenuAllowed) then
    AClogkick(source,"unauthorized AdminMenu Opening")
    end
end)

AddEventHandler("AC:openmenu", function()
  for k,v in ipairs(Config.OpenMenuAllowed) do
  if IsPlayerAceAllowed(source, v) then
    TriggerClientEvent('AC:openmenuy', source)
  end
end
end)


AddEventHandler("AC:cleanareaveh", function()
 if doesPlayerHavePerms(source,Config.ClearAreaAllowed) then
  TriggerClientEvent("AC:cleanareavehy",-1)
else
  AClogkick(source," unauthorized Clear Area",true)
end
end)

AddEventHandler("AC:cleanareapeds", function()
  if doesPlayerHavePerms(source,Config.ClearAreaAllowed) then
    TriggerClientEvent("AC:cleanareapedsy",-1)
  else
    AClogkick(source," unauthorized Clear Area",true)
  end
  end)

AddEventHandler("AC:cleanareaentity", function()
  if doesPlayerHavePerms(source,Config.ClearAreaAllowed) then
    TriggerClientEvent("AC:cleanareaentityy",-1)
  else
    AClogkick(source," unauthorized Clear Area",true)
  end
  end)

AddEventHandler("AC:spectate", function()
  if not doesPlayerHavePerms(source,Config.SpectateAllowed) then
    AClogkick(source," Spectate",true)
end

end)

for i=1, #AC, 1 do
  RegisterServerEvent(AC[i])
    AddEventHandler(AC[i], function()
      local _source = source
      AClogkick(source," Lua execution: "..AC[i],true)
    end)
end

AddEventHandler('chatMessage', function(source, n, message)
  for k,n in pairs(lol) do
    if string.match(message:lower(),n:lower()) then
      AClogkick(source,"tried to say: "..n,true)
    end
  end
end)
