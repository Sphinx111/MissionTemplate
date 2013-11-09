/*------------------------------------------------------------*/
/* ------------------- - HelperInit.sqf - ------------------- */
/*------------------------------------------------------------*/

/*  Teleport  */

	[] execVM "EditingHelper\Teleport\missionMakerTeleport.sqf";
	
/*  setCaptive ON/OFF  */
	
	[] execVM "EditingHelper\setCaptive\addAction_setCaptive.sqf";
	
/*  allowDamage ON/OFF  */
	
	[] execVM "EditingHelper\allowDamage\addAction_allowDamage.sqf";