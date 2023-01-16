///////////////////////////////////////////////////
// Simple randomly-changing snowfall and fog script
// Run everywhere
///////////////////////////////////////////////////

// master switch to turn it off
JST_do_snow = true;

if (isNil "JST_snow_density") then {JST_snow_density = 500};


// server sets & changes weather
if (isServer) then
{
	[] spawn
	{
		// slow update to actually change the weather
		while {JST_do_snow} do
		{
			private _rate = (random [60, 90, 120]);
			private _maxDensity = 1000;
			JST_snow_density = random _maxDensity;
			publicVariable "JST_snow_density";
			setWind [(random [-5, 0, 5]), (random [-5, 0, 5]), true];
			private _fogValue = linearConversion [0, _maxDensity, JST_snow_density, 0, 0.8, true];
			private _fogDecay = 0;
			private _fogBase = 0;
			_rate setFog [_fogValue, _fogDecay, _fogBase];
			UIsleep (random [120, 240, 360]);
		};
	};
	[] spawn
	{
		// more frequent updates to guarantee sync & for jips
		while {UIsleep 30; JST_do_snow} do
		{
			publicVariable "JST_snow_density";
		};
	};
};

// create snow particles
if (hasInterface) then
{
	private _d  = 15;
	while {UIsleep 0.5; JST_do_snow} do
	{
		private _a = 0;
		private _pos = positionCameraToWorld [0,0,0];
		private _inside = [_pos] call JST_fnc_snow_isInside;
		while {(_a < JST_snow_density) and (!_inside)} do
		{
			private _dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + 2)];
			drop ["\ca\data\cl_water", "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];    _a = _a + 1;
			private _dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + 4)];
			drop ["\ca\data\cl_water", "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];    _a = _a + 1;
			private _dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + 6)];
			drop ["\ca\data\cl_water", "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];    _a = _a + 1;
			private _dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + 8)];
			drop ["\ca\data\cl_water", "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];    _a = _a + 1;
			private _dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + 10)];
			drop ["\ca\data\cl_water", "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];    _a = _a + 1;
			private _dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + 12)];
			drop ["\ca\data\cl_water", "", "Billboard", 1, 7, _dpos, [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];    _a = _a + 1;
		};
	};
};