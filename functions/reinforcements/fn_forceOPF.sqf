if (opfWaves isEqualTo opfMaxWaves) then {
	systemChat "[CCE Respawn] You are out of respawn waves";
} else {
	// Increment wave count
	opfWaves = opfWaves + 1;
	publicVariable "opfWaves";
	systemChat format ["[WW Respawn] You have used %1/8 waves",opfWaves];
	// Spawn wave
	[east, false] remoteExec ["Tun_Respawn_fnc_force_Respawn", 2];
};