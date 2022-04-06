------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------


Config = {}


Config.Key = "cracked"
Config.Minimap = true
Config.AntiCheat = true --ENABLE/DISABLE ANTICHEAT SYSTEM--
Config.AntiGodmode = true --ENABLE/DISABLE ANTI GOD MODE--
Config.AntiSpectate = true --ENABLE/DISABLE ANTI SPECTATE--
Config.AntiSpeedHack = true --ENABLE/DISABLE SPEEDHACK--
Config.PlayerProtection = true --ENABLE/DISABLE PLAYERPROTECTION FOR EXPLODES AND FIRE--
Config.AntiPedAttack = true -- Enable/disable if you enable this, peds can't attack players
-------------------------------------------------------------
--------------------KEYS BLOCKING OPTIONS--------------------
-------------------------------------------------------------

Config.AntiKey = false --MASTERSWITCH FOR ANTIKEYS--

Config.forbiddenKeys = {
	121,
	213,
	214
}
Config.AntiCarBlack = true
Config.webhook = ""
Config.webhookinjections = ""
Config.webhookexplosions = ""
-------------------FULL KEYS DOCUMENTATION------------------
------https://docs.fivem.net/game-references/controls/------
------------------------------------------------------------


-------------------------------------------------------------
--------------------BLACKLISTED COMMANDS---------------------
-------------------------------------------------------------

Config.AntiBlacklistedCmds = true --ENABLE/DISABLE BLACKLISTED COMMANDS--

-------------------------------------------------------------
---------------------BLACKLISTED WEAPONS---------------------
-------------------------------------------------------------
Config.AntiBlacklistedWeapons = true --ENABLE/DISABLE- BLACKLISTED WEAPONS--
Config.AntiBlacklistedWeaponsKick = false --IF SOMEONE TRY TO GIVE UR SELF BLACKLISTED GUN, HE GET KICKED--
Config.BlacklistedWeapons = { "WEAPON_RAILGUN", "WEAPON_GARBAGEBAG", "WEAPON_SNSPISTOL_MK2", "WEAPON_HEAVYPISTOL", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER_MK2", "WEAPON_DOUBLEACTION", "WEAPON_SMG_MK2", "WEAPON_MACHINEPISTOL", "WEAPON_MINISMG", "WEAPON_RAYCARBINE", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_AUTOSHOTGUN", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE_MK2", "WEAPON_BULLPUPRIFLE", "WEAPON_BULLPUPRIFLE_MK2", "WEAPON_COMPACTRIFLE", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_MARKSMANRIFLE_MK2", "WEAPON_RPG", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_MINIGUN", "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER", "WEAPON_COMPACTLAUNCHER", "WEAPON_RAYMINIGUN", "WEAPON_GRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_SNOWBALL", "WEAPON_PIPEBOMB", "WEAPON_BALL", "WEAPON_SMOKEGRENADE", "WEAPON_ROCKET", "WEAPON_EXPLOSION ", "WEAPON_FLARE", "WEAPON_MUSKET" }



-------------------------------------------------------------
------------------------PERMS------------------------
-------------------------------------------------------------

Config.Bypass = {"acadmin","acmod"} --GODMODE,BLIPS,BLACKLISTEDCMDS,SPEEDHACK--
Config.OpenMenuAllowed = {"acadmin"}
Config.SpectateAllowed = {"acadmin","acmod"}
Config.ClearAreaAllowed = {"acadmin"}
Config.BypassVPN = {"acadmin"}
Config.InjectionsAllowed = {"acadmin"}
Config.ObjectsBL={
	"stt_prop_stunt_bblock_huge_01",
	"stt_prop_stunt_bblock_huge_02",
	"stt_prop_stunt_bblock_huge_03",
	"stt_prop_stunt_bblock_huge_04",
	"stt_prop_stunt_bblock_huge_05",
	"stt_prop_stunt_bblock_hump_01",
	"stt_prop_stunt_bblock_hump_02",
	"stt_prop_stunt_bblock_lrg1",
	"stt_prop_stunt_bblock_lrg2",
	"stt_prop_stunt_bblock_lrg3",
	"stt_prop_stunt_bblock_mdm1",
	"stt_prop_stunt_bblock_mdm2",
	"stt_prop_stunt_bblock_mdm3",
	"stt_prop_stunt_bblock_qp",
	"stt_prop_stunt_bblock_qp2",
	"stt_prop_stunt_bblock_qp3",
	"stt_prop_stunt_bblock_sml1",
	"stt_prop_stunt_bblock_sml2",
	"stt_prop_stunt_bblock_sml3",
	"stt_prop_stunt_bblock_xl1",
	"stt_prop_stunt_bblock_xl2",
	"stt_prop_stunt_bblock_xl3",
	"stt_prop_stunt_bowling_ball",
	"stt_prop_stunt_bowling_pin",
	"stt_prop_stunt_bowling_stand",
	"stt_prop_stunt_domino",
	"stt_prop_stunt_jump15",
	"stt_prop_stunt_jump30",
	"stt_prop_stunt_jump45",
	"stt_prop_stunt_jump_l", 
	"stt_prop_stunt_jump_lb",
	"stt_prop_stunt_jump_loop",
	"stt_prop_stunt_jump_m",
	"stt_prop_stunt_jump_mb",
	"stt_prop_stunt_jump_s",
	"stt_prop_stunt_jump_sb",
	"stt_prop_stunt_jump_sb",
	"stt_prop_stunt_landing_zone_01",
	"stt_prop_stunt_ramp",
	"stt_prop_stunt_soccer_ball",
	"stt_prop_stunt_soccer_goal",
	"stt_prop_stunt_soccer_lball", 
	"stt_prop_stunt_target",
	"stt_prop_stunt_target_small",
	"stt_prop_stunt_track_bumps",
	"apa_prop_aptest",
	"ar_prop_ar_ammu_sign",
	"ar_prop_ar_checkpoint_crn02",
	"stt_prop_stunt_track_cutout",
	"02gate3_l",
	"ar_prop_ar_neon_gate4x_02a",
	"stt_prop_stunt_track_dwlink",
	"stt_prop_stunt_track_dwlink_02",
	"stt_prop_stunt_track_dwsh15",
	"stt_prop_stunt_track_dwshort",
	"stt_prop_stunt_track_dwslope15",
	"stt_prop_stunt_track_dwslope30",
	"stt_prop_stunt_track_dwslope45",
	"stt_prop_stunt_track_dwturn",
	"stt_prop_stunt_track_dwuturn",
	"stt_prop_stunt_track_exshort",
	"stt_prop_stunt_track_fork",
	"stt_prop_stunt_track_funlng", 
	"stt_prop_stunt_track_funnel",
	"stt_prop_stunt_track_hill", 
	"stt_prop_stunt_track_hill2",
	"stt_prop_stunt_track_jump",
	"stt_prop_stunt_track_link",
	"stt_prop_stunt_track_otake",
	"stt_prop_stunt_track_sh15",
	"stt_prop_stunt_track_sh30",
	"stt_prop_stunt_track_sh45",
	"stt_prop_stunt_track_sh45_a",
	"stt_prop_stunt_track_short",
	"stt_prop_stunt_track_slope15",
	"stt_prop_stunt_track_slope30",
	"stt_prop_stunt_track_slope45",
	"stt_prop_stunt_track_start",
	"stt_prop_stunt_track_start_02",
	"stt_prop_stunt_track_straight",
	"stt_prop_stunt_track_straightice",
	"stt_prop_stunt_track_st_01",
	"stt_prop_stunt_track_st_02",
	"stt_prop_stunt_track_turn",
	"stt_prop_stunt_tube_crn",
	"stt_prop_stunt_tube_crn2",
	"stt_prop_stunt_tube_cross",
	"stt_prop_stunt_tube_end",
	"stt_prop_stunt_tube_ent",
	"stt_prop_stunt_tube_fn_01",
	"stt_prop_stunt_tube_fork",
	"stt_prop_stunt_tube_speed",
	"stt_prop_stunt_tube_speeda",
	"stt_prop_stunt_tube_speedb",
	"stt_prop_stunt_wideramp",
	"xs_propintarena_structure_f_01a",
	"xs_propintarena_structure_f_02a",
	"xs_propintarena_structure_f_02b",
	"xs_propintarena_structure_f_02c",
	"xs_propintarena_structure_f_02d",
	"xs_propintarena_structure_f_02e",
	"xs_propintarena_structure_f_03a",
	"xs_propintarena_structure_f_03b",
	"xs_propintarena_structure_f_03c",
	"xs_propintarena_structure_f_03d",
	"xs_propintarena_structure_f_03e",
	"xs_propintarena_structure_f_04a",	
	"prop_med_jet_01",
	"apa_mp_h_kit_kitchen_01_b",
	"sr_prop_spec_tube_xxs_04a",
	"prop_box_wood06a",
	"hei_prop_carrier_radar_1_l1",
	"v_res_mexball",
	"prop_rock_1_a",
	"p_crahsed_heli_s",
	"prop_rock_4_big2",
	"prop_beachflag_le",
	"prop_weed_01",
	"blimp2",
	"jet",
	"sr_prop_spec_tube_xxs_01a",
	"ar_prop_ar_stunt_block_01a",
	"stt_prop_ramp_adj_flip_m",
	"prop_contnr_pile_01a",
	"ce_xr_ctr2",
	"hei_prop_carrier_jet",
	"stt_prop_stunt_tube_l",
	"stt_prop_ramp_adj_flip_mb",
	"stt_prop_ramp_adj_flip_s",
	"stt_prop_ramp_adj_flip_sb",
	"stt_prop_ramp_adj_hloop",
	"stt_prop_ramp_adj_loop",
	"stt_prop_ramp_jump_l",
	"stt_prop_ramp_jump_m",
	"stt_prop_ramp_jump_s",
	"stt_prop_ramp_jump_xl",
	"stt_prop_ramp_jump_xs",
	"stt_prop_ramp_jump_xxl",
	"stt_prop_ramp_multi_loop_rb",
	"stt_prop_ramp_spiral_l",
	"stt_prop_ramp_spiral_l_l",
	"stt_prop_ramp_spiral_l_m",
	"stt_prop_ramp_spiral_l_s",
	"stt_prop_ramp_spiral_l_xxl",
	"stt_prop_ramp_spiral_m",
	"stt_prop_ramp_spiral_s",
	"stt_prop_ramp_spiral_xxl",
	"prop_fnclink_05crnr1",
	"xs_prop_hamburgher_wl",
	"xs_prop_plastic_bottle_wl",
	"prop_windmill_01",
	"prop_beach_fire",
	"p_spinning_anus_s",
	"a_c_cat_01", "prop_mp_spike_01", "prop_tyre_spike_01", "prop_container_ld2", "lts_prop_lts_ramp_03", "prop_jetski_ramp_01", "prop_mp_ramp_03_tu", "prop_skate_flatramp_cr", "stt_prop_ramp_adj_loop", "stt_prop_ramp_multi_loop_rb", "stt_prop_ramp_spiral_l", "stt_prop_ramp_spiral_l_m", "prop_const_fence03b_cr", "prop_const_fence02b", "prop_const_fence03a_cr", "prop_fnc_farm_01e", "prop_fnccorgm_02c", "ch3_01_dino", "p_pallet_02a_s", "prop_conc_blocks01a", "hei_prop_cash_crate_half_full", "prop_consign_01a", "prop_byard_net02", "prop_mb_cargo_04b", "prop_mb_crate_01a_set", "prop_pipe_stack_01", "prop_roadcone01c", "prop_rub_cage01b", "prop_sign_road_01a", "prop_sign_road_03m", "prop_traffic_rail_2", "prop_traffic_rail_1a", "prop_traffic_03a", "prop_traffic_01d", "prop_skid_trolley_1", "hei_prop_yah_seat_03", "hei_prop_yah_table_03", "lts_prop_lts_elecbox_24", "lts_prop_lts_elecbox_24b", "p_airdancer_01_s", "p_amb_brolly_01", "p_amb_brolly_01_s", "p_dumpster_t", "p_ld_coffee_vend_01", "p_patio_lounger1_s", "p_yacht_sofa_01_s", "prop_air_bagloader2_cr", "prop_air_bigradar", "prop_air_blastfence_01", "prop_air_stair_01", "prop_air_sechut_01", "prop_airport_sale_sign"
}
Config.CarsBL = {
	"cargoplane",
	"cargobob",
	"cargobob2",
	"cargobob3",
	"cargobob4",
	"apc",
	"khanjali",
	"hydra",
	"lazer",
	"minitank",
	"scarab",
	"scarab2",
	"scarab3",
	"thruster",
	"rhino",
	"trailersmall2",
	"barrage",
	"halftrack",
	"akula",
	"technical",
	"technical2",
	"technical3",
	"nightshark",
	"blimp",
	"blimp2",
	"blimp3",
	"ztype",
	"armytanker",
	"armytrailer",
	"armytrailer2",
	"baletrailer",
	"boattrailer",
	"cablecar",
	"docktrailer",
	"freighttrailer",
	"graintrailer",
	"proptrailer",
	"raketrailer",
	"tr2",
	"tr3",
	"tr4",
	"trflat",
	"tvtrailer",
	"tanker",
	"tanker2",
	"trailerlarge",
	"trailerlogs",
	"trailersmall",
	"trailers",
	"trailers2",
	"trailers3",
	"trailers4",
	"freight",
	"freightcar",
	"freightcont1",
	"freightcont2",
	"freightgrain",
	"metrotrain",
	"tankercar",
	"alphaz1",
	"avenger",
	"avenger2",
	"bombushka",
	"cuban800",
	"microlight",
	"titan",
	"tula",
	"rogue",
	"duster",
	"mogul",
	"starling",
	"strikeforce"
}

Config.PEDBLACK = {
	"CSB_BallasOG",
	"MP_S_ARMOURED_01",
	"S_F_Y_Cop_01",
	"S_F_Y_Cop_02",
	"S_F_Y_Cop_03",
	"S_M_Y_Cop_01",
	"S_M_Y_Cop_02",
	"S_M_Y_Cop_03",
	"A_C_MtLion",
	"S_F_Y_Sheriff_01",
	"S_F_Y_Sheriff_02",
	"S_F_Y_Sheriff_03",
	"S_M_Y_Marine_01",
	"S_M_Y_Marine_02",
	"S_M_Y_Marine_03",
	"S_M_SECURITY_01",
	"S_M_SECURITY_02",
	"s_m_y_swat_01",
	"a_m_y_mexthug_01",
	"u_m_y_zombie_01",
	"S_M_SECURITY_03",
	"s_m_y_swat_01",
	"S_M_Y_ARMYMECH_01",
	"S_M_Y_ARMYMECH_02",
	"S_M_Y_ARMYMECH_03",
	"S_M_Y_BLACKOPS_01",
	"S_M_Y_BLACKOPS_02",
	 "S_M_Y_BLACKOPS_03"
}


Config.triggers = {

}
ConfigCS = {}
ConfigCS.ExplosionsList = {
	[0] = { name = "Grenade", log = false, ban = false },
	[1] = { name = "GrenadeLauncher", log = true, ban = true },
	[2] = { name = "C4", log = true, ban = false },
    [3] = { name = "Molotov", log = true, ban = true },
    [4] = { name = "Rocket", log = true, ban = true },
    [5] = { name = "TankShell", log = true, ban = true},
    [6] = { name = "Hi_Octane", log = false, ban = false },
    [7] = { name = "Car", log = false, ban = false },
    [8] = { name = "Plance", log = false, ban = false },
    [9] = { name = "PetrolPump", log = false, ban = false },
    [10] = { name = "Bike", log = false, ban = false },
    [11] = { name = "Dir_Steam", log = false, ban = false },
    [12] = { name = "Dir_Flame", log = false, ban = false },
    [13] = { name = "Dir_Water_Hydrant", log = false, ban = false },
    [14] = { name = "Dir_Gas_Canister", log = false, ban = false },
    [15] = { name = "Boat", log = false, ban = false },
    [16] = { name = "Ship_Destroy", log = false, ban = false },
    [17] = { name = "Truck", log = false, ban = false },
    [18] = { name = "Bullet", log = true, ban = true },
    [19] = { name = "SmokeGrenadeLauncher", log = true, ban = true },
    [20] = { name = "SmokeGrenade", log = false, ban = false },
    [21] = { name = "BZGAS", log = false, ban = false },
    [22] = { name = "Flare", log = false, ban = false },
    [23] = { name = "Gas_Canister", log = false, ban = false },
    [24] = { name = "Extinguisher", log = false, ban = false },
    [25] = { name = "Programmablear", log = false, ban = false },
    [26] = { name = "Train", log = true, ban = false },
    [27] = { name = "Barrel", log = false, ban = false },
    [28] = { name = "PROPANE", log = false, ban = false },
    [29] = { name = "Blimp", log = false, ban = false },
    [30] = { name = "Dir_Flame_Explode", log = false, ban = false },
    [31] = { name = "Tanker", log = false, ban = false },
    [32] = { name = "PlaneRocket", log = false, ban = false },
    [33] = { name = "VehicleBullet", log = false, ban = false },
    [34] = { name = "Gas_Tank", log = false, ban = false },
    [35] = { name = "FireWork", log = false, ban = false },
    [36] = { name = "SnowBall", log = true, ban = true },
    [37] = { name = "ProxMine", log = false, ban = false },
    [38] = { name = "Valkyrie_Cannon", log = true, ban = true }
}

-------------------------------------------------------------
------------------------Godzilla V 2------------------------
-------------------------------------------------------------


------------------------------------------------------------------------------------------------
