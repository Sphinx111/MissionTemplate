/*
* mortarmen.sqf
* Created by [RG} RexJoker
* Idea taken from Xeno's domination
* This will create a mortar at the players
* position. This will remove the addAction
* because of recent changes to ARMA 3
* you must initialized null = this addAction["Deploy Mortar","Scripts\mortarmen.sqf"];
* need the Functions.sqf
*/

/*
* _this select 0 = the object that the addAction was assigned to.
* _this select 1 = the object that called the addAction
* _this select 2 = the id of the addAction so it can removed
*/
_veh = _this select 0;
_player = _this select 1;
_action = _this select 2;

_pos = _player modeltoworld [0,1,0];
_pos set [2,0];
_dir = direction _player;

if(!isNull _player) then{

/*
* Make sure that no one besides the assigned players can access this script
*/
if(_player != _veh) exitWith{hint "You are not a mortarman!"; sleep 5; hint "";};

if (surfaceIsWater _pos) exitWith {
	hint "It is not possible to deploy the mortar in water.";
	sleep 5; hint "";
};

_player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waitUntil {animationState _player != "AinvPknlMstpSlayWrflDnon_medic"};
if (!alive _player) exitWith {hint "You died before your mortar was ready."; sleep 5; hint "";};

/*
* If you want more than on mortar man. Just copy this code below
* change _vehicle_1 or more and change the VehicleVarName to anything you want
* but in the removeMortar you have to have a condition to check to see which 
* mortar you are removing. Name the mortarman you want and then do something like 
* this if(_player = mortarman01) then{
* _vehicle_1 = objNull;
* if (true) then
* {
*	_this = createVehicle ["B_Mortar_01_F", _pos, [], 0, "NONE"];
*	_vehicle_1 = _this;
*   _this setDir _dir;
*   _this setPos _pos;
*   _this setVehicleVarName "mortar01";
*   mortar01 = _this;
*   [[_this], "fnc_removeMortar"] spawn BIS_fnc_MP;
*  };
*/

_vehicle_0 = objNull;
if (true) then
{
  _this = createVehicle ["B_Mortar_01_F", _pos, [], 0, "NONE"];
  _vehicle_0 = _this;
  _this setDir _dir;
  _this setPos _pos;
  _this addAction ["<t color='#ff1111'>Remove Mortar</t>", "Scripts\removeMortar.sqf"];
};

hint "Mortar completed, Use 'Take down Mortar instead of dissassemble'!!!!!!";
_player removeAction _action;
};