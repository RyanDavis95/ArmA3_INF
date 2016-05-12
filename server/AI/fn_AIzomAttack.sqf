params["_unit","_enemySides"];
private ["_dist"];
_dist = 2;

waitUntil {  
    _target = [_unit,_enemySides] call INF_fnc_getNearestEnemy;
    if (_target == objNull || !alive _unit) exitWith {};
    if (_unit distance _target < _dist) then {
        _unit setDir ((getPosATL _unit) getDir (getPosATL _target));
        _unit playMove "AwopPercMstpSgthWnonDnon_throw";
        sleep 1;
        _target setDammage 1;
    };  
};