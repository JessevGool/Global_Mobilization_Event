if(!isServer) exitWith {};

/**
West: 

Tanks
Leopard 1A1 (10min)
Leopard 1A1A4 (15min)
Leopard 1A5 (20min)
M60A3 (20min)

Combat Vehicles
SpPz 2A1 Luchs (15min)
SPz 1A1+ Marder (20min)
Transport/Support (5min)
Truck 0.5t MG3 (5min)
Truck 0.5t LATGM (15min)
TPz 1 Engineer Fuchs (5min)
TPz 1 Recon Fuchs (15min)

Optional Vehicle Support
BrPz 1 (15min)
FlakPz 1A1 (20min)
M109G (Howitzer) (30min)

Artillery
M252 82 Mortar (15min)
M119 155m Howitzer (30min)

Helicopters
CH-53G (15min)
VBH 1A1 Swooper (15min)
UH-1D (Armed) (25min)
UH-1D (Gunship) (30min)

East:

Tanks
PT-76B (5min)
T-55 (15min)
T-55AM2B (20min)

Combat Vehicles
BMP-1 SP-2 (15min)
SPW-40P2 “BRDM” (10min)
SPW-60PB “BTR-60” (10min)
BMP-2 (20min)
Transport/Support (5min)
Pkw gel. 469 DShKM (5min)
Pkw gel. 469 SPG-9 (10min)

Optional Vehicle Support
Fla-SFL 23-4V1 (20min)
SFL 2S1 (Howitzer) (30min)

Artillery
2B14 82mm Mortar (15min)
D-30 122mm Howitzer (30min)

Helicopters
Mi-2T (15min)
Mi-2US (20min)
Mi-2URN (25min)
Mi-8MTV3 (35min)
 */

CCO_vehs =
[
	//WEST
	[west_bridge_1,	false,	(5*60),		{}],
	[west_bridge_2,	false,	(5*60),		{}],
	[west_bridge_3,	false,	(5*60),		{}],
	[west_truck_1,	false,	(5*60),		{}],
	[west_truck_2,	false,	(5*60),		{}],
	[west_truck_3,	false,	(5*60),		{}],
	[west_truck_4,	false,	(5*60),		{}],
	[west_truck_5,	false,	(5*60),		{}],
	[west_helo_1,	true,	(15*60),	{}],
	[west_helo_2,	true,	(15*60),	{}],
	[west_helo_3,	true,	(25*60),	{}],
	[west_arty_1,	true,	(30*60),	{}],
	[west_arty_2,	true,	(30*60),	{}],

	//EAST
	[east_aa_1,		true,	(20*60),	{}],
	[east_helo_1,	true,	(15*60),	{}],
	[east_arty_1,	false,	(30*60),	{}],
	[east_469_1,	false,	(5*60),		{}],
	[east_469_2,	false,	(5*60),		{}],
	[east_tank_1,	true,	(20*60),	{}],
	[east_tank_2,	true,	(20*60),	{}],
	[east_truck_1,	false,	(5*60),		{}],
	[east_truck_2,	false,	(5*60),		{}],
	[east_truck_3,	false,	(5*60),		{}],
	[east_truck_4,	false,	(5*60),		{}],
	[east_truck_repair,	false,	(5*60),	{}],
	[east_ifv_1,	true,	(15*60),	{}],
	[east_ifv_2,	true,	(15*60),	{}]
];

// input allowed crew classes for GROUND vehicles
AllowedGroundCrew =
[
	"potato_w_vicd",
	"potato_w_vicl",
	"potato_w_vicc",

	"potato_e_vicc",
	"potato_e_vicl",
	"potato_e_vicd",
	"potato_e_hatg" // Allow hat gunner to sit in the commander seat of the BMP
];
// input allowed crew classes for AIR vehicles
AllowedAirCrew =
[
	"potato_w_pilot",
	"potato_w_cc",
	"potato_w_helicrew",

	"potato_e_helicrew",
	"potato_e_pilot",
	"potato_e_cc"
];

// banned magazines
VehBannedMagazines =
[
	"CUP_340rnd_TE1_Green_Tracer_30mmHEIF_2a42_m",
	"gm_22Rnd_100x695mm_apfsds_t_bm8",
	"gm_21Rnd_100x695mm_he_of412",
	"gm_24Rnd_76x385mm_he_of350",
	"gm_2000Rnd_23x152mm_hei_t_ofzt",
	"CUP_30Rnd_122mmHE_D30_M",
	"CUP_30Rnd_122mmWP_D30_M",
	"CUP_30Rnd_122mmLASER_D30_M",
	"CUP_30Rnd_122mmSMOKE_D30_M",
	"CUP_30Rnd_122mmILLUM_D30_M",
	"gm_11Rnd_100x695mm_he_of412",
	"gm_15Rnd_100x695mm_apfsds_t_bm20",
	"gm_10Rnd_100x695mm_heat_t_bk5m"
];
/*
END USER CONFIG
*/
// temp workaround until I find a smarter, server-only way of handling crew restrictions
publicVariable "CCO_vehs";
publicVariable "AllowedGroundCrew";
publicVariable "AllowedAirCrew";

SFP_fnc_giveAmmoTypes =
{
	params["_veh","_class"];
	if (_class isEqualTo "gm_gc_army_t55am2b") then {
		_veh removeMagazinesTurret ["gm_10Rnd_100x695mm_heat_t_bk5m", [0]];
		_veh removeMagazinesTurret ["gm_20Rnd_100x695mm_apfsds_t_bm25", [0]];
		_veh removeMagazinesTurret ["gm_11Rnd_100x695mm_he_of412", [0]];
		for [{ _i = 0 }, { _i < 2 }, { _i = _i + 1 }] do 
		{
		_veh addMagazineTurret ["gm_20Rnd_100x695mm_apfsds_t_bm25", [0]];

		}
	};
	if(_class isEqualTo "cwr3_o_bmp2") then {

		_veh removeMagazinesTurret ["CUP_340rnd_TE1_Green_Tracer_30mmAPBC_2a42_m",[0]];
		_veh removeMagazinesTurret ["CUP_160rnd_TE1_Green_Tracer_30mmAPBC_2a42_m",[0]];

		_veh addMagazineTurret ["CUP_340rnd_TE1_Green_Tracer_30mmAPBC_2a42_m",[0]];
	};

	if(_class isEqualTo "gm_gc_army_zsu234v1") then {
		_veh removeMagazinesTurret ["gm_500Rnd_23x152mm_api_t_bzt",[0]];
		_veh removeMagazinesTurret ["gm_2000Rnd_23x152mm_hei_t_ofzt",[0]];
		for [{ _i = 0 }, { _i < 2 }, { _i = _i + 1 }] do 
		{
		_veh addMagazineTurret ["gm_500Rnd_23x152mm_api_t_bzt", [0]];
		}
	};
	//IM A GOD
	_veh setVariable ["ace_rearm_scriptedLoadout", true, true];
};

// adds handlers to vehicles that start respawn process and remove themselves
JST_fnc_addVehRespawnHandlers =
{
	params ["_veh"];
	// killed: remove all handlers, start respawn loop
	_veh addMPEventHandler
	[
		"MPKilled",
		{
			params ["_unit", "_killer", "_instigator", "_useEffects"];
			// do not run if not server
			if !(isServer) exitWith {};
			// pull data
			private _vehArray = _unit getVariable "CCO_vehArray";
			// remove all event handlers
			_unit removeAllMPEventHandlers "MPKilled";
			[_unit, "Deleted"] remoteExec ["removeAllEventHandlers", 0];
			[_unit, "GetIn"] remoteExec ["removeAllEventHandlers", 0];
			[_unit, "SeatSwitched"] remoteExec ["removeAllEventHandlers", 0];
			// delete all attached objects
			{
				deleteVehicle _x;
			} forEach (attachedObjects _unit);
			// respawn on server
			[_unit, _vehArray] remoteExec ["JST_fnc_vehRespawn", 2];
		}
	];
	//remove all banned ammo when reloaded by ammo truck
	_veh addEventHandler
	[
		"Reloaded",
		{
			params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
			private _class = typeOf _unit;
			// [_unit,_class] spawn SFP_fnc_giveAmmoTypes;
			{
				_unit removeMagazinesTurret [_x, [0]];
			} forEach VehBannedMagazines;
		}
	];

	// deleted: remove all handlers, start respawn loop
	_veh addEventHandler
	[
		"Deleted",
		{
			params ["_unit"];
			// do not run if not server
			if !(isServer) exitWith {};
			// pull data
			private _vehArray = _unit getVariable "CCO_vehArray";
			// remove all event handlers
			_unit removeAllMPEventHandlers "MPKilled";
			[_unit, "Deleted"] remoteExec ["removeAllEventHandlers", 0];
			[_unit, "GetIn"] remoteExec ["removeAllEventHandlers", 0];
			[_unit, "SeatSwitched"] remoteExec ["removeAllEventHandlers", 0];
			// delete all attached objects
			{
				deleteVehicle _x;
			} forEach (attachedObjects _unit);
			// respawn on server
			[_unit, _vehArray] remoteExec ["JST_fnc_vehRespawn", 2];
		}
	];
	// get in: only allow certain players to get in driver/gunner seats
	[
		_veh,
		[
			"GetIn",
			{
				params ["_vehicle", "_role", "_unit", "_turret"];
				// only run on local unit
				if !(local _unit) exitWith {};
				private _restricted = (_vehicle getVariable "CCO_vehArray") select 1;
				if (_restricted and (_vehicle isKindOf "AIR")) then
				{
					if !((typeOf _unit) in AllowedAirCrew) then
					{
						private _time = time;
						waitUntil {((vehicle _unit) isEqualTo _vehicle) or (time >= (_time + 5))};
						if (((assignedVehicleRole _unit) isEqualTo ["driver"]) or ((assignedVehicleRole _unit) isEqualTo ["gunner"]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,0]])) then
						{
							//"Hint3" remoteExec ["playsound", _unit1];
							[_unit] remoteExec ["moveOut", _unit];
							["You are not authorized air crew."] remoteExec ["systemChat", _unit];
						};
					};
				};
				if (_restricted and ((_vehicle isKindOf "CAR") or (_vehicle isKindOf "TANK"))) then
				{
					if !((typeOf _unit) in AllowedGroundCrew) then
					{
						private _time = time;
						waitUntil {((vehicle _unit) isEqualTo _vehicle) or (time >= (_time + 5))};
						if (((assignedVehicleRole _unit) isEqualTo ["driver"]) or ((assignedVehicleRole _unit) isEqualTo ["gunner"]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,0]])) then
						{
							//"Hint3" remoteExec ["playsound", _unit1];
							[_unit] remoteExec ["moveOut", _unit];
							["You are not authorized crew."] remoteExec ["systemChat", _unit];
						};
					};
				};
			}
		]
	] remoteExec ["addEventHandler", 0, true];
	// switch seats: prevents cheesing the seat system
	[
		_veh,
		[
			"SeatSwitched",
			{
				params ["_vehicle", "_unit1", "_unit2"];
				// only run on local unit
				if !(local _unit1) exitWith {};
				private _restricted = (_vehicle getVariable "CCO_vehArray") select 1;
				if (_restricted and (_vehicle isKindOf "AIR")) then
				{
					if !((typeOf _unit1) in AllowedAirCrew) then
					{
						if (((assignedVehicleRole _unit1) isEqualTo ["driver"]) or ((assignedVehicleRole _unit1) isEqualTo ["gunner"]) or ((assignedVehicleRole _unit1) isEqualTo ["turret",[0]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,0]])) then
						{
							[_unit1] remoteExec ["moveOut", _unit1];
							[_unit1,_vehicle] remoteExec ["moveInCargo", _unit1];
							["You are not authorized air crew."] remoteExec ["systemChat", _unit1];
						};
					};
				};
				if (_restricted and ((_vehicle isKindOf "CAR") or (_vehicle isKindOf "TANK"))) then
				{
					if !((typeOf _unit1) in AllowedGroundCrew) then
					{
						if (((assignedVehicleRole _unit1) isEqualTo ["driver"]) or ((assignedVehicleRole _unit1) isEqualTo ["gunner"]) or ((assignedVehicleRole _unit1) isEqualTo ["turret",[0]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[1]]) or ((assignedVehicleRole _unit) isEqualTo ["turret",[0,0]])) then
						{
							[_unit1] remoteExec ["moveOut", _unit1];
							[_unit1,_vehicle] remoteExec ["moveInCargo", _unit1];
							["You are not authorized crew."] remoteExec ["systemChat", _unit1];
						};
					};
				};
			}
		]
	] remoteExec ["addEventHandler", 0, true];
};

// process that handles the actual respawn wait and spawn
JST_fnc_vehRespawn =
{
	params ["_unit", "_vehArray"];
	if (!isServer) exitWith {};
	// pull respawn data from dead unit
	_vehArray params ["_unitVar", "_restricted", "_time", "_pos", "_vDirAndUp", "_class", "_config", "_name", "_attObjs", "_fnc", "_sideLocInfo"];
	// wait respawn time
	UIsleep _time;
	// find nearest safe position to respawn point
	private _safePos = _pos findEmptyPosition [0, 50, _class];
	// respawn vehicle
	_unitVar = createVehicle [_class, [(_safePos select 0), (_safePos select 1), ((_safePos select 2) + 10000)], [], 0, "NONE"];
	_unitVar setVehicleVarName _name;
	_unitVar setVectorDirAndUp _vDirAndUp;
	_unitVar setPos [(_safePos select 0), (_safePos select 1), ((_safePos select 2) + 1.5)];
	_unitVar setVectorDirAndUp _vDirAndUp;
	[_unitVar, _config select 0, _config select 1] call BIS_fnc_initVehicle;
	// add to zeuses
	{
		_x addCuratorEditableObjects [[_unitVar], true]
	} forEach allCurators;
	// add handlers
	[_unitVar] call JST_fnc_addVehRespawnHandlers;
	// save respawn data onto vehicle
	_unitVar setVariable ["CCO_vehArray", _vehArray, true];
	// safety check
	UIsleep 1;
	_unitVar setDamage 0;
	UIsleep 1;
	_unitVar setDamage 0;
	// Remove banned magazines
	{
		_unitVar removeMagazinesTurret [_x, [0]];
	} forEach VehBannedMagazines;
	private _class = typeOf _unitVar;

	[_unitVar,_class] remoteExec ["SFP_fnc_giveAmmoTypes",2];

	// recreate attached objects, if any
	if ((count _attObjs) > 0) then
	{
		{
			_x params ["_type", "_relPos", "_vDirAndUp"];
			private _posSafe = [(_pos select 0), (_pos select 1), 100];
			private _obj = createVehicle [_type, _posSafe, [], 0, "CAN_COLLIDE"];
			_obj enableSimulationGlobal false;
			_obj setPos (_unitVar modelToWorld _relPos);
			_obj setVectorDirAndUp _vDirAndUp;
			[_obj, _unitVar] call BIS_fnc_attachToRelative;
		} forEach _attObjs;
	};
	// recreate setVariable'd sideLocInfo, if any
	_unitVar setVariable ["sideLocInfo", _sideLocInfo, true];
	// run any functions assigned to this vehicle
	[_unitVar] call _fnc;
	// CCO16 add psyops actions if loudspeaker attached
	if ((_attObjs findIf {(_x select 0) isEqualTo "Land_Loudspeakers_F"}) > -1) then
	{
		[_unitVar, EAST] remoteExec ["JST_fnc_psy_addMenuAction", 0, true];
	};
	// Broadcast respawn notification
	{
		[
			"RespawnVehicle",
			[
				getText (configfile >> "CfgVehicles" >> typeOf _unitVar >> "displayName"),
				(_sideLocInfo select 1),
				getText (configfile >> "CfgVehicles" >> typeOf _unitVar >> "picture")
			]
		] remoteExec ["BIS_fnc_showNotification", _x];
	} forEach (_sideLocInfo select 0);
};

// wait for mission start
waitUntil {time > 3};

// handle vehicles at start: save data, remove banned magazines, add handlers
{
	// find data
	private _unitVar = _x select 0;
	private _restricted = _x select 1;
	private _time = _x select 2;
	private _pos = getPos _unitVar;
	private _vDir = vectorDir _unitVar;
	private _vUp = vectorUp _unitVar;
	private _class = typeOf _unitVar;
	private _config = [_unitVar] call BIS_fnc_getVehicleCustomization;
	private _name = vehicleVarName _unitVar;
	private _fnc = _x select 3;
	private _configSide = (getNumber (configfile >> "CfgVehicles" >> typeOf _unitVar >> "side"));
	// custom mission maker input for respawn notification [array of sides to notify, location name]
	// defaults to generic stuff if no input
	private _sideLocInfo = _unitVar getVariable ["sideLocInfo", [[_configSide],"MAIN"]];
	// find attached objects, if any
	private _attObjs = [];
	{ 
		private _type = typeOf _x;
		private _relPos = _unitVar worldToModel (getPos _x);
		private _vDir = vectorDir _x;
		private _vUp = vectorUp _x;
		_attObjs pushBack [_type, _relPos, [_vDir, _vUp]];
	} forEach (attachedObjects _unitVar);
	// store data on vehicle
	private _vehArray = [_unitVar, _restricted, _time, _pos, [_vDir, _vUp], _class, _config, _name, _attObjs, _fnc, _sideLocInfo];
	_unitVar setVariable ["CCO_vehArray", _vehArray, true];
	
	[_unitVar,_class] spawn SFP_fnc_giveAmmoTypes;
	
	// Remove banned magazines
	{
		_unitVar removeMagazinesTurret [_x, [0]];
	} forEach VehBannedMagazines;
	// run any functions assigned to this vehicle
	[_unitVar] spawn _fnc;
	// add handlers
	[_unitVar] spawn JST_fnc_addVehRespawnHandlers;

	// short sleep to avoid overload
	UIsleep 0.25;
} forEach CCO_vehs;
