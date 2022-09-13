// Author: You
// Description: paste your loadout config from the arseanal exporter
#include "\x\cmf\addons\framework\loadouts\undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE
// Camo set
#define CAMO_UNIFORM "gm_gc_army_uniform_soldier_80_win"

#define CAMO_VEST "gm_gc_army_vest_80_rifleman_str"
#define CAMO_VEST_MG "gm_gc_army_vest_80_lmg_str"
#define CAMO_VEST_TL "gm_gc_army_vest_80_leader_str"
#define CAMO_VEST_AT "gm_gc_army_vest_80_at_str"
#define CAMO_VEST_CREW "gm_pl_army_vest_80_crew_gry"

#define CAMO_BACKPACK "gm_gc_army_backpack_80_assaultpack_empty_str"
#define CAMO_BACKPACK_MG "gm_gc_army_backpack_80_assaultpack_lmg_str"
#define CAMO_BACKPACK_AT "gm_gc_army_backpack_80_at_str"
#define CAMO_BACKPACK_SL "gm_gc_backpack_r105m_brn"

#define CAMO_HEADGEAR "gm_gc_army_headgear_m56_cover_win"

// Vehicle Crew Set 
#define CREW_HELMET "gm_gc_army_headgear_crewhat_80_blk"
#define CREW_UNIFORM "gm_gc_army_uniform_soldier_80_blk"
#define CREW_VEST "gm_pl_army_vest_80_crew_gry"
#define CREW_BACKPACK "gm_gc_backpack_r105m_brn"

// Pilot Set
#define PILOT_HELMET "gm_gc_headgear_zsh3_wht"
#define PILOT_UNIFORM "gm_pl_airforce_uniform_pilot_80_gry"
#define PILOT_BACKPACK "B_Battle_Belt_XL_F"

// Rifle
#define RIFLE "gm_akm_wud"
#define RIFLE_MAG "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk:10"
#define RIFLE_ATTACHMENTS "gm_bayonet_6x3_wud", "gm_zvn64_front", "gm_zvn64_rear_ak"

// GL Rifle
#define GLRIFLE "gm_akm_pallad_wud"
#define GLRIFLE_MAG "gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk:10"
#define GLRIFLE_MAG_FLARE "UGL_FlareYellow_F:4"
#define GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:4","1Rnd_SmokeRed_Grenade_shell:2",GLRIFLE_MAG_FLARE
#define GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:4"

// Carbine
#define CARBINE "gm_mpiak74n_brn"
#define CARBINE_MAG "gm_30Rnd_545x39mm_B_T_7T3_ak74_org:10"

// AR
#define AR "gm_lmgrpk74n_brn"
#define AR_ATTACHMENTS "gm_zvn64_front", "gm_zvn64_rear_rpk"
#define AR_MAG "gm_45Rnd_545x39mm_B_T_7T3_ak74_org:12"

// AT
#define AT "gm_rpg7_wud"
#define AT_MAG "gm_1Rnd_40mm_heat_pg7v_rpg7:2"

// MMG
#define MMG "gm_hmgpkm_prp"
#define MMG_MAG "gm_100Rnd_762x54mmR_B_T_7t2_pk_grn:5"
#define MMG_ATT ""

// MAT
#define MAT "gm_rpg7_wud"
#define MAT_MAG "gm_1Rnd_40mm_heat_pg7vl_rpg7:2"
#define MAT_MAG2 "gm_1Rnd_40mm_heat_pg7vl_rpg7:2"
#define MAT_OPTIC "gm_pgo7v_blk"

// Facewear
#define GOG 

// -------------------- PASTE ABOVE THIS LINE
//HMG
#define HMG "ace_cswCompatCUP_cup_m2"
#define HMG_TRI_HI "ace_csw_m3CarryTripod"
#define HMG_TRI_LO "ace_csw_m3CarryTripodLow"
#define HMG_MAG "ace_csw_100Rnd_127x99_mag:3"
//HAT
#define HAT "gm_fagot_launcher_weaponBag"
// SAM
#define SAM "gm_9k32m_oli"
#define SAM_MAG "gm_1Rnd_72mm_he_9m32m:3"
#define SAM_MAG2 "gm_1Rnd_72mm_he_9m32m:2"
// Sniper Rifle
#define SNIPER "gm_svd_wud"
#define SNIPER_MAG "gm_10Rnd_762x54mmR_AP_7N1_svd_blk:10"
#define SNIPER_ATTACHMENTS "gm_pso1_gry"
// Spotter Rifle
#define SPOTTER "gm_akmn_wud"
#define SPOTTER_MAG "gm_30Rnd_762x39mm_AP_7N23_ak47_blk:10"
#define SPOTTER_ATTACHMENTS "gm_zfk4x25_blk"
// SMG
#define SMG CARBINE "gm_pm63_blk"
#define SMG_MAG CARBINE_MAG "gm_25Rnd_9x18mm_B_pst_pm63_blk:10"
// Pistol
#define PISTOL "gm_pm_blk"
#define PISTOL_MAG "gm_8Rnd_9x18mm_B_pst_pm_blk:3"
// Grenades
#define LEADER_GRENADES BASE_FRAG_OPF,LEADER_SMOKES_OPF,SIDE_CHEM_LIGHT
// Gear
#define TOOLS BASE_TOOLS
#define LEADER_TOOLS BASE_LEADER_TOOLS,SIDE_KEY
#define LINKED BASE_LINKED
#define LEADER_LINKED BASE_LEADER_LINKED
#define CARRYALL "B_Carryall_mcamo"
#define GOG

// Specialized Resupply Vehicle Loadouts
// Ammo Truck
class RHS_Ural_Flat_MSV_01 {
	TransportWeapons[] = {AT,AT,AT};
	TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,CARBINE_MAG,GLRIFLE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,AR_MAG,AR_MAG,MMG_MAG,MMG_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE,MAT_MAG,BASE_GRENADES,BASE_GRENADES,BASE_GRENADES,BASE_GRENADES};
	TransportItems[] = {TOOLKIT};
};

class Car {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Tank {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Helicopter {
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Plane {};
class Ship_F {};

// ====================
// uniform[] = {};                 Uniform/clothes
// vest[] = {};                    Vest/Plate Carrier/Harness/Chest rig
// headgear[] = {};                Helmets, Hats
// backpack[] = {};                Backpack
// goggles[] = {};                 Facewear
// weapons[] = {};                 Primary weapons (Rifles, MGs, DMRs etc)
// handguns[] = {};                Pistols, machine-pistols etc
// launchers[] = {};               AT/AA launchers
// magazines[] = {};               Magazines. Includes grenades, and can include specific explosives such as mines and demo blocks.
// items[] = {};                   Misc items, eg. Explosive detonators, wire cutters etc
// backpackItems[] = {};           Items sent to backpack. Can include weapons, magazines and probably a lot of other things.
// linkedItems[] = {};             Items that go in the linked slots: NVGs, Map, Compass, Watch, Binoculars, Rangefinders, GPS/UAV terminal
// attachments[] = {};             Primary weapon attachments.
// secondaryAttachments[] = {};    Launcher attachments
// handgunAttachments[] = {};      Sidearm attachments
// opticChoices[] = {};            List of optics that can be chosen by this class during safestart. Automatically included by arsenal exporter, so scroll back up and add some for the love of god.
// ====================

// Base Classes
class rifleman {// rifleman
  uniform[] = {CAMO_UNIFORM};
  vest[] = {CAMO_VEST};
  headgear[] = {CAMO_HEADGEAR};
  backpack[] = {CAMO_BACKPACK};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,BASE_GRENADES_OPF};
  items[] = {TOOLS};
  linkedItems[] = {LINKED};
  attachments[] = {RIFLE_ATTACHMENTS};
  opticChoices[] = {ALT_OPTICS};
//  goggles[] = {GOG};
  face[] = {F_RUS};
};
class Fic_Soldier_Carbine: rifleman {// carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,BASE_GRENADES_OPF};
};


//Leadership
class ftl: rifleman {// FTL
  vest[] = {CAMO_VEST_TL};
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED,BINOS};
};
class sl: ftl {// SL
  backpack[] = {CAMO_BACKPACK_SL}
  handguns[] = {PISTOL};
  magazines[] += {PISTOL_MAG};
  linkedItems[] = {LINKED,LEADER_LINKED};
  items[] += {};
};
class plt: sl {// Platoon Leader
};
class coy: plt {// CO and PL
};
class xo: coy {// XO
};
class sgt: plt {// Platoon Sergeant
};
class uav: rifleman { //UAV
  backpack[] = {SIDE_UAV_BACKPACK};
  linkedItems[] += {SIDE_UAV_TERMINAL};
};
class fac: coy {// FAC
  magazines[] = {GLRIFLE_MAG,SIDE_FAC_GRENADES,PISTOL_MAG};
  linkedItems[] = {LINKED,LEADER_LINKED};
};


//Medics
class sm: Fic_Soldier_Carbine {// Medic
  magazines[] = {CARBINE_MAG,MEDIC_GRENADES_OPF};
  backpackItems[] = {MEDIC_MEDICAL};
  items[] += {};
};
class plm: sm {// Platoon Medic
};
class cm: plm {// Company Medic
};


//Infantry
class ar: rifleman {// AR
  weapons[] = {AR};
  magazines[] = {AR_MAG,PISTOL_MAG,BASE_GRENADES_OPF};
  handguns[] = {PISTOL};
};
class aar: rifleman {// AAR
  backpackItems[] += {AR_MAG};
  linkedItems[] += {BINOS};
};
class lat: Fic_Soldier_Carbine {// RAT
  magazines[] += {AT_MAG};
  launchers[] = {AT};
};
class rifleman_02: rifleman {// Grenadier
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,BASE_GRENADES_OPF};
};


//Weapons Teams
class Fic_Spotter: rifleman { //Base Spotter
  linkedItems[] += {RANGE_FINDER};
};

//MMG
class mmgl: sl {// MMG Lead
  backpack[] = {CAMO_BACKPACK_MG};
  magazines[] += {MMG_MAG};
};
class mmgg: ar {// MMG Gunner
  weapons[] = {MMG};
  magazines[] = {MMG_MAG,PISTOL_MAG,BASE_GRENADES_OPF};
  attachments[] = {};
};
class mmgag: Fic_Spotter {// MMG Spotter/Ammo Bearer
  backpackItems[] += {MMG_MAG};
};

//MAT
class matl: sl {// MAT Lead
  backpack[] = {CAMO_BACKPACK_AT};
  magazines[] += {MAT_MAG};
};
class matg: Fic_Soldier_Carbine {// MAT Gunner
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
  launchers[] = {MAT};
  secondaryAttachments[] = {MAT_OPTIC};
};
class matag: Fic_Spotter {// MAT Spotter/Ammo Bearer
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
};

//HMG
class hmgl: sl {// HMG Lead
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,LEADER_GRENADES,PISTOL_MAG,HMG_MAG};
  backpack[] = {CARRYALL};
  launchers[] = {HMG_TRI_LO};
  items[] += {BASE_BALLISTICS};
};
class hmgg: rifleman {// HMG Gunner
  backpack[] = {CARRYALL};
  magazines[] += {HMG_MAG};
  launchers[] = {HMG};
};
class hmgag: rifleman {// HMG Spotter
  backpack[] = {CARRYALL};
  magazines[] += {HMG_MAG};
  launchers[] = {HMG_TRI_HI};
  items[] += {BASE_BALLISTICS};
};

//HAT
class hatl: sl {// HAT Lead
  weapons[] = {RIFLE};
  backpackItems[] = {};
  magazines[] = {RIFLE_MAG,LEADER_GRENADES,PISTOL_MAG};
  items[] += {BASE_MEDICAL};
};
class hatg: rifleman {// HAT Gunner
  backpack[] = {HAT};
  magazines[] += {HAT_MAG};
};
class hatag: rifleman {// HAT Spotter
  backpack[] = {CARRYALL};
  magazines[] += {HAT_MAG};
  launchers[] = {HAT_TRI_HI};
};

//SAM
class msaml: sl {// SAM Lead
  backpack[] = {CAMO_BACKPACK};
  magazines[] += {SAM_MAG2};
};
class msamg: Fic_Soldier_Carbine {// SAM Gunner
  SAM_GEAR(CARRYALL, SAM_MAG)
  launchers[] = {SAM};
};
class msamag: Fic_Spotter {// SAM Spotter/Ammo Bearer
  SAM_GEAR(CARRYALL, SAM_MAG2)
};

//Mortar
class mtrl: sl {// Mortar Lead
  items[] += {BASE_ARTILLERY};
};
class mtrg: Fic_Soldier_Carbine {// Mortar Gunner
  MORTAR_GEAR("B_Mortar_01_weapon_F")
};
class mtrag: Fic_Spotter {// Assistant Mortar
  MORTAR_GEAR("B_Mortar_01_support_F")
};

//Artillery
class artl: sl {// Artillery Leader
  backpack[] = {CARRYALL};
  backpackItems[] += {BASE_ARTILLERY};
};
class artg: rifleman {// Artillery Gunner
  backpackItems[] += {BASE_ARTILLERY};
};

//Sniper Team
class spotter: Fic_Spotter {// Spotter
  weapons[] = {SPOTTER};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES_OPF};
  items[] += {};
  linkedItems[] += {LEADER_LINKED};
  attachments[] = {SPOTTER_ATTACHMENTS};
};
class sniper: spotter {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,BASE_GRENADES_OPF};
  items[] = {TOOLS,"ACE_RangeCard"};
  linkedItems[] = {LINKED};
  attachments[] = {SNIPER_ATTACHMENTS};
};


// Air
class pilot {// Pilot
  uniform[] = {PILOT_UNIFORM};
  backpack[] = {PILOT_BACKPACK};
  vest[] = {CAMO_VEST_CREW};
  headgear[] = {PILOT_HELMET};
  weapons[] = {SMG};
  magazines[] = {SMG_MAG,CREW_GRENADES_OPF};
  backpackItems[] = {SIDE_KEY,RADIO_LR};
  items[] = {BASE_MEDICAL,TOOLS,LEADER_TOOLS,RADIO_MR};
  linkedItems[] = {LINKED,LEADER_LINKED};
};
class helicrew: pilot {// Aircrew
  backpackItems[] = {"gm_repairkit_01",SIDE_KEY};
};
class cc: helicrew {// Crew Chief
  backpackItems[] += {RADIO_MR};
};


//Armor
class vicc: Fic_Soldier_Carbine {// Crew
  magazines[] = {CARBINE_MAG,CREW_GRENADES_OPF};
  backpackItems[] = {SIDE_KEY,RADIO_LR,RADIO_MR};
  linkedItems[] = {LINKED,LEADER_LINKED,BINOS};
  items[] += {BASE_MEDICAL};
};
class vicd: vicc {// Repair Specialist
  backpackItems[] = {"gm_repairkit_01",RADIO_MR,SIDE_KEY};
  linkedItems[] = {LINKED,LEADER_LINKED};
};
class vicl: vicc {// Vehicle Commander
};


//Support Teams
class Fic_eng: Fic_Soldier_Carbine { // Base ENG
  magazines[] = {CARBINE_MAG,CREW_GRENADES_OPF};
  linkedItems[] = {LINKED,LEADER_LINKED};
  items[] += {BASE_ENG,BASE_MEDICAL};
  backpackItems[] = {};
};

//Demo
class demol: Fic_eng {// Demolitions Leader
  magazines[] += {BASE_EXP};
  backpackItems[] = {RADIO_MR,"gm_repairkit_01"};
};
class demo: Fic_eng {// Explosive Specialist
  magazines[] += {BASE_EXP};
};
class mine: Fic_eng {// Mine Specialist
  magazines[] += {BASE_MINE};
  handguns[] = {MINE_DETECTOR};
};

class eng: fic_eng {// Logistics Engineer
  backpackItems[] = {"gm_repairkit_01","ACE_EntrenchingTool","ACE_wirecutter"};
};
class engl: eng {// Logistics Leader
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED,BINOS};
  backpackItems[] += {RADIO_MR};
};
class fallback: rifleman {}; // This means any faction member who doesn't match something will use this loadout
