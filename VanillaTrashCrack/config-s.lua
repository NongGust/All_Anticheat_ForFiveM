--PUT YOUR LICENSE--
license = ''
--PUT YOUR WEBHOOK URL--
Aimbro.DiscordWebhookLink =  '' -- This will log on discord webhook warnings/kicks/bans/infos
Aimbro.ConnectPeople = '' --CONNECT PLAYER LOG--
Aimbro.DisconnectPeople = '' --DISCONNECT PLAYER LOG--

--//Ban System//--
Aimbro.BanSystem = true -- This in false will disable the ban system

--//Logs System//--
Aimbro.DiscordLog = true -- This will log on discord webhook warnings/kicks/bans/infos

--//Chat Control//--
Aimbro.BlacklistedWordsDetection = true -- Detects and log the player that tried to say something blacklisted
Aimbro.BlacklistedWordsKick = true -- Kick the player that tried to say a blacklisted word (require BlacklistedWordsDetection = true)
Aimbro.BlacklistedWordsBan = false -- Ban the player that tried to say a blacklisted word (require BlacklistedWordsDetection = true)

--//Entity Control//-- [Requires Onesync]
Aimbro.BlacklistedEntityDetection = true -- Detect and log the player who tried to spawn a prop from the blacklist
Aimbro.BlacklistedEntityDetectionKick = true -- Kick the player who tried to spawn a prop from the blacklist (requires Blacklisted Entity Detection = true)
Aimbro.BlacklistedEntityDetectionBan = true -- Ban the player who tried to spawn a prop from the blacklist (requires Blacklisted Entity Detection = true)

--//Clear Ped Tasks Immediately Detection//-- NEW [Requires Onesync]
Aimbro.ClearPedTasksImmediatelyDetection = true -- Automatically detect ClearPedTasksImmediately (detect cheaters that are kicking out of vehicles other players) NEW! 
Aimbro.ClearPedTasksImmediatelyKick = true
Aimbro.ClearPedTasksImmediatelyBan = true

--//BlacklistedWeapons Detection//-- NEW [Requires Onesync]
Aimbro.BlacklistedWeaponDetection = true -- Automatically detect blacklisted weapons from (tables/blacklistedweapons.lua) NEW!
Aimbro.BlacklistedWeaponKick = true -- Kick the player who tried to spawn a weapon from the blacklist (requires Aimbro.BlacklistedWeaponDetection = true)
Aimbro.BlacklistedWeaponBan = true -- Ban the player who tried to spawn a weapon from the blacklist (requires Aimbro.BlacklistedWeaponDetection = true)

--//Max Ammo Weapon Detection//-- NEW [Requires Onesync]
Aimbro.MaxWeaponAmmoDetection = 100 -- Automatically detect if someone tries to give themself/someone else more than 100 ammos NEW!
Aimbro.MaxWeaponAmmoKick = true -- Kick the player when he exceeds the maximum allowed ammunition limit
Aimbro.MaxWeaponAmmoBan = true -- Ban the player when he exceeds the maximum allowed ammunition limit


--//Blacklisted Name//--
Aimbro.BlacklistedName = true -- Detects if the player has a blacklist name set and will not let you access the server.(tables/blacklistednames.lua)