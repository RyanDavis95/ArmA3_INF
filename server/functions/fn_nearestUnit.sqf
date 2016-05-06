params ["_unit"];
private ["_target","_nearestDist","_dist"];

_units = missionNamespace getVariable "INF_CurrentSurvivors";
_target = objNull;
_nearestDist = 10000;
{
    _dist = vehicle _x distance _unit;
        if (_dist < _nearestdist && alive _x) then {
            _target = _x;
            _nearestdist = _dist;
        };
} forEach _units;

_target