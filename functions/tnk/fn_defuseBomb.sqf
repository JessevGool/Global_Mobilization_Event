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

params["_objective"];

// Add the defuse holdaction for this object
[  
	_objective,  
    "Defuse Explosives (10s)",  
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
    "(_this distance _target < 5 && side _this isEqualTo EAST)",  
    "(_caller distance _target < 5)",  
    {},  
    {},
    {
      	params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_objective"];

      	_caller addItem "SatchelCharge_Remote_Mag";
      	["<t color='#ff0000' size='.8'>BOMB DEFUSED</t>",-1,-1,4,1,0,789] remoteExec ["BIS_fnc_dynamicText", _caller];
      
	  	// Send global hint based on which obj it is
		switch (_objective) do {
			// case sector1fuel: {
			// 	sector1fuelPlanted = false;
			// 	publicVariableServer "sector1fuelPlanted";
			// 	"Bomb Defused on Sector 1 Fuel" remoteExec ["systemChat",0,false];
			// };
			// case sector1ammo: {
			// 	sector1ammoPlanted = false;
			// 	publicVariableServer "sector1ammo";
			// 	"Bomb Defused on Sector 1 Ammo" remoteExec ["systemChat",0,false];
			// };
			// case sector2fuel: {
			// 	sector2fuelPlanted = false;
			// 	publicVariableServer "sector2fuel";
			// 	"Bomb Defused on Sector 2 Fuel" remoteExec ["systemChat",0,false];
			// };
			// case sector2ammo: {
			// 	sector2ammoPlanted = false;
			// 	publicVariableServer "sector2ammoPlanted";
			// 	"Bomb Defused on Sector 2 Ammo" remoteExec ["systemChat",0,false];
			// };
			// case sector3fuel: {
			// 	sector3fuelPlanted = false;
			// 	publicVariableServer "sector3fuelPlanted";
			// 	"Bomb Defused on Sector 3 Fuel" remoteExec ["systemChat",0,false];
			// };
			// case sector3ammo: {
			// 	sector3ammoPlanted = false;
			// 	publicVariableServer "sector3ammoPlanted";
			// 	"Bomb Defused on Sector 3 Ammo" remoteExec ["systemChat",0,false];
			// };
			case sector4fuel: {
				sector4fuelPlanted = false;
				publicVariableServer "sector4fuelPlanted";
				"Bomb Defused on Sector 4 Fuel" remoteExec ["systemChat",0,false];
			};
			case sector4ammo: {
				sector4ammoPlanted = false;
				publicVariableServer "sector4ammoPlanted";
				"Bomb Defused on Sector 4 Ammo" remoteExec ["systemChat",0,false];
			};
			case sector5fuel: {
				sector5fuelPlanted = false;
				publicVariableServer "sector5fuelPlanted";
				"Bomb Defused on Sector 5 Fuel" remoteExec ["systemChat",0,false];
			};
			case sector5ammo: {
				sector5ammoPlanted = false;
				publicVariableServer "sector5ammoPlanted";
				"Bomb Defused on Sector 5 Ammo" remoteExec ["systemChat",0,false];
			};
		};

		// Readd the action to the objective
		[_objective] remoteExec ["CCO_fnc_readdPlantAction",2];

		// Remove defuse action
		[_target,_actionId] remoteExec ["BIS_fnc_holdActionRemove",0];
    },
    {},  
    [_objective],  
    10,  
    996,  
    false,  
    false  
] remoteExec ["BIS_fnc_holdActionAdd", 0, _objective];