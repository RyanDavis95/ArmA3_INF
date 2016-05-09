params ["_unit"];

//_unit call INF_fnc_removePerks;

/* Abilities */
player setVariable ["INF_SpeedBoosts",2,false];
player setVariable ["INF_PlayerMines",2,false];
player setVariable ["INF_PlayerHeals",3,false];

player addEventHandler["HandleDamage",{_this call INF_fnc_HandleSurvDamage}];
player addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];

_unit call INF_fnc_survPerkHUD;