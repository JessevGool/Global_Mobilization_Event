// Jesters respawn vehicle script
[] spawn CCO_fnc_respawnVehicles;

// Tanakas bomb script for each objective
[] spawn CCO_fnc_bombObjectivesInit;

[] execVM "functions\JST\serviceVehicles.sqf";

// Game mode vars
isSector3Captured = false;
isSector2Captured = false;
isSector1Captured = false;