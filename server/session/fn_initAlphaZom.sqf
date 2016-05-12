private["_alpha"];

_teams = [] call INF_fnc_updateTeams;
_alpha = (_teams select 0) call BIS_fnc_selectRandom;
missionNamespace setVariable ["INF_AlphaZombie", vehicleVarName _alpha, true];

_alpha setDammage 1;