params ["_unit"];
private ["_unit","_nearMen","_survivors","_survivorsCount", "_target"];
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
if (count _survivors > 0) then {
    _target = _survivors select (round (random ((count _survivors) - 1)));
    _targetPos = [];
    while {alive _target && side _target != side _unit && alive _unit} do {
        _targetPos = getPosATLVisual _target;
        _unit doMove _targetPos;
        _unit setSpeedMode "FULL";
        waitUntil { getPosATLVisual _target distance _targetPos > 1 || !alive _target || side _target == side _unit || !alive _unit}; 
    };   
};
if (alive _unit) then {
    [_unit] spawn INF_fnc_trackSurvivor; 
};
