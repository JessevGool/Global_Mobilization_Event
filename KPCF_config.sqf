/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Configuration file for various variables of the KP cratefiller.
*/

// The Base object is for the player interaction, so at these object you can open the dialog
KPCF_cratefillerBase = [
    "gm_ammobox_pile_large_02_empty"
];

// The Spawn object is the point where crates will spawn and acts the center for the KPCF_spawnRadius
KPCF_cratefillerSpawn = "Land_JumpTarget_F";

// This variable defines if the player will be able to spawn and delete crates
KPCF_canSpawnAndDelete = true;

// If set to "true" the item lists will be generated from the config
KPCF_generateLists = false;

// These variable defines the range where inventories can be edited
// Example: With an setting of 10 all objects in a radius of 10m from the center of the spawn object can be edited
KPCF_spawnRadius = 10;

// Defines the distance for the interaction (addAction / ACE)
KPCF_interactRadius = 5;

// Defines the available crates
KPCF_crates = [
    "gm_gc_army_ammobox_cache_80",
    "gm_gc_army_ammobox_smallarms_80",
    "Land_PaperBox_01_small_closed_brown_F"
];


// Defines the blacklisted items
// Blacklisted items are used on every category with activated generatedLists and everytime on the magazines and attachments
// So this variable will ensure the block of unwanted items
KPCF_blacklistedItems = [
    ""
];

// ----- This Variable will only be used with activated generatedLists -----

// Defines the whitelisted items
// Whitelisted items will be added after the item detection to ensure the availability
KPCF_whitelistedItems = [
    "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk",
    "1Rnd_HE_Grenade_shell",
    "1Rnd_Smoke_Grenade_shell",
    "1Rnd_SmokeRed_Grenade_shell",
    "UGL_FlareYellow_F",
    "gm_30Rnd_545x39mm_B_T_7T3_ak74_org",
    "gm_100Rnd_762x54mmR_B_T_7t2_pk_grn",
    "gm_1Rnd_40mm_heat_pg7vl_rpg7",
    "gm_75Rnd_762x39mm_B_57N231_ak47_blk",
    "CUP_launch_RPG18",
    "gm_10Rnd_762x54mmR_AP_7N1_svd_blk",
    "gm_1Rnd_265mm_flare_single_wht_gc",
    "gm_1Rnd_265mm_flare_single_red_gc",
    "gm_8Rnd_9x18mm_B_pst_pm_blk"
    
];

// ----- These Variables will be replaced with activated generatedLists -----

// Defines the available weapons
KPCF_weapons = [
    "gm_akm_wud",
    "gm_akm_pallad_wud",
    "gm_mpiak74n_brn",
    "gm_hmgpkm_prp",
    "gm_rpg7_wud",
    "gm_mpikms72_brn",
    "gm_lmgrpk_brn",
    "CUP_launch_RPG18",
    "gm_svd_wud",
    "gm_lp1_blk",
    "gm_pm_blk"
];

// Defines the available grenades
KPCF_grenades = [
    "gm_handgrenade_frag_rgd5",
    "SmokeShell",
    "SmokeShellGreen",
    "SmokeShellRed",
    "ACE_HandFlare_White",
    "ACE_HandFlare_Red",
    "ACE_HandFlare_Green"
];

// Defines the available explosives
KPCF_explosives = [
    
];

// Defines the available items
KPCF_items = [
    "ACE_packingBandage",
    "ACE_elasticBandage",
    "ACE_splint",
    "ACE_tourniquet",
    "ACE_plasmaIV_250",
    "ACE_plasmaIV_500",
    "ACE_plasmaIV_1000",
    "ACE_salineIV_250",
    "ACE_salineIV_500",
    "ACE_salineIV_1000",
    "ACE_morphine",
    "ACE_epinephrine",
    "ACE_adenosine",
    "gm_repairkit_01",
    "CUP_compats_122mm_he",
    "CUP_compats_122mm_illum",
    "CUP_compats_122mm_smoke"
];

// Defines the available backpacks
KPCF_backpacks = [
    "gm_gc_army_backpack_80_assaultpack_empty_str"
];
