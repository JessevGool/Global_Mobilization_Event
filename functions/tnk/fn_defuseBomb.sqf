/*
	CCO_fnc_defuseBomb
	By: Troy "tanaKa" Billsen

	Adds an action to defuse a planted bomb for CCE The Bear Awakens

	Params: 
		0 - _objective - The objective vehiclevarname of the vehicle that has a bomb planted on itemCargo
		1 - _flag - The global flag (boolean) that drives the destruction loop

	Returns:
		Nothing

	Locality:
		Server only
*/

params["_objective","_flag"];

// Add the defuse holdaction for this object
[  
	_objective,  
    "Defuse Explosives (10s)",  
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
    "(_this distance _target < 5 && side _this isEqualTo WEST)",  
    "(_caller distance _target < 5)",  
    {},  
    {},
    {
      	params ["_target", "_caller", "_actionId", "_arguments"];

		_flag = false;
      	_caller addItem "SatchelCharge_Remote_Mag";
      	["<t color='#ff0000' size='.8'>BOMB DEFUSED</t>",-1,-1,4,1,0,789] remoteExec ["BIS_fnc_dynamicText", _caller];
      
	  	// Send global hint based on which obj it is
		switch (_objective) do {
			case sector1fuel: {
				"Bomb Defused on Sector 1 Fuel" remoteExec ["hintSilent",0,false];
			};
			case sector1ammo: {
				"Bomb Defused on Sector 1 Ammo" remoteExec ["hintSilent",0,false];
			};
			case sector2fuel: {
				"Bomb Defused on Sector 2 Fuel" remoteExec ["hintSilent",0,false];
			};
			case sector2ammo: {
				"Bomb Defused on Sector 2 Ammo" remoteExec ["hintSilent",0,false];
			};
			case sector3fuel: {
				"Bomb Defused on Sector 3 Fuel" remoteExec ["hintSilent",0,false];
			};
			case sector3ammo: {
				"Bomb Defused on Sector 3 Ammo" remoteExec ["hintSilent",0,false];
			};
			case sector4fuel: {
				"Bomb Defused on Sector 4 Fuel" remoteExec ["hintSilent",0,false];
			};
			case sector4ammo: {
				"Bomb Defused on Sector 4 Ammo" remoteExec ["hintSilent",0,false];
			};
			case sector5fuel: {
				"Bomb Defused on Sector 5 Fuel" remoteExec ["hintSilent",0,false];
			};
			case sector5ammo: {
				"Bomb Defused on Sector 5 Ammo" remoteExec ["hintSilent",0,false];
			};
		};
    },
    {},  
    [],  
    10,  
    996,  
    false,  
    false  
] remoteExec ["BIS_fnc_holdActionAdd", 0, _objective];