//	Datei:		mapClickTeleport.sqf
//	Mission:	EditingHelper
//	Author:		R0T

/* DECLARE VARIABLES AND FUNCTIONS */

	private ["_textSelect","_textDone"];

/* SET KEY VARIABLES */

	f_telePositionSelected = false;
	_textSelect = "Klick on a position on the map";
	_textDone = "Thx Scotty";

/* TELEPORT FUNCTIONALITY */

	titletext [_textSelect,"plain", 0.4];
	openMap true;
	onMapSingleClick "player setPos _pos; f_telePositionSelected = true";
	waitUntil {f_telePositionSelected};
	titletext [_textDone,"plain", 0.3];
	openMap false;

