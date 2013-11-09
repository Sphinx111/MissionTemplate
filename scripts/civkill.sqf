SHK_DeadCivilianCount = 0;
SHK_DeadCivilianLimit = 10;
SHK_EndMission = false;
[] spawn {
  waituntil {SHK_EndMission};
  cuttext ["Mission Failure!.\n Your team killed too many civilians.","PLAIN",2];
  sleep 12;
  endmission "END2";
};

SHK_fnc_deadCivilians = {
  hintsilent format ["Civilians killed: %1",_this];
  if (_this >= SHK_DeadCivilianLimit) then {
    SHK_EndMission = true;
    publicvariable "SHK_EndMission";
  };
};

// Following is a version that considers whether the Civs were killed by a certain faction://////////////////
SHK_eh_killed = {
  private "_side";
  _side = side (_this select 1);
  if (_side == WEST) then {
    SHK_DeadCivilianCount = SHK_DeadCivilianCount + 1;
    publicvariable "SHK_DeadCivilianCount";
    if isdedicated then {
      if (_this >= SHK_DeadCivilianLimit) then {
        SHK_EndMission = true;
        publicvariable "SHK_EndMission";
      };
    } else {
      SHK_DeadCivilianCount call SHK_fnc_deadCivilians;
    };
  };
};
// END of  Faction killer Check- //////////////////////////////////////////////////////////////////

if isserver then {
  {
    if (side _x == Civilian && _x iskindof "Man") then {
      _x addEventHandler ["killed", SHK_eh_killed];
    };
  } foreach allunits;
} else {
  "SHK_DeadCivilianCount" addpublicvariableeventhandler { (_this select 1) call SHK_fnc_deadCivilians };
};
[] spawn {
  waituntil {!isnil "BIS_alice_mainscope"};
  waituntil {!isnil "bis_fnc_variablespaceadd"};
  [BIS_alice_mainscope,"ALICE_civilianinit",[{_this addEventHandler ["killed", SHK_eh_killed]}]] call bis_fnc_variablespaceadd;
};