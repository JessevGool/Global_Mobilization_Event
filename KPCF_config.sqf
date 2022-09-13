/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Configuration file for various variables of the KP cratefiller.
*/

// The Base object is for the player interaction, so at these object you can open the dialog
KPCF_cratefillerBase = [
    "gm_ge_army_ammobox_everything_80"
];

// The Spawn object is the point where crates will spawn and acts the center for the KPCF_spawnRadius
KPCF_cratefillerSpawn = "Land_JumpTarget_F";

// This variable defines if the player will be able to spawn and delete crates
KPCF_canSpawnAndDelete = true;

// If set to "true" the item lists will be generated from the config
KPCF_generateLists = true;

// These variable defines the range where inventories can be edited
// Example: With an setting of 10 all objects in a radius of 10m from the center of the spawn object can be edited
KPCF_spawnRadius = 10;

// Defines the distance for the interaction (addAction / ACE)
KPCF_interactRadius = 5;

// Defines the available crates
KPCF_crates = [
    "gm_ge_army_ammobox_cache_80",
    "gm_ge_army_ammobox_smallarms_80"
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
    "gm_30Rnd_9x19mm_B_DM51_mp5_blk",
    
];

// ----- These Variables will be replaced with activated generatedLists -----

// Defines the available weapons
KPCF_weapons = [
    "gm_g3a4_grn",
    "gm_mg3_blk",
    "gm_mp5a2_blk",
    "gm_pzf44_2_oli",
    "gm_p1_blk",
    "gm_p2a1_blk"
];

// Defines the available grenades
KPCF_grenades = [
    "gm_handgrenade_frag_dm51",
    "gm_smokeshell_red_gc",
    "gm_smokeshell_grn_gc",
    "gm_smokeshell_wht_gc"
];

// Defines the available explosives
KPCF_explosives = [
    "gm_explosive_plnp_charge",
    "gm_explosive_petn_charge"
];

// Defines the available items
KPCF_items = [
    "ACE_packingBandage",
    "ACE_elasticBandage",
    "ACE_epinephrine",
    "ACE_salineIV_500",
    "ACE_morphine",
    "ACE_tourniquet",
    "ACE_Splint"
];

// Defines the available backpacks
KPCF_backpacks = [
    "gm_ge_army_backpack_80_oli"
];
