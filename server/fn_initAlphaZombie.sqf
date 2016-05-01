private["_alpha"];
sleep 1;

_survivors = missionNamespace getVariable "INF_CurrentSurvivors";

_alpha = _survivors call BIS_fnc_selectRandom;
missionNamespace setVariable ["INF_AlphaZombie", _alpha, true];

_alpha setDammage 1;