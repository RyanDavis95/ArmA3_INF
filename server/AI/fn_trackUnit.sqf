params ["_unit","_target"];
private ["_tracking"];

_tracking = false;
if (alive _target) then {
    _unit doMove getPosATL _target;
    _unit setSpeedMode "FULL";
    _tracking = true;
};

_tracking