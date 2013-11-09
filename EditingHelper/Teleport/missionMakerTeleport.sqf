//	Datei:		missionMakerTeleport.sqf
//	Mission:	EditingHelper
//	Author:		R0T

/* DECLARE VARIABLES AND FUNCTIONS */

	private ["_textAction"];

/* SET KEY VARIABLES */

	_textAction = "Teleport";

/* ADD TELEPORT ACTION TO PLAYER ACTION MENU */
// Whilst the player is alive we add the teleport action to the player's action menu.
// If the player dies we wait until he is alive again and re-add the action.

	F2_mapClickTeleportAction = player addaction [_textAction,"EditingHelper\Teleport\mapClickTeleport.sqf","", 1, false, true];
	waitUntil {!alive player};
	waitUntil {alive player};
	sleep 0.01;
