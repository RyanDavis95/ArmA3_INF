params ["_unit"];

//Setup Unit Side
_westCenter = createCenter West;
_survGroup = createGroup West;
[_unit] joinSilent _survGroup;


call INF_fnc_getUnitTeams;
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
missionNamespace setVariable ["INF_CurrentSurvivors", _survivors - [_unit], true];
_zombies = missionNamespace getVariable "INF_CurrentZombiesList";
missionNamespace setVariable ["INF_CurrentZombiesList", _zombies pushBack _unit, true];

/* Abilities */
player setVariable ["INF_SpeedBoosts",2,false];
player setVariable ["INF_PlayerMines",2,false];
player setVariable ["INF_PlayerHeals",3,false];


player addEventHandler["HandleDamage",{_this call INF_fnc_HandleSurvDamage}];
player addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];

//Speed
_unit setAnimSpeedCoef 1;

/* Perks and Abilities */
_unit call INF_fnc_removePerks;
_unit call INF_fnc_survPerkHUD;