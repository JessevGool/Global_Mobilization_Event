/*
	CCO_fnc_plantBomb
	By: Troy "tanaKa" Billsen

	Main driver code that fires when a player plants a bomb on a "The Bear Awakens" event vehicle

	Params: 
		0 - _bomb - The objective vehiclevarname of the vehicle that has a bomb planted on itemCargo
		1 - _planter - The object/player who plants the explosive
		2 - _actionID - The actionID assigned to the objective

	Returns:
		Nothing

	Locality:
		Server only

	Note:
		This is far from object oriented lmao, but we need support for multipl objectives being active at once 
		and I dont want to pass a bunch of params to other functions. IT JUST WORKS.
*/

params["_bomb","_planter","_actionID"];

// Remove action globally
[_bomb,_actionID] call BIS_fnc_holdActionRemove;

// Start and notify countdown
// Switches code block based on what objective got "planted", aka _bomb
switch (_bomb) do {
	case sector1fuel: {
		_countDown = DEFUSETIME;
		sector1fuelPlanted = true;

		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector1fuelPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 1 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 1 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 1 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector1ammo: {
		_countDown = DEFUSETIME;
		sector1AmmoPlanted = true;

		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector1AmmoPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 1 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 1 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 1 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector2fuel: {
		_countDown = DEFUSETIME;
		sector2FuelPlanted = true;
		
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector2FuelPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 2 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 2 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 2 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector2ammo: {
		_countDown = DEFUSETIME;
		sector2AmmoPlanted = true;

		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector2AmmoPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 2 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 2 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 2 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector3fuel: {
		_countDown = DEFUSETIME;
		sector3FuelPlanted = true;
				
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector3FuelPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 3 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 3 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 3 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector3ammo: {
		_countDown = DEFUSETIME;
		sector3AmmoPlanted = true;
				
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector3AmmoPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 3 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 3 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 3 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector4fuel: {
		_countDown = DEFUSETIME;
		sector4FuelPlanted = true;
				
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector4FuelPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 4 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 4 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 4 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector4ammo: {
		_countDown = DEFUSETIME;
		sector4AmmoPlanted = true;
				
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector4AmmoPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 4 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 4 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 4 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector5fuel: {
		_countDown = DEFUSETIME;
		sector5FuelPlanted = true;
				
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector5FuelPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 5 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 5 Fuel: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 5 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
	case sector5ammo: {
		_countDown = DEFUSETIME;
		sector5AmmoPlanted = true;
				
		// Add defuse holdaction
		[_bomb] call CCO_fnc_defuseBomb;

		// Destruction countdown loop
		while {sector5AmmoPlanted && _countDown >= 0} do {
			if (_countDown % 5 == 0 && _countDown > 10) then {
				_bombText = "Bomb Planted on Sector 5 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown <= 10) then {
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _bomb, false, getposasl _bomb, 0.6, 1, 175];
				_bombText = "Bomb Planted on Sector 5 Ammo: " + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			if (_countDown == 0) then {
				"Bo_GBU12_LGB" createVehicle (getposATL _bomb);
				_bomb setDamage 1;
				_bombText = "A Sector 5 Objective has been destroyed by East Germany!" + ([_countDown,"MM:SS"] call BIS_fnc_secondsToString);
				_bombText remoteExec ["systemChat",0,false];
			};
			_countDown = _countDown - 1;
			uiSleep 1;
		};
	};
};