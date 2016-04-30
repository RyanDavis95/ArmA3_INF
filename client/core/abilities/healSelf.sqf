private ["_unit", "_dmg"];
_unit = _this param [0,objNull];
_healCount = _unit getVariable "INF_PlayerHeals";
_dmg = getDammage _unit;
_unit playMove "AinvPknlMstpSnonWnonDnon_medic_1";

sleep 6;

if (_healCount > 0) then {
    _unit setDammage 0;
    _unit setVariable ["INF_PlayerHeals", _healCount - 1, false];
} else {
    hint "Out of Heals!";
};