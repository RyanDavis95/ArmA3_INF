params ["_unit"];
private ["_unit","_nearMen","_survivors","_survivorsCount", "_target"];
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
_target = objNull;
_newTarget = objNull;
_time = serverTime;
if (count _survivors > 0) then {
    _target = _unit call INF_fnc_nearestUnit;

        while {alive _target && side _target != side _unit && alive _unit} do {        
        _targetPos = getPosATL _target;
        _unit doMove getPosATL _target;
        _unit setSpeedMode "FULL";      

        
        waitUntil { sleep .1; _timeDiff = serverTime - _time;
                    _survivors = missionNamespace getVariable "INF_CurrentSurvivors";  
                    if (count _survivors > 0) then {
                        [] call INF_fnc_updateTeams;
                        _survivors = missionNamespace getVariable "INF_CurrentSurvivors";
                        _newTarget = [_unit,_survivors] call INF_fnc_nearestUnit;
                    };
                    ((getPosATL _target) distance _targetPos) > 1 || _target != _newTarget || !alive _unit || !alive _target || _timeDiff > 1 
                  };
        if (_target != _newTarget) then {
            _target = _newTarget;
        };        
    };   
};
