ChXaS = {}-- Remember to configure the anticheat BEFORE starting the server

--//ChocoHax 10 LTD//--
ChXaS.ConfigVersion = 10 -- Don't touch, it's better
ChXaS.License = ""
ChXaS.DiscordWebhookLink = ""

--//Log System//--
ChXaS.ConsoleLog = true -- This will log on console warnings/kicks/bans/infos
ChXaS.DiscordLog = true -- This will log on discord webhook warnings/kicks/bans/infos
ChXaS.ChatLog = false -- This will log on ingame chat FOR ALL PLAYERS warnings/kicks/bans

--//Chat Control Stuff//--
ChXaS.BlacklistedWordsDetection = true -- Detects and log the player that tried to say something blacklisted (configs/blacklistedwords.lua)
ChXaS.BlacklistedWordsKick = false -- Kick the player that tried to say a blacklisted word (require BlacklistedWordsDetection = true)
ChXaS.BlacklistedWordsBan = false -- Ban the player that tried to say a blacklisted word (require BlacklistedWordsDetection = true)

--//Default Stuff//--
ChXaS.TriggerDetection = false -- Kick the player that tried to execute or call a blacklisted trigger (remember to edit or obfuscate your original triggers), this will find all newbie cheaters/skids

--//Ban System//--
ChXaS.GlobalBan = true -- This on true will use the Global Ban List (All verified detected cheaters are on that list) HIGHLY RECOMMENDED!
ChXaS.BanSystem = true -- This on false will disable the ChocoHax's Ban System

--//Kick Message//--
ChXaS.KickMessage = "ChocoHax 10 LTD - changeme." -- You can edit this UwU

--//Anti Blacklisted System (tables are in tables folder)//--
ChXaS.DetectExplosions = false -- Automatically detect blacklisted explosions from (tables/blacklistedexplosions.lua)

--//Clear Ped Tasks Immediately Detection//-- NEW
ChXaS.ClearPedTasksImmediatelyDetection = true -- Automatically detect ClearPedTasksImmediately (detect cheaters that are kicking out of vehicles other players) NEW!
ChXaS.ClearPedTasksImmediatelyKick = true
ChXaS.ClearPedTasksImmediatelyBan = true

--//BlacklistedEntity Detection//-- NEW
ChXaS.BlacklistedEntityDetection = true
ChXaS.BlacklistedEntityDetectionKick = true
ChXaS.BlacklistedEntityDetectionBan = true

--//BlacklistedWeapons Detection//-- NEW
ChXaS.BlacklistedWeaponDetection = true -- Automatically detect blacklisted weapons from (tables/blacklistedmodels.lua) NEW!
ChXaS.MaxWeaponAmmo = 100 -- Automatically detect if someone tries to give themself/someone else more than 100 ammos NEW!


--//Permission System//-- DO NOT TOUCH IF YOU DON'T KNOW WHAT ARE U DOING 
ChXaS.Bypass = {"chocohaxadministrator","chocohaxmoderator"} -- This will allow the user with these perms to bypass Violation detections such as mod menus/weapons/godmode, etc.
ChXaS.AdminMenu = {"chocohaxadministrator"} -- This will allow the user with these perms to load the ChocoMenu.
ChXaS.Spectate = {"chocohaxadministrator","chocohaxmoderator"} -- This will allow the user with these perms to spectate other users.
ChXaS.Blips = {"chocohaxadministrator","chocohaxmoderator","chocohaxjobs"} -- This will allow the user with these perms to use Player Blips.