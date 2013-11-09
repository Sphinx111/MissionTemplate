//	Datei:		addAction_setCaptive.sqf
//	Mission:	EditingHelper
//	Author:		R0T

/* DECLARE VARIABLES AND FUNCTIONS */

	private ["_textAction"];

/* SET KEY VARIABLES */

	_textAction = "setCaptive ON/OFF";

/* ADD setCaptive ON/OFF ACTION TO PLAYER ACTION MENU */
// Whilst the player is alive we add the setCaptive ON/OFF action to the player's action menu.
// If the player dies we wait until he is alive again and re-add the action.

	setPlayerCaptive_ON_OFF = player addaction [_textAction,"EditingHelper\setCaptive\setCap_ON_OFF.sqf","", 0, false, true];
	waitUntil {!alive player};
	waitUntil {alive player};
	sleep 0.01;