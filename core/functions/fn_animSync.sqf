params ["_unit","_anim"];

if (isNull _unit || {local _unit}) exitWith {};
_unit switchMove _anim;