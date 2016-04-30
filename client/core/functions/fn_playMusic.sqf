private["_selected"];

_selected = ["ambient0","ambient1","ambient2","ambient3"] call BIS_fnc_selectRandom;
playMusic _selected;
