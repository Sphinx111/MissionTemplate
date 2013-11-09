/*
* removemortarmen.sqf
* Created by [RG} RexJoker
* Idea taken from Xeno's domination
* This will remove the mortar at the players
* position. This will add the addAction
* need the Functions.sqf
*/

/*
* _this select 0 = the object that addAction was assigned to
* _this select 1 = the player that called the addAction
* _this select 2 = the id of the action
*/

_mortar = _this select 0;
_player = _this select 1;
_id = _this select 2;

if(!isNull _player) then{

if (isNil "_mortar") exitWith {};

if (vehicle _player == _mortar) exitWith {hint "You have to get out of the Mortar before you can remove it."; sleep 5; hint "";};

_player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
if (!alive _player) exitWith {hint "You died before you could remove your Mortar."; sleep 5; hint "";};

deleteVehicle _mortar;
hint "Mortar removed."; 
sleep 5; hint ""; 
_player addAction ["<t color='#ff1111'>Deploy Mortar</t>", "Scripts\mortarmen.sqf"];
};
