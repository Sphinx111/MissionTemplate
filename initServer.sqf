//Here you execute stuff on server only

/*
//If you want a tracking marker (tag) on a moving object.
[] spawn {
  while {not isnull Vehiclename} do { "markername" setmarkerpos getpos Vehiclename; sleep 0.5; };
};
*/

//Map cleanup script (configs in sqf)
execVM "scripts\clearBodies.sqf";

//Load stuff you made in the 3D editor
//execVM "base.sqf";