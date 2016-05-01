params ["_unit"];

removeHeadgear _unit;
removeGoggles _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;

_side = _unit getVariable "INF_OriginalSide";

if (_side == east) then {
    _unit addUniform "U_O_GhillieSuit";
} else {
    _unit addUniform "U_B_GhillieSuit";
};
