print("^2 [MIXAS AntiCheat] ^5 ClientConfig Refresh ^0")
ClientConfig = {}
ClientConfig.General = {
    EMethods = true, -- it blocks some executers (you cant start/stop or restart scripts when server is on, which means you should wait until restart of server)
    EMethodCheck = 10000, -- default 10000 (dont change it)
    AntiStopper = true, -- it blocks cheaters to stop scripts (when its on you cant start/stop or restart scripts you should wait until restart of server)
    AntiESX = false, -- if you use ESX as framework, you should keep it false.
    AntiGodMode = true, -- if true, it blocks some known methods of godmode BUT if you have a script which uses godmode keep it false.
    AntiSpectate = true, -- Cheater cant spectate when its on (dont forget to add your admin's hex ids or licences to ServerConfig.Whitelist so they can spectate !)
    AntiRadar = false, -- if you use Radar script, you should keep it false
    AntiVision = true, -- if you use Thermal/Night vision script, you should keep it false
    AntiMenyoo = true, -- it blocks menyooasi
    Safe = true, -- it blocks cheater to burn people
    SafeLoopTime = 100 -- don't change it // Default 100
}
ClientConfig.WLScripts = { -- if you add your script here, you will be able to start,stop or restart this script.
    "esx_policejob",
    "blips",
    "javascript",
    "xmenu",
    "nmenu",
    "inventory",
    "d-phone",
    "silentv_matthias",
    "silentv_events",
    "silentv_einreise",
    "esx_ambulancejob"
}

ClientConfig.Particle = {
    Detection = true,
    RemoveTime = 10000, -- don't change it // default 10000
}

ClientConfig.AntiFly = {
    Detection = true, -- if true, it protects aganist car fly
    Distance = 20, -- Max Distance // default 20 
    Class = { -- dont change it
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13
    }
}


ClientConfig.Blacklistkey = {
    Detection = true,
    CoolDown = 60000,
    Screenshot = true,
    BlacklistKeys = { -- you can add or remove blacklisted keys below, // EDIT IT FOR YOUR SERVER AND DONT FORGET TO INSTALL SCREENSHOTBASIC !
        {key = 121, name = 'INSERT', kick = false},
        {key = 212, name = 'HOME', kick = false},
    },
}

ClientConfig.FreeCam = {
    Detection = false,-- Don't make it if you have scripts that use freecam.
    Limit = 5,
}

ClientConfig.Weapons = {
    Detection = true, -- if true, you activate blacklisted weapon option. (we recommend you to keep it true)
    AntiExplosiveWeapons = true, -- if true, you block explosive weapons
    RemoveBlacklistWeapon = false, -- if true, it deletes ONLY blacklisted weapon from inventory
    RemoveAllWeapons = true, -- when it detects blacklisted weapon in player's or cheater's inventory it deletes ALL weapons on him (we recommend you to keep it true)
    BLWeaponLog = true, -- it shows on logs(webhook on discord) use of blacklisted weapons
}

ClientConfig.BlacklistedWeapons = {
    "WEAPON_RPG",
    "WEAPON_RAILGUN",
    "WEAPON_MINIGUN"
}

ClientConfig.WeaponDamages = {
    AntiDamageModifier = false, -- if true, detects when someone increases damage of the weapon more than shown below
    CheckTime = 10000, -- don't change it
}
ClientConfig.WeaponDamagess = {
    [-1357824103] = 34, -- AdvancedRifle
    [453432689] = 26, -- Pistol
    [1593441988] = 27, -- CombatPistol
    [584646201] = 25, -- APPistol
    [-1716589765] = 51, -- Pistol50
    [-1045183535] = 160, -- Revolver
    [-1076751822] = 28, -- SNSPistol
    [-771403250] = 40, -- HeavyPistol
    [137902532] = 34, -- VintagePistol
    [324215364] = 21, -- MicroSMG
    [736523883] = 22, -- SMG
    [-270015777] = 23, -- AssaultSMG
    [-1121678507] = 22, -- MiniSMG
    [-619010992] = 27, -- MachinePistol
    [171789620] = 28, -- CombatPDW
    [487013001] = 29, -- PumpShotgun
    [2017895192] = 40, -- SawnoffShotgun
    [-494615257] = 32, -- AssaultShotgun
    [-1654528753] = 14, -- BullpupShotgun
    [984333226] = 117, -- HeavyShotgun
    [-1074790547] = 30, -- AssaultRifle
    [-2084633992] = 32, -- CarbineRifle
    [-1063057011] = 32, -- SpecialCarbine
    [2132975508] = 32, -- BullpupRifle
    [1649403952] = 34, -- CompactRifle
    [-1660422300] = 40, -- MG
    [2144741730] = 45, -- CombatMG
    [1627465347] = 34, -- Gusenberg
    [100416529] = 101, -- SniperRifle
    [205991906] = 216, -- HeavySniper
    [-952879014] = 65, -- MarksmanRifle
    [1119849093] = 30, -- Minigun
    [-1466123874] = 165, -- Musket
    [911657153] = 1, -- StunGun
    [1198879012] = 10, -- FlareGun
    [-598887786] = 220, -- MarksmanPistol
    [1834241177] = 30, -- Railgun
    [-275439685] = 30, -- DoubleBarrelShotgun
    [-1746263880] = 81, -- Double Action Revolver
    [-2009644972] = 30, -- SNS Pistol Mk II
    [-879347409] = 200, -- Heavy Revolver Mk II
    [-1768145561] = 32, -- Special Carbine Mk II
    [-2066285827] = 33, -- Bullpup Rifle Mk II
    [1432025498] = 32, -- Pump Shotgun Mk II
    [1785463520] = 75, -- Marksman Rifle Mk II
    [961495388] = 40, -- Assault Rifle Mk II
    [-86904375] = 33, -- Carbine Rifle Mk II
    [-608341376] = 47, -- Combat MG Mk II
    [177293209] = 230, -- Heavy Sniper Mk II
    [-1075685676] = 32, -- Pistol Mk II
    [2024373456] = 25, -- SMG Mk II
}