//	Datei:		addAction_allowDamage.sqf
//	Mission:	EditingHelper
//	Author:		R0T

/* DECLARE VARIABLES AND FUNCTIONS */

	private ["_textAction"];
	allowDam = false;

/* SET KEY VARIABLES */

	_textAction = "allowDamage ON/OFF";

/* ADD allowDamage ON/OFF ACTION TO PLAYER ACTION MENU */
// Whilst the player is alive we add the allowDamage ON/OFF action to the player's action menu.
// If the player dies we wait until he is alive again and re-add the action.

	allowDamage_ON_OFF = player addaction [_textAction,"EditingHelper\allowDamage\allowDamage_ON_OFF.sqf","", 0, false, true];
	waitUntil {!alive player};
	waitUntil {alive player};
	sleep 0.01;