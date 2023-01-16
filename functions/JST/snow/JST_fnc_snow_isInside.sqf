// function to test if player is inside a building

params ["_pos"];
private _inside = false;
private _posASL = AGLToASL _pos;
private _posUpASL = _posASL vectorAdd [0, 0, 50];
private _line = lineIntersectsSurfaces [_posASL, _posUpASL, player, objNull, true, 1,"GEOM", "NONE"];
if ((count _line) > 0) then
{
	private _result = _line select 0;
	private _house = _result select 3;
	if (_house isKindOf "House") then {_inside = true};
};
_inside