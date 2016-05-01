private["_selected"];

_selected = getArray (missionConfigFile >> "CfgMusic" >> "tracks") call BIS_fnc_selectRandom;
playMusic _selected;
