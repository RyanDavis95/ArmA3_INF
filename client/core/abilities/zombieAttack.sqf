private ["_unit","_Bluefor"];
_unit = _this param [0,objNull];

{_unit reveal _x} forEach PlayableUnits;
_unit playMove "AwopPercMstpSgthWnonDnon_throw";
sleep 1.5;

if (side cursorTarget == west && _unit distance cursorTarget < 2) then {
    cursorTarget setDamage ((getDammage cursorTarget) + .33);
};
