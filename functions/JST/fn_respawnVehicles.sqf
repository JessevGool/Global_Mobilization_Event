if(!isServer) exitWith {};

CCO_vehs =
[
	[luchs1,	true,	(10*60), {}],
	[leo1,	true,	(15*60), {}],
	[leo2,	true,	(15*60), {}],
	[leo3,	true,	(15*60), {}],
	[leo4,	true,	(15*60), {}],
	[leo5,	true,	(15*60), {}],
	[leo6,	true,	(15*60), {}],
	[gepard1,	true,	(15*60), {}],
	[bridge1,	true,	(15*60), {}],
	[bridge2,	true,	(15*60), {}],
	[bridge3,	true,	(15*60), {}],
	[bridge4,	true,	(15*60), {}],
	[fivet_transport1,	false, (5*60), {}],
	[fivet_transport2,	false, (5*60), {}],
	[fivet_ammo1, 	false, (5*60), {}],
	[fivet_fuel1, 	false, (5*60), {}],
	[twot_repair1,	false, (5*60), {}],
	[bpz_eng1,	false,	(15*60),	{}],
	[twot_med1,	false,	(5*60),	{}],
	[tpz_command1,	false,	(10*60),	{}],
	[halft_car1,	false,	(5*60),	{}],
	[halft_car2,	false,	(5*60),	{}],
	[tpz1,	false,	(10*60),	{}],
	[tpz2,	false,	(10*60),	{}],
	[tpz3,	false,	(10*60),	{}],
	[tpz4,	false,	(10*60),	{}],
	[tpz5,	false,	(10*60),	{}],
	[tpz6,	false,	(10*60),	{}]

];

// input allowed crew classes for GROUND vehicles
AllowedGroundCrew =
[
	"potato_w_vicd",
	"potato_w_vicl",
	"potato_w_vicc"
];
// input allowed crew classes for AIR vehicles
AllowedAirCrew =
[];

// banned magazines
VehBannedMagazines =
[];

/*
END USER CONFIG
*/

// temp workaround until I find a smarter, server-only way of handling crew restrictions
publicVariable "CCO_vehs";
publicVariable "AllowedGroundCrew";
publicVariable "AllowedAirCrew";

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
	// CCO16 add psyops actions if loudspeaker attached
	if ((_attObjs findIf {(_x select 0) isEqualTo "Land_Loudspeakers_F"}) > -1) then
	{
		[_unitVar, EAST] remoteExec ["JST_fnc_psy_addMenuAction", 0, true];
	};
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