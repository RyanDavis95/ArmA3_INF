private["_alpha"];

[] call INF_fnc_getUnitTeams;

_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
_alpha = _survivors call BIS_fnc_selectRandom;

missionNamespace setVariable ["INF_AlphaZombie", vehicleVarName _alpha, true];

_alpha setDammage 1;