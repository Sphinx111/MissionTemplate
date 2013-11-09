/*
* Edited by [RG] RexJoker created by Tier1
* This script removes destroyed, immobile, and out of fuel vehicles with no crew, in a 300 meter radius around the "m_clrvehwrks" marker.
* Run this script on the server.
* Author notes: All I did was increase the radius from the orignial 250 to 300
*/

[] spawn {
	
	_vehs = [];
	
	while {true} do {
		
		_vehs = nearestObjects [(getmarkerpos "m_clrvehwrks"), ["LandVehicle","Air"], 900];
		
		if (count _vehs > 0) then {
			{
				if ((!alive _x) or (!canMove _x) or ((fuel _x <= 0) and ((count crew _x) < 1))) then {
					deletevehicle _x;
				};
			} foreach _vehs;
		};
		
		sleep 63;
	};
};