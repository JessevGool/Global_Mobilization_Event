/*
	CCO_fnc_readdPlantAction
	By: Troy "tanaKa" Billsen

	Readds the "plant explosive" action after an objective is defused

	Params: 
		None

	Returns:
		Nothing

  Locality:
		Server only
*/
params["_objective"];

[  
  _objective,  
  "Plant Explosives (10s)",  
  "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
  "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
  "(_this distance _target < 5 && side _this isEqualTo EAST && [_this, 'SatchelCharge_Remote_Mag'] call BIS_fnc_hasItem)",  
  "(_caller distance _target < 5)",  
  {},  
  {},
  {
    params ["_target", "_caller", "_actionId", "_arguments"];

    _caller removeItem "SatchelCharge_Remote_Mag";
    ["<t color='#ff0000' size='.8'>BOMB PLANTED<br />Fuse: 3:00 Minutes</t>",-1,-1,4,1,0,789] remoteExec ["BIS_fnc_dynamicText", _caller];
    [_target,_caller,_actionId] spawn CCO_fnc_plantBomb;
  },
  {},  
  [],  
  10,  
  996,  
  false,  
  false  
] remoteExec ["BIS_fnc_holdActionAdd", 0, _objective];
