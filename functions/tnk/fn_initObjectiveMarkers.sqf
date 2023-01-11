/*
	CCO_fnc_initObjectiveMarkers
	By: Troy "tanaKa" Billsen

	Adds static markers to each CCE The Bear Awakens fuel and ammo truck objectives for WEST

	Params: 
		N/A

	Returns:
		Nothing

	Locality:
		Player only
*/
if (side player isEqualTo WEST) then {
	_obj = [sector1ammo,sector1fuel,sector2ammo,sector2fuel,sector3ammo,sector3fuel,sector4ammo,sector4fuel,sector5ammo,sector5fuel];
	{
		_objmarker = "marker_" + str(_x);
		_markerstr = createMarkerLocal [_objmarker, _x];
		_markerstr setMarkerShapeLocal "ICON";
		_markerstr setMarkerColorLocal "ColorOrange";
		_markerstr setMarkerSizeLocal [2, 2];
		
		if (str(_x) find "fuel" > -1) then {
			_markerstr setMarkerTextLocal "FUEL";
			_markerstr setMarkerTypeLocal "loc_refuel";
		} else {
			_markerstr setMarkerTextLocal "AMMO";
			_markerstr setMarkerTypeLocal "loc_rearm";
		};
	} foreach _obj;
};
