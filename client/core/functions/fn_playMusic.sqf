private["_selected"];

_selected = ["ambience0","ambience1","ambience2","ambience3","ambience4"] call BIS_fnc_selectRandom;
playMusic _selected;
