private ["_mine","_unit","_mineCount"];

_unit = _this param [0,objNull];
_mineCount = _unit getVariable "INF_PlayerMines";
hint str "test";
if (_mineCount > 0) then {
    _mine = createMine["APERSBoundingMine", getPosATL _unit, [], 0];
    _unit setVariable ["INF_PlayerMines", _mineCount - 1 ];
} else {
    hint "Out of Mines!";
};
