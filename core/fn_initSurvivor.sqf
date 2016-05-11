params ["_unit"];

//Setup Unit Side
_westCenter = createCenter West;
_survGroup = createGroup West;
[_unit] joinSilent _survGroup;
call INF_fnc_updateTeams;

/* Abilities */
_unit setVariable ["INF_SpeedBoosts",2,false];
_unit setVariable ["INF_PlayerMines",2,false];
_unit setVariable ["INF_PlayerHeals",3,false];


_unit removeAllEventHandlers "HandleDamage";
_unit removeAllEventHandlers "MPKilled";
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleSurvDamage}];
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];

//Speed
_unit setAnimSpeedCoef 1;

/* Perks and Abilities */
_unit call INF_fnc_removePerks;
_unit call INF_fnc_survPerkHUD;