params ["_unit"];

//Setup Unit Side
_westCenter = createCenter West;
_survGroup = createGroup West;
[_unit] joinSilent _survGroup;
call INF_fnc_updateTeams;

//Event Handlers
_unit removeAllEventHandlers "MPKilled";
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];

_unit setBehaviour "AWARE";
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleSurvDamage}];