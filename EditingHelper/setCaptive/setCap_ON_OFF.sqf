//	Datei:		setCap_ON_OFF.sqf
//	Mission:	EditingHelper
//	Author:		R0T

/* DECLARE VARIABLES AND FUNCTIONS */

	private ["_setCap"];

/* SET KEY VARIABLES - CHECK IF PLAYER CAPTIVE TRUE/FALSE */

	_setCap = captive player;

/* CODE - IF player is Captive THEN setCaptive false AND VIAVERSA */

	if (_setCap) then 
		{
			player setCaptive false;
			hint "setCaptive false";
		}
		else 
		{	player setCaptive true;
			hint "setCaptive true";
		}

