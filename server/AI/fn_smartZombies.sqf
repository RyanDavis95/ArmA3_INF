params["_unit"];
_enemySides = [civilian,east,west];
_hasTargets = true;

[_unit,_enemySides] spawn INF_S_fnc_AIzomAttack;

while {alive _unit && _hasTargets} do {
    _target = [_unit,_enemySides] call INF_fnc_getNearestEnemy;
    if (_target != objNull) then {
        [_unit,_target] call INF_S_fnc_trackUnit;
    } else {
        _hasTargets = false;
    };
    sleep .5;
};
