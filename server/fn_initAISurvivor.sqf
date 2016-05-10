params ["_unit"];

//Setup Unit Side
_westCenter = createCenter West;
_survGroup = createGroup West;
[_unit] joinSilent _survGroup;

// Update Lists
[] call INF_fnc_getUnitTeams;
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
_survivors = _survivors + [_unit];
missionNamespace setVariable ["INF_CurrentSurvivors", _survivors, true];
_zombies = missionNamespace getVariable "INF_CurrentZombiesList";
missionNamespace setVariable ["INF_CurrentZombiesList", _zombies - [_unit], true];

_unit setBehaviour "AWARE";
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleSurvDamage}];
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];