params ["_unit","_anim","_cancelOwner"];

if (isNull _unit || {local _unit && _cancelOwner}) exitWith {};
_unit switchMove _anim;