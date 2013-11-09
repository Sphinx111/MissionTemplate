//	Datei:		allowDamage_ON_OFF.sqf
//	Mission:	EditingHelper
//	Author:		R0T

/* CODE - IF allowDam is true then false and viaversa */
// (allowDam) <- Variable wird in der allowDamage_ON_OFF.sqf gesetzt

	if (allowDam) then 
		{
			player allowDamage false;
			hint "allowDamge false";
			allowDam = false;
		}
		else 
		{	player allowDamage true;
			hint "allowDamge true";
			allowDam = true;
		}
