print("^2 [MIXAS AntiCheat] ^5 Config Refresh ^0")
Config = {} 
Config.Langueage = 'en' --//tr-en-de
Config.BanMessage = 'xd'
Config.Webhook = "xd"
Config.AdminMenuLog = true
Config.DropPlayer = true
Config.BanPlayer = true
Config.ConfigRefreshCommand = 'acconfigrefresh'
Config.Whitelist = {
    "steam:11000013afbd948",
    "steam:11000011ab2dbf2",
    "steam:11000010b217d1a", 
    "steam:11000013f5977b4",
    "steam:11000013c2c46ea", 
    "steam:11000010d6af6a3", 
    "steam:11000013269dde3", 
    "steam:110000113b01db9",
    "steam:110000115d2af69", 
    "steam:11000013bfac58a",
    "steam:110000119234dcb",
    "steam:110000142fb0859",
    "steam:11000014264ccf6",
}

--Commands
Config.DeletePedCommands = 'clearallped'
Config.DeleteCarCommands = 'clearallcar'
Config.DeleteEntityCommands = 'clearallentity'

--E Methods //don't touch
Config.EMethods = true
Config.EMethodCheck = "10000"

--Anti Stopper //don't touch
Config.AntiStopper = true 

--AntiSpectate
Config.AntiSpectate = true

--Player Protection
Config.Safe = true
Config.AllPedDelete = true

--Vehicle Spawn Limiter
Config.VSL = true
Config.VSLimit = 15

--Weapon blacklist
Config.WeaponBlacklist = true
Config.WeaponCheck = 4000
Config.RemoveAllWeapons = true
Config.BLWeaponLog = true
Config.BlacklistedWeapons = {
    GetHashKey("WEAPON_SNIPERRIFLE"),
    GetHashKey("WEAPON_SMG_MK2"),
    GetHashKey("WEAPON_COMBATMG_MK2"),
    GetHashKey("WEAPON_COMBATMG"),
    GetHashKey("WEAPON_COMBATPDW"),
    GetHashKey("WEAPON_ASSAULTRIFLE_MK2"),
    GetHashKey("WEAPON_FLAREGUN"),
    GetHashKey("WEAPON_COMBATMG"),
    GetHashKey("WEAPON_CARBINERIFLE_MK2"),
    GetHashKey("WEAPON_SPECIALCARBINE"),
    GetHashKey("WEAPON_ADVANCEDRIFLE"),
    GetHashKey("WEAPON_MARKSMANRIFLE"),
    GetHashKey("WEAPON_BULLPUPRIFLE"),
    GetHashKey("WEAPON_HEAVYSHOTGUN"),
    GetHashKey("WEAPON_BULLPUPSHOTGUN"),
    GetHashKey("WEAPON_RAILGUN"),
    GetHashKey("WEAPON_SNIPERRIFLE"),
    GetHashKey("WEAPON_HEAVYSNIPER_MK2"), 
    GetHashKey("WEAPON_GRENADELAUNCHER"), 
    GetHashKey("WEAPON_RPG"),
    GetHashKey("WEAPON_STINGER"),
    GetHashKey("WEAPON_HOMINGLAUNCHER"),
    GetHashKey("WEAPON_BULLPUPRIFLE_MK2"),
    GetHashKey("WEAPON_PUMPSHOTGUN_MK2"),
    GetHashKey("WEAPON_GRENADE"),
    GetHashKey("WEAPON_COMPACTLAUNCHER"),
    GetHashKey("WEAPON_SNSPISTOL_MK2"),
    GetHashKey("WEAPON_REVOLVER_MK2"),
    GetHashKey("WEAPON_PROXMINE"),
    GetHashKey("WEAPON_HOMINGLAUNCHER"),
    GetHashKey("WEAPON_SMG_MK2")
}

--Blacklist event
Config.Blacklistevent = true
Config.BlacklisteventBan = true
Config.BlacklistedEvents = {
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
    'cuffServer',
    'cuffGranted',
    'CheckHandcuff',
    'NB:recruterplayer',
    ':tunnel_req',
    'f0ba1292-b68d-4d95-8823-6230cdf282b6',
    'gambling:spend',
    'hentailover:xdlol',
    'OG_cuffs:cuffCheckNearest',
    'CheckHandcuff',
    'hentailover:xdlol',
    'display',
    'advancedFuel:setEssence',
    'esx:jackingcar'
}


--Anti Prop // WHITELIST METHOD!!!
Config.AllPropDelete = false
Config.PropWhitelist = true

Config.WLProps = {
    -921000564,
    1760825203,
    -746954904,
    -969349845,
    0,
    781557101,
    -780606667,
    -1401186713,
    -1884701657,
    -969349845,
    1336576410,
    1806057883,
    368211810,
    -1177800440,
    -1884701657,
    710198397,
    -1066334226,
    -917746868,
    1111175276,
    1407197773,
    2017086435,
    977923025,
    1425058769,
    356391690,
    -1425058769,
    517243780,
    1585232418,
    -447760697,
    880595258,
    1729911864,
    788248216,
    1847598393,
    1925761914,
    -1585232418,
    -598185919,
    1111175276,
    -994740387,
    -1036807324,
    52546966,
    143315610,
    29402038,
    1814532926,
    680380202,
    711724000,
    138065747,
    1302435108,
    1048509434,
    -563331074,
    746336278,
    -970962656,
    -1065766299,
    -781595832,
    -2054442544,
    -1803909274,
    -1916111695,
    2057317573,
    -692093509,
    -113902346,
    702242327,
    -1109340972,
    -461945070,
    -711724000,
    1471171713,
    -1170050911,
    463086472,
    -1249748547,
    1885472776,
    -1674314660,
    -678752633,
    1569945555,
    1874679314,
    683570518,
    -143315610,
    -1354005816,
    -517243780,
    -708789241,
    600913159,
    -645296272,
    333258627,
    678958360,
    519908417,
    76092178,
    866201454,
    -1863407086,
    -1038739674,
    -1296547421,
    -969349845,
    -781595832,
    1347814329,
    -227741703,
    -1894894188,
    -1685021548,
    -808831384,
    -89291282,
    -1670998136,
    850565707,
    1123216662,
    891398354,
    -745300483,
    2040839490,
    551699682,
    -1776497660,
    -1555905221,
    765541575,
    -1691644768,
    -946793326,
    -1048509434,
    874345115,
    -748199017,
    -1065766299,
    -874338148,
    -1296547421,
    1217034051,
    -960996301,
    -1623189257,
    1203231469,
    1020618269,
    944959446,
    -2054442544,
    -1016640704,
    61087258,
    -1528307545,
    1336576410,
    -85696186,
    -1477580979,
    933092024,
    499169875,
    1951180813,
    723973206,
    884422927,
    -1676901836,
    -745300483,
    277255495,
    -1048832984,
    -63485182,
    671777952,
    -1501785249,
}

--Anti Spawn car and Ped
Config.AntiCarPed = true

Config.BlacklistedCarPed = {
    "tug",
    "cargoplane",
    "Dinghy",
    "Submersible2",
    "Submersible",
    --"Pounder",
    "Cargobob2",
    "Cargobob3",
    "Cargobob4",
    "Cargobob",
    --"Dump",
    "Cutter",
    "Bulldozer",
    "Rhino",
    "Besra",
    "CargoPlane",
    "Cuban800",
    "Dodo",
    "Hydra",
    "jet",
    "Lazer",
    "Miljet",
    "Shamal",
    "titan",
    "Nimbus",
    --"Tanker",
    "Tanker2",
    "Freight",
    "Vestra",
    --"s_m_y_swat_01",
    "a_m_y_mexthug_01", 
    "a_c_cat_01",
    "u_m_y_abner",
    "a_c_boar", 
    "a_c_sharkhammer", 
    "a_c_coyote", 
    "a_c_chimp",  
    "a_c_cow", 
    "a_c_deer", 
    "a_c_dolphin", 
    "a_c_fish", 
    "a_c_hen", 
    "a_c_humpback", 
    "a_c_killerwhale", 
    "a_c_mtlion",
    --"a_c_rabbit_01",  
    "a_c_rhesus",  
    "a_c_sharktiger", 
    "u_m_y_zombie_01",
    --"csb_stripper_01",
    "a_m_o_acult_01",
    "a_m_m_acult_01",
    "a_m_y_skater_01",
    "ig_claypain",
    }


--Anti explosion
Config.AntiExplosions = true
Config.ExplosionBan = true
Config.ExplosionsList = {
    [0] = { name = "Grenade", log = true, kick = true },
    [1] = { name = "GrenadeLauncher", log = true, kick = true },
    [2] = { name = "C4", log = true, kick = true },
   -- [3] = { name = "Molotov", log = true, kick = true },
    [4] = { name = "Rocket", log = true, kick = true },
    [5] = { name = "TankShell", log = true, kick = true},
  --  [6] = { name = "Hi_Octane", log = true, kick = true },
   -- [7] = { name = "Car", log = true, kick = true },
   -- [8] = { name = "Plance", log = true, kick = true },
    --[9] = { name = "PetrolPump", log = true, kick = true },
   -- [10] = { name = "Bike", log = true, kick = true },
   -- [11] = { name = "Dir_Steam", log = true, kick = true },
   -- [12] = { name = "Dir_Flame", log = true, kick = true },
   -- [13] = { name = "Dir_Water_Hydrant", log = false, kick = true },
   -- [14] = { name = "Dir_Gas_Canister", log = true, kick = true },
   -- [15] = { name = "Boat", log = true, kick = true },
    --[16] = { name = "Ship_Destroy", log = true, kick = true },
    --[17] = { name = "Truck", log = true, kick = true },
    [18] = { name = "Bullet", log = true, kick = true },
    [19] = { name = "SmokeGrenadeLauncher", log = true, kick = true },
   -- [20] = { name = "SmokeGrenade", log = true, kick = true },
   -- [21] = { name = "BZGAS", log = true, kick = true },
   --[22] = { name = "Flare", log = true, kick = true },
    --[23] = { name = "Gas_Canister", log = true, kick = true },
    --[24] = { name = "Extinguisher", log = true, kick = true },
    --[25] = { name = "Programmablear",log = true, kick = true },
    --[26] = { name = "Train", log = true, kick = true },
    --[27] = { name = "Barrel", log = true, kick = true },
    --[28] = { name = "PROPANE", log = true, kick = true },
    --[29] = { name = "Blimp", log = true, kick = true },
   -- [30] = { name = "Dir_Flame_Explode", log = true, kick = true },
   -- [31] = { name = "Tanker", log = true, kick = true },
    [32] = { name = "PlaneRocket", log = true, kick = true },
  --  [33] = { name = "VehicleBullet", kick = true },
   -- [34] = { name = "Gas_Tank", log = true, kick = true },
    --[35] = { name = "FireWork", log = true, kick = true },
    --[36] = { name = "SnowBall", log = true, kick = true },
    [37] = { name = "ProxMine", log = true, kick = true },
    [38] = { name = "Valkyrie_Cannon", log = true, kick = true },
    [70] = { name = "AutoMizer", log = true, kick = true }
}


--Blacklist name
Config.BlacklistName = true
Config.BlackListNames = {
    "user", "nil", "null", "owner", "nigger", "n1gger", "eulencheats", "lynxmenu", "atgmenu", "hacker", "bastard", "hamhaxia", "333gang", "n1gger", "n1ga", "nigga", "n1gga", "nigg3r",
    "nig3r", "shagged","n199er", "n1993r", "anticheat.gg", "anticheat", "fucking", "ψ", "@", "&", "{", "}", ";", "ϟ", "♕", "Æ", "Œ", "‰", "™", "š", "œ", "Ÿ", "µ", "ß","±", "¦", "»", "«", "¼", "½", "¾", "¬", "¿", "Ñ", "®", "©", "²", "·", "•", "°", "þ", "ベ", "ル", "ろ", "ぬ", "ふ", "う", "え", "お", "や", "ゆ", "よ", "わ", "ほ", "へ", "た", "て", "い", "す", "か", "ん", "な", "に", "ら", "ぜ", "む",
    "ち", "と", "し", "は", "き", "く", "ま", "の", "り", "れ", "け", "む", "つ", "さ", "そ", "ひ", "こ", "み", "も", "ね", "る", "め", "ロ", "ヌ", "フ", "ア", "ウ", "エ", "オ", "ヤ", "ユ", "ヨ", "ワ", "ホ", "ヘ", "タ", "テ", "イ", "ス", "カ", "ン",
    "ナ", "ニ", "ラ", "セ", "ム", "チ", "ト", "シ", "ハ", "キ", "ク", "マ", "ノ", "リ", "レ", "ケ", "ム", "ツ", "サ", "ソ", "ヒ", "コ", "ミ", "モ", "ネ", "ル", "メ", "✪", "Ä", "ƒ", "Ã", "¢", "?", "†", "€", "웃", "и", "】", "【", "ֆ", "ȶ",
    "你", "好", "爱", "幸", "福", "猫", "狗", "微", "笑", "中", "安", "東", "尼", "杰", "诶", "西", "开", "陈", "瑞", "华", "馬", "塞", "洛", "ダ", "仇", "觉", "感", "衣", "德", "曼", "L͙", "a͙", "l͙", "ľ̶̚͝", "Ḩ̷̤͚̤͑͂̎̎͆", "a̸̢͉̠͎͒͌͐̑̇", "♚", "я", "Ʒ", "Ӂ̴", "Ƹ̴", "≋",
    "chocohax", "`", "¤", "¡", "ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â", "✈", "⛧", "☭", "☣", "✠", "( . )( . )", "⚆", "╮", "╭", "?", "§", "Σ", "Ξ", "¥", "一", "", "Ｊ", "◢", "◤", "⋡", "℟", "ᴮ", "ᴼ", "ᴛᴇᴀᴍ"
}