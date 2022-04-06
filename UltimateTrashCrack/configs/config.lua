-------------------------------------------------------------
--------------------🍕<Ultimate-AC>🍕------------------------
-----------------------Version 1.7---------------------------
-------------------------------------------------------------

Config = {}

Config.threadDelay = 20000              -- Delay of anticheat tick, higher = lower lag but will slower catch cheater
Config.AntiCheat = true                 -- Main anticheat, anti ultra jump, ultra speed etc.
Config.damageMultiplierCheck = true     -- Triggered if GetPlayerWeaponDamageModifier > 1.0
Config.thermalVisionCheck = true        -- Triggered on GetUsingseethrough native
Config.nightVisionCheck = true          -- Triggered on GetUsingnightvision native
Config.AntiPedAttack = true             -- Protects player from ped attack
Config.PlayerProtection = true          -- Protects player from explosions/fire
Config.AntiSpectate = false              -- Anti spectate (USE AFTER SETTING ADMINS BYPASS)

-------------------------------------------------------------
--------------------🍕<Ultimate-AC>🍕------------------------
-----------------------Version 1.7---------------------------
-------------------------------------------------------------

----------------Injection Protection Options-----------------

Config.resourcestopper = false      -- Detects resource stoppers (DONT RESTART SCRIPTS IF ENABLED, UNLESS ALL SERVER GET BANNED)
Config.resourcecounter = false      -- Counts resources (DONT RESTART SCRIPTS IF ENABLED, UNLESS ALL SERVER GET BANNED)
Config.EngineDetection = true      -- Detects manipulating with cheat engine


----------Blacklisted things, add more if u want :3-----------

Config.blacklistedEvents = { 
	"antilynxr6:detection",
    "js:jailuser",
    'AdminMenu:giveCash',
    '265df2d8-421b-4727-b01d-b92fd6503f5e'
}

Config.Objects = {
	"hei_prop_carrier_radar_1_l1",
	"v_res_mexball",
	"prop_rock_1_a",
	"prop_rock_1_b",
    "prop_flamingo",
    "-145066854",
    "-145066854, 0, 0, 0,",
    "xs_prop_hamburgher_wl",
    "prop_fnclink_05crnr1",
    "stt_prop_stunt_soccer_ball",
    "sr_prop_spec_tube_xxs_01a"

}

Config.vehicles = {
    "rhino",
    "cargoplane",
    "hydra"
}
 
Config.weapons = {
    "WEAPON_MINIGUN",
    "WEAPON_GRENADELAUNCHER"
}