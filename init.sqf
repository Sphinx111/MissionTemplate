
// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};
 
// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};
 
// INS_revive initialize
[] execVM "INS_revive\revive_init.sqf";

//Suppression Script
_null = [2] execVM "tpwcas\tpwcas_script_init.sqf";

//Lock players in first person (configurable in sqf)
execVM "Launchthirdperson.sqf"

//Execute and load briefing
execVM "briefing.sqf";

//Transport scripts for airlifting and cargo
[] execVM "scripts\transport\init.sqf";
[] execVM "scripts\player\init.sqf";

//Vehicle Active Defence System
call compile preprocessFile "Baked_AIS\Baked_AIS_init.sqf";

// Add GPS
if !(player hasWeapon "ItemGPS") then {player addWeapon "ItemGPS";};


//Removes NVGs for CSAT
{
    if(side _x == east) then
    {
        _x unlinkItem "NVGoggles_OPFOR"; 
    };
} foreach (allUnits);



//Gives you usefull Mapmaker MenuActions Remove before compile to pbo
[] execVM "EditingHelper\HelperInit.sqf";



