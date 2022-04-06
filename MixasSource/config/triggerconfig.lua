print("^2 [MIXAS AntiCheat] ^5 TriggerConfig Refresh ^0")

TriggerConfig = {}
TriggerConfig.BlacklistEvent = {
    Detection = true,
    Ban = true,
    Events = { -- you can add or remove blacklisted events below
        "mellotrainer:adminKick",
        'antilynx8:anticheat',
        'antilynxr4:detect',
        'antilynxr6:detection',
        "HCheat:TempDisableDetection",
        'ynx8:anticheat',
        'antilynx8r4a:anticheat',
        'lynx8:anticheat',
        'AntiLynxR4:kick',
        'esx_spectate:kick',
        'AntiLynxR4:log',
        'chat:server:ServerPSA',
        'd0pamine_xyz:getFuckedNigger',
        'adminmenu:allowall',
        'esx_mafiajob:confiscatePlayerItem',
        'esx_jailer:sendToJail',
        'NB:recruterplayer',
        ':tunnel_req',
        'f0ba1292-b68d-4d95-8823-6230cdf282b6',
        'gambling:spend',
        'hentailover:xdlol',
        'OG_cuffs:cuffCheckNearest',
        'hentailover:xdlol',
        'display',
        'advancedFuel:setEssence',
        'esx:jackingcar'
    }
}
    

TriggerConfig.ProtectEvents = {
    Detection = true,
    Kick = false,
    Ban = true,
    MaxAmount = 70000,
    Events = { -- example: TriggerServerEvent('esx_pizza:pay',250000000))
        "esx_fueldelivery:pay",
        "esx_carthief:pay",
        "esx_godirtyjob:pay",
        "esx_pizza:pay",
        "esx_ranger:pay",
        "esx_garbagejob:pay",
        "esx_truckerjob:pay",
        "AdminMenu:giveBank",
        "AdminMenu:giveCash",
        "esx_uber:pay",
       -- "bank:deposit",
        "esx_gopostaljob:pay",
        "esx_banksecurity:pay",
        "esx_slotmachine:sv:2",
        "esx_dmvschool:pay", 
        "esx_tankerjob:pay",
        "LegacyFuel:PayFuel",
    }
}

TriggerConfig.Message = {
    Detection = true,
    Ban = true,
    Events = {
        "esx_policejob:message",
        "esx_sheriffjob:message",
        "esx_taxijob:message",
        "esx_mechanicjob:message",
        "esx_vehicleshop:message",
        "esx_bankerjob:message",
        "esx_unicornjob:message",
        "esx_fibjob:message",
        "esx_mafia:message",
        "esx_truckerjob:message",
        "esx_security:message",
        "esx_traffic:message",
        "esx_ranger:message",
        "esx_cartel:message",
    },
    BlacklistedMessages = {
        "MIXAS",
    }
}