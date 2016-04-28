private ["_unit"];

_unit = _this param [0, objNull];
removeHeadgear _unit;
removeGoggles _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;
_unit addUniform "U_O_GhillieSuit";