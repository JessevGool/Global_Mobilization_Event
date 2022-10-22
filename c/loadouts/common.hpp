// common defines

// RADIOS
#define RADIO_SR "ACRE_PRC343"
#define RADIO_MR "ACRE_PRC148"
#define RADIO_LR "ACRE_PRC117F"

// GEAR
#define BASE_MEDICAL "ACE_elasticBandage:2","ACE_packingBandage:2","ACE_tourniquet:2"
#define MEDIC_MEDICAL "ACE_packingBandage:20","ACE_elasticBandage:20","ACE_splint:8","ACE_tourniquet:6","ACE_plasmaIV_500:4","kat_Pulseoximeter","kat_larynx","kat_aatKit:6","kat_guedel:5","kat_stethoscope","kat_chestSeal:6","kat_IV_16:6","ACE_morphine:8","ACE_epinephrine:8","ACE_adenosine:8","kat_Carbonate:4","kat_Painkiller:4","kat_nitroglycerin:4","kat_norepinephrine:4","kat_phenylephrine:4","kat_TXA:4","kat_atropine:4","kat_amiodarone:4","kat_naloxone:4","kat_lidocaine:4"
#define BASE_TOOLS "ACE_MapTools","ACE_Flashlight_KSF1","ACE_SpraypaintRed","ACE_CableTie:2"
#define BASE_LEADER_TOOLS "ACE_personalAidKit"
#define BASE_LINKED "ItemMap","ItemCompass","ItemWatch"
#define BASE_LEADER_LINKED
#define BASE_FRAG_BLU "gm_handgrenade_frag_dm51:2"
#define BASE_FRAG_OPF "gm_handgrenade_frag_rgd5:2"
#define BASE_SMOKES_BLU "SmokeShell:2"
#define BASE_SMOKES_OPF "SmokeShell:2"
#define BASE_GRENADES_BLU BASE_FRAG_BLU,BASE_SMOKES_BLU
#define BASE_GRENADES_OPF BASE_FRAG_OPF,BASE_SMOKES_OPF
#define LEADER_SMOKES_BLU BASE_SMOKES_BLU,"SmokeShellGreen:2","SmokeShellRed:2"
#define LEADER_SMOKES_OPF BASE_SMOKES_OPF,"SmokeShellOrange:2","SmokeShellRed:2"
#define MEDIC_GRENADES_BLU BASE_SMOKES_BLU,BASE_SMOKES_BLU,"SmokeShellRed:2"
#define MEDIC_GRENADES_OPF BASE_SMOKES_OPF,BASE_SMOKES_OPF,"SmokeShellRed:2"
#define CREW_GRENADES_BLU BASE_SMOKES_BLU,"SmokeShellGreen:2"
#define CREW_GRENADES_OPF BASE_SMOKES_OPF,"SmokeShellOrange:2"
#define BASE_ENG "ACE_DefusalKit"
#define BASE_EXP "gm_explosive_petn_charge:2","gm_explosive_plnp_charge:2","ACE_Clacker"
#define BASE_MINE "ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"
#define MINE_DETECTOR "ACE_VMM3"
#define BINOS "gm_ferod16_win"
#define RANGE_FINDER
#define BASE_BALLISTICS 
#define BASE_ARTILLERY "ACE_artilleryTable",BASE_BALLISTICS
#define VZ99 "potato_vz99_carryWeapon"
#define VZ99HE "potato_vz99_HE:6"

// OPTIX
#define WARSAW_OPTICS "rhs_acc_1p63", "rhs_acc_ekp1", "rhs_acc_ekp8_02", "rhs_acc_pkas" // note RHS and CUP mount optics differently, not cross compatible
#define STANAG_OPTICS "optic_Aco", "optic_Yorris", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_rakursPM", "rhsusf_acc_compm4", "rhsusf_acc_eotech_xps3", "rhsusf_acc_T1_high", "CUP_optic_MRad", "CUP_optic_ZDDot"

// FUNCTIONS
#define SAM_GEAR(BACKPACK,MAG) backpack[] = {BACKPACK}; backpackItems[] = {}; magazines[] += {MAG}; items[] += {BASE_MEDICAL};
#define MORTAR_GEAR(BACKPACK) backpack[] = {BACKPACK}; items[] += {BASE_ARTILLERY};

// FACES
#define F_C "WhiteHead_04","WhiteHead_08","WhiteHead_02","WhiteHead_18","WhiteHead_12","WhiteHead_13"   // Caucasian
#define F_G "GreekHead_A3_06","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03"                     // Mediterranean (Greek)
#define F_M "PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","PersianHead_A3_02"             // Middle-Eastern
#define F_P "AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_06","AsianHead_A3_07"   // East-Asian
#define F_A "AfricanHead_01","AfricanHead_02","AfricanHead_03","TanoanHead_A3_01","TanoanHead_A3_08"    // African  

// NATIONALITIES
// North African - Mixed, Middle-Eastern/African 
#define F_NA "PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","AfricanHead_01","AfricanHead_02","AfricanHead_03"
// North-American - Mixed, Caucasian/African/Asian/Middle-Eastern 
#define F_USA "WhiteHead_04","WhiteHead_18","WhiteHead_02","WhiteHead_04","WhiteHead_18","WhiteHead_02","WhiteHead_06","WhiteHead_03","WhiteHead_02","AfricanHead_01","AfricanHead_02","AfricanHead_03","AfricanHead_01","AfricanHead_02","TanoanHead_A3_08","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03" 
// Russian - Mixed, Caucasian/Asian
#define F_RUS "WhiteHead_04","WhiteHead_04","WhiteHead_02","WhiteHead_04","WhiteHead_18","WhiteHead_02","WhiteHead_04","WhiteHead_08","WhiteHead_02","WhiteHead_06","WhiteHead_08","WhiteHead_02","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03"
// British - Mixed, Caucasian/Middle-Eastern/African
#define F_GBR "WhiteHead_04","WhiteHead_03","WhiteHead_02","WhiteHead_04","WhiteHead_03","WhiteHead_02","WhiteHead_04","WhiteHead_08","WhiteHead_02","AfricanHead_01","AfricanHead_02","AfricanHead_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"
// French - Mixed, Caucasian/Middle-Eastern/African
#define F_FRA "WhiteHead_04","WhiteHead_06","WhiteHead_08","WhiteHead_06","WhiteHead_03","WhiteHead_02","WhiteHead_04","WhiteHead_03","WhiteHead_02","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"
// Greek - Caucasian/Mediterranean
#define F_MED "GreekHead_A3_06","GreekHead_A3_11","GreekHead_A3_02","GreekHead_A3_12","GreekHead_A3_13","GreekHead_A3_02","GreekHead_A3_03","WhiteHead_06","WhiteHead_03","WhiteHead_02" 
// Mixed - All
#define F_MN F_C,F_M,F_P,F_A,F_G
