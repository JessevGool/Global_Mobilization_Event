// Variable setup
sector1ammoPlanted = false;
// publicVariable "sector1ammoPlanted";
sector1fuelPlanted = false;
// publicVariable "sector1fuelPlanted";
sector2ammoPlanted = false;
// publicVariable "sector2ammoPlanted";
sector2fuelPlanted = false;
// publicVariable "sector2fuelPlanted";
sector3ammoPlanted = false;
// publicVariable "sector3ammoPlanted";
sector3fuelPlanted = false;
// publicVariable "sector3fuelPlanted";
sector4ammoPlanted = false;
// publicVariable "sector4ammoPlanted";
sector4fuelPlanted = false;
// publicVariable "sector4fuelPlanted";
DEFUSETIME = 180;
OBJECTIVES = [sector1ammo,sector1fuel,sector2ammo,sector2fuel,sector3ammo,sector3fuel,sector4ammo,sector4fuel,sector5ammo,sector5fuel];

// Add bomb actions to each objective for East Germans
call CCO_fnc_clientBombActions;