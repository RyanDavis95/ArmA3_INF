params ["_unit"];
private ["_unit","_nearMen","_survivors","_survivorsCount", "_target"];

_survivors = missionNamespace getVariable "INF_CurrentSurvivors";


if (count _survivors > 0) then {
    _target = _survivors select (round (random ((count _survivors) - 1)));

    while {alive _target && side _target != civilian && _target != _unit} do {  
        
        _unit doMove (getPosATL _target);
        waitUntil { sleep .5; true;};
    };

    [_unit] spawn INF_fnc_trackSurvivor;   
};