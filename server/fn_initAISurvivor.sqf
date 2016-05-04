params ["_unit"];
_unit setBehaviour "AWARE";
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleSurvDamage}];
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];