// Author: You
// Description: paste your loadout config from the arseanal exporter
#include "\x\cmf\addons\framework\loadouts\undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE
// Camo set
#define CAMO_UNIFORM "gm_ge_army_uniform_soldier_parka_80_ols", "gm_ge_army_uniform_soldier_parka_80_oli"
#define SF_CAMO_UNIFORM "gm_ge_army_uniform_soldier_parka_80_win"

#define CAMO_VEST "gm_ge_army_vest_80_rifleman"
#define CAMO_VEST_TL "gm_ge_army_vest_80_leader"
#define CAMO_VEST_MG "gm_ge_army_vest_80_machinegunner"
#define CAMO_VEST_CREW "gm_ge_army_vest_80_crew"
#define CAMO_VEST_MEDIC "gm_ge_army_vest_80_medic"

#define CAMO_BACKPACK "gm_ge_army_backpack_80_oli"
#define CAMO_HEADGEAR "gm_ge_headgear_m62_cover_win", "gm_ge_headgear_m62_win_pap_01"

// Vehicle crew
#define CREW_UNIFORM "gm_ge_army_uniform_crew_80_oli"
#define CREW_VEST "gm_ge_army_vest_80_crew"
#define CREW_HELMET "gm_ge_headgear_crewhat_80_blk"
// Rifle
#define RIFLE "gm_g3a4_grn"
#define RIFLE_MAG "gm_20Rnd_762x51mm_B_T_DM21_g3_blk:4"
#define RIFLE_ATTACHMENTS ""
#define AR_ATTACHMENTS RIFLE_ATTACHMENTS, ""
#define ALT_OPTICS "optic_Aco", "CUP_optic_CompM2_Black", "CUP_optic_TrijiconRx01_black", "CUP_optic_MRad", STANAG_OPTICS, WARSAW_OPTICS
// GL Rifle
#define GLRIFLE "gm_g3a4_grn"
#define GLRIFLE_MAG "gm_20Rnd_762x51mm_B_T_DM21_g3_blk:4"

// Grenadier uses a rifle fired grenade, which means no flares or smokes
#define GLRIFLE_MAG_FLARE ""
#define GLRIFLE_MAG_SMOKE ""
#define GLRIFLE_MAG_HE "gm_1rnd_67mm_heat_dm22a1_g3:3"
// Carbine
#define CARBINE "gm_mp5a2_blk"
#define CARBINE_MAG "gm_30Rnd_9x19mm_B_DM51_mp5_blk:4"
// AR
#define AR "gm_mg3_blk"
#define AR_MAG "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn:3"
// AT
#define AT "gm_pzf44_2_win"
#define AT_MAG "gm_1Rnd_44x537mm_heat_dm32_pzf44_2:1"
#define AT_OPTIC "gm_feroz2x17_pzf44_2_win"
// MMG
#define MMG "gm_mg3_blk"
#define MMG_MAG "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn:3"
#define MMG_ATT ""
// MAT
#define MAT "gm_pzf84_win"
#define MAT_MAG "gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf:2"
#define MAT_MAG2 "gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf:2"
#define MAT_OPTIC "gm_feroz2x17_pzf84_win"
// Facewear
#define GOG ""

// -------------------- PASTE ABOVE THIS LINE
// HMG
#define HMG "ace_csw_staticM2ShieldCarry"
#define HMG_TRI_HI "ace_csw_m3CarryTripod"
#define HMG_TRI_LO "ace_csw_m3CarryTripodLow"
#define HMG_MAG "ace_csw_100Rnd_127x99_mag:3"
// HAT
#define HAT "gm_milan_launcher_weaponBag"
// SAM
#define SAM "gm_fim43_oli"
#define SAM_MAG "gm_1Rnd_70mm_he_m585_fim43:3"
#define SAM_MAG2 "gm_1Rnd_70mm_he_m585_fim43:2"
// Sniper Rifle
#define SNIPER "gm_g3a3_dmr_oli"
#define SNIPER_MAG RIFLE_MAG
#define SNIPER_ATTACHMENTS "gm_feroz24_blk", "bipod_01_f_blk"
// Spotter Rifle
#define SPOTTER "gm_g3a3_dmr_oli"
#define SPOTTER_MAG RIFLE_MAG
#define SPOTTER_ATTACHMENTS "gm_feroz24_blk", "bipod_01_f_blk"
// SMG
#define SMG CARBINE
#define SMG_MAG CARBINE_MAG
// Pistol
#define PISTOL "gm_p1_blk"
#define PISTOL_MAG "gm_8Rnd_9x19mm_B_DM11_p1_blk:3"
// FLARE PISTOL
#define FLARE_PISTOL "gm_p2a1_blk"
#define FLARE_PISTOL_MAG "gm_1Rnd_265mm_flare_single_wht_DM15:4","gm_1Rnd_265mm_flare_multi_yel_DM20:2","gm_1Rnd_265mm_smoke_single_blk_gc:6","gm_1Rnd_265mm_smoke_single_org_DM22:3"
// Grenades
#define LEADER_GRENADES BASE_FRAG_BLU, LEADER_SMOKES_BLU
// Gear
#define TOOLS BASE_TOOLS
#define LEADER_TOOLS BASE_LEADER_TOOLS, SIDE_KEY
#define LINKED BASE_LINKED
#define LEADER_LINKED BASE_LEADER_LINKED
#define CARRYALL "gm_ge_army_backpack_80_oli"
#define GOG

// Ammo
#define AMMO_RIFLE "gm_20Rnd_762x51mm_B_T_DM21_g3_blk:200"
#define AMMO_AR "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn:75"
#define AMMO_AT "gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf:30"
#define AMMO_GL "gm_1rnd_67mm_heat_dm22a1_g3:50"
#define AMMO_GRENADE "gm_handgrenade_frag_dm51:30" , "SmokeShell:50"
#define AMMO_MEDICAL "ACE_packingBandage:200","ACE_elasticBandage:200","ACE_splint:20"
#define AMMO_FLARE "gm_1Rnd_265mm_flare_single_wht_DM15:50","gm_1Rnd_265mm_flare_multi_yel_DM20:25","gm_1Rnd_265mm_smoke_single_blk_gc:50","gm_1Rnd_265mm_smoke_single_org_DM22:25"

// Specialized Resupply Vehicle Loadouts
// Ammo Truck
class gm_ge_army_kat1_451_reammo
{
  TransportMagazines[] = {RIFLE_MAG, RIFLE_MAG, RIFLE_MAG, RIFLE_MAG, GLRIFLE_MAG, GLRIFLE_MAG, AR_MAG, AR_MAG, AR_MAG, AR_MAG, MMG_MAG, MMG_MAG, AT_MAG, AT_MAG, AT_MAG, GLRIFLE_MAG_HE, GLRIFLE_MAG_HE, GLRIFLE_MAG_SMOKE, GLRIFLE_MAG_SMOKE, MAT_MAG, BASE_GRENADES_BLU, BASE_GRENADES_BLU, BASE_GRENADES_BLU, BASE_GRENADES_BLU};
  TransportItems[] = {"gm_repairkit_01"};
};

class Car
{
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG, RIFLE_MAG, CARBINE_MAG, GLRIFLE_MAG, AR_MAG, AR_MAG, GLRIFLE_MAG_HE, GLRIFLE_MAG_SMOKE, GLRIFLE_MAG_SMOKE, AT_MAG};
  TransportItems[] = {BASE_MEDICAL, BASE_MEDICAL, BASE_MEDICAL, BASE_MEDICAL};
};
class Tank
{
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG, RIFLE_MAG, CARBINE_MAG, GLRIFLE_MAG, AR_MAG, AR_MAG, GLRIFLE_MAG_HE, GLRIFLE_MAG_SMOKE, GLRIFLE_MAG_SMOKE,AT_MAG};
  TransportItems[] = {BASE_MEDICAL, BASE_MEDICAL, BASE_MEDICAL, BASE_MEDICAL};
};
class Helicopter
{
  TransportMagazines[] = {RIFLE_MAG, RIFLE_MAG, CARBINE_MAG, GLRIFLE_MAG, AR_MAG, AR_MAG, GLRIFLE_MAG_HE, GLRIFLE_MAG_SMOKE, GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL, BASE_MEDICAL, BASE_MEDICAL, BASE_MEDICAL};
};
class Plane
{
};
class Ship_F
{
};

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
class rifleman
{ // rifleman
  uniform[] = {CAMO_UNIFORM};
  vest[] = {CAMO_VEST};
  headgear[] = {CAMO_HEADGEAR};
  backpack[] = {CAMO_BACKPACK};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG, BASE_GRENADES_BLU};
  items[] = {TOOLS};
  linkedItems[] = {LINKED};
  attachments[] = {RIFLE_ATTACHMENTS};
  opticChoices[] = {ALT_OPTICS};
  //  goggles[] = {GOG};
  face[] = {F_USA};
};
class Fic_Soldier_Carbine : rifleman
{ // carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG, BASE_GRENADES_BLU};
};

// Leadership
class ftl : rifleman
{ // FTL
  vest[] = {CAMO_VEST_TL};
  weapons[] = {GLRIFLE};
  handguns[] = {FLARE_PISTOL};
  magazines[] = {GLRIFLE_MAG, GLRIFLE_MAG_HE, FLARE_PISTOL_MAG, LEADER_GRENADES};
  items[] += {LEADER_TOOLS, RADIO_SR};
  linkedItems[] += {LEADER_LINKED, BINOS};
};
class sl : ftl
{ // SL
  linkedItems[] = {LINKED, LEADER_LINKED};
  items[] += {RADIO_MR};
};
class plt : sl
{ // Platoon Leader
  items[] += {RADIO_LR};
};
class coy : plt
{ // CO and PL
};
class xo : coy
{ // XO
};
class sgt : plt
{ // Platoon Sergeant
};
class uav : rifleman
{ // UAV
  backpack[] = {SIDE_UAV_BACKPACK};
  linkedItems[] += {SIDE_UAV_TERMINAL};
};
class fac : coy
{ // FAC
  magazines[] = {GLRIFLE_MAG, SIDE_FAC_GRENADES, PISTOL_MAG};
  linkedItems[] = {LINKED, LEADER_LINKED};
};

// Medics
class sm : Fic_Soldier_Carbine
{ // Medic
  vest[] = {CAMO_VEST_MEDIC};
  magazines[] = {CARBINE_MAG, MEDIC_GRENADES_BLU};
  backpackItems[] = {MEDIC_MEDICAL, RADIO_LR};
  items[] += {RADIO_SR};
};
class plm : sm
{ // Platoon Medic
  items[] += {RADIO_MR};
};
class cm : plm
{ // Company Medic
};

// Infantry
class ar : rifleman
{ // AR
  vest[] = {CAMO_VEST_MG};
  weapons[] = {AR};
  magazines[] = {AR_MAG, PISTOL_MAG, BASE_GRENADES_BLU};
  handguns[] = {PISTOL};
};
class aar : rifleman
{ // AAR
  backpackItems[] += {AR_MAG};
  linkedItems[] += {BINOS};
};
class lat : rifleman
{ // RAT
  magazines[] += {MAT_MAG};
  launchers[] = {MAT};
  secondaryAttachments[] = {MAT_OPTIC};
};
class rifleman_02 : rifleman
{ // Grenadier
  weapons[] = {GLRIFLE};
  handguns[] = {FLARE_PISTOL};
  magazines[] = {GLRIFLE_MAG, GLRIFLE_MAG_HE, FLARE_PISTOL_MAG, BASE_GRENADES_BLU};
};

// Weapons Teams
class Fic_Spotter : rifleman
{ // Base Spotter
  linkedItems[] += {RANGE_FINDER};
};

// MMG
class mmgl : sl
{ // MMG Lead
  backpack[] = {CARRYALL};
  magazines[] += {MMG_MAG};
};
class mmgg : ar
{ // MMG Gunner
  weapons[] = {MMG};
  magazines[] = {MMG_MAG, PISTOL_MAG, BASE_GRENADES_BLU};
  attachments[] = {};
};
class mmgag : Fic_Spotter
{ // MMG Spotter/Ammo Bearer
  backpack[] = {CARRYALL};
  backpackItems[] += {MMG_MAG};
};

// MAT
class matl : sl
{ // MAT Lead
  backpack[] = {CARRYALL};
  magazines[] += {MAT_MAG};
};
class matg : Fic_Soldier_Carbine
{ // MAT Gunner
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
  launchers[] = {MAT};
  secondaryAttachments[] = {MAT_OPTIC};
};
class matag : Fic_Spotter
{ // MAT Spotter/Ammo Bearer
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
};

// HMG
class hmgl : sl
{ // HMG Lead
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG, LEADER_GRENADES, PISTOL_MAG, HMG_MAG};
  backpack[] = {CARRYALL};
  launchers[] = {HMG_TRI_LO};
  items[] += {BASE_BALLISTICS};
};
class hmgg : rifleman
{ // HMG Gunner
  backpack[] = {CARRYALL};
  magazines[] += {HMG_MAG};
  launchers[] = {HMG};
};
class hmgag : rifleman
{ // HMG Spotter
  backpack[] = {CARRYALL};
  magazines[] += {HMG_MAG};
  launchers[] = {HMG_TRI_HI};
  items[] += {BASE_BALLISTICS};
};

// HAT
class hatl : sl
{ // HAT Lead
  weapons[] = {RIFLE};
  backpackItems[] = {};
  magazines[] = {RIFLE_MAG, LEADER_GRENADES, PISTOL_MAG};
  backpack[] = {CARRYALL};
  items[] += {BASE_MEDICAL};
};
class hatg : rifleman
{ // HAT Gunner
  backpack[] = {HAT};
};
class hatag : rifleman
{ // HAT Spotter
  backpack[] = {CARRYALL};
};

// SAM
class msaml : sl
{ // SAM Lead
  backpack[] = {CARRYALL};
  magazines[] += {SAM_MAG2};
};
class msamg : Fic_Soldier_Carbine
{ // SAM Gunner
  SAM_GEAR(CARRYALL, SAM_MAG)
  launchers[] = {SAM};
};
class msamag : Fic_Spotter
{ // SAM Spotter/Ammo Bearer
  SAM_GEAR(CARRYALL, SAM_MAG2)
};

// Mortar
class mtrl : sl
{ // Mortar Lead
  items[] += {BASE_ARTILLERY};
};
class mtrg : Fic_Soldier_Carbine
{ // Mortar Gunner
  MORTAR_GEAR("B_Mortar_01_weapon_F")
};
class mtrag : Fic_Spotter
{ // Assistant Mortar
  MORTAR_GEAR("B_Mortar_01_support_F")
};

// Artillery
class artl : sl
{ // Artillery Leader
  backpack[] = {CARRYALL};
  backpackItems[] += {BASE_ARTILLERY};
};
class artg : rifleman
{ // Artillery Gunner
  backpackItems[] += {BASE_ARTILLERY};
};

// Sniper Team
class spotter : Fic_Spotter
{ // Spotter
  weapons[] = {SPOTTER};
  magazines[] = {SPOTTER_MAG, BASE_GRENADES_BLU};
  items[] += {RADIO_MR, "ACE_RangeCard"};
  linkedItems[] += {LEADER_LINKED};
  attachments[] = {SPOTTER_ATTACHMENTS};
};
class sniper : spotter
{ // Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG, BASE_GRENADES_BLU};
  items[] = {TOOLS, "ACE_RangeCard"};
  linkedItems[] = {LINKED};
  attachments[] = {SNIPER_ATTACHMENTS};
};

// Air
class pilot
{ // Pilot
  uniform[] = {"gm_ge_army_uniform_pilot_oli"};
  backpack[] = {"B_Battle_Belt_F"};
  vest[] = {"gm_ge_army_vest_pilot_oli"};
  headgear[] = {"gm_ge_headgear_sph4_oli"};
  weapons[] = {SMG};
  magazines[] = {SMG_MAG, CREW_GRENADES_BLU};
  backpackItems[] = {SIDE_KEY, RADIO_LR};
  items[] = {BASE_MEDICAL, TOOLS, LEADER_TOOLS, RADIO_MR, SIDE_KEY, RADIO_LR};
  linkedItems[] = {LINKED, LEADER_LINKED};
};
class helicrew : pilot
{ // Aircrew
  backpackItems[] = {"gm_repairkit_01", SIDE_KEY};
};
class cc : helicrew
{ // Crew Chief
  backpackItems[] += {RADIO_MR};
};

// Armor
class vicc : Fic_Soldier_Carbine
{ // Crew
  uniform[] = {CREW_UNIFORM};
  headgear[] = {CREW_HELMET};
  vest[] = {CAMO_VEST_CREW};
  magazines[] = {CARBINE_MAG, CREW_GRENADES_BLU};
  backpackItems[] = {SIDE_KEY, RADIO_LR, RADIO_SR};
  linkedItems[] = {LINKED, LEADER_LINKED, BINOS};
  items[] += {BASE_MEDICAL};
};
class vicd : vicc
{ // Repair Specialist
  backpackItems[] = {"gm_repairkit_01", SIDE_KEY};
  linkedItems[] = {LINKED, LEADER_LINKED};
};
class vicl : vicc
{ // Vehicle Commander
  headgear[] = {"gm_ge_headgear_beret_crew_blk_armor"};
};

// Support Teams
class Fic_eng : Fic_Soldier_Carbine
{ // Base ENG
  magazines[] = {CARBINE_MAG, CREW_GRENADES_BLU};
  linkedItems[] = {LINKED, LEADER_LINKED};
  items[] += {BASE_ENG, BASE_MEDICAL};
  backpackItems[] = {};
};

// Demo
class demol : Fic_eng
{ // Demolitions Leader
  vest[] = {CAMO_VEST_TL};
  magazines[] += {BASE_EXP};
  backpackItems[] = {RADIO_LR, "gm_repairkit_01"};
};
class demo : Fic_eng
{ // Explosive Specialist
  magazines[] += {BASE_EXP};
};
class mine : Fic_eng
{ // Mine Specialist
  magazines[] += {BASE_MINE};
  handguns[] = {MINE_DETECTOR};
};

class eng : fic_eng
{ // Logistics Engineer
  backpackItems[] = {"gm_repairkit_01", "ACE_EntrenchingTool", "ACE_wirecutter", RADIO_LR};
};
class engl : eng
{ // Logistics Leader
  vest[] = {CAMO_VEST_TL};
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG, GLRIFLE_MAG_HE, GLRIFLE_MAG_SMOKE, LEADER_GRENADES};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED, BINOS};
  backpackItems[] += {RADIO_LR};
};

class sf_aar : aar
{
  uniform[] = {SF_CAMO_UNIFORM};
};
class sf_ftl : ftl
{
  uniform[] = {SF_CAMO_UNIFORM};
};
class sf_sl : sl
{
  uniform[] = {SF_CAMO_UNIFORM};
};
class sf_ar : ar
{
  uniform[] = {SF_CAMO_UNIFORM};
};
class sf_lat : lat
{
  uniform[] = {SF_CAMO_UNIFORM};
};
class sf_sm : sm
{
  uniform[] = {SF_CAMO_UNIFORM};
};

class fallback : rifleman
{
}; // This means any faction member who doesn't match something will use this loadout
