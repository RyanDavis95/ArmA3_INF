params["_unit"];
private ["_alpha","_baseTime","_initPos"];

_alpha = missionNamespace getVariable "INF_AlphaZombie";
_baseTime = diag_tickTime;
_initPos = getPosATL _unit;

while {alive _unit} do {
    
    waitUntil { sleep .5;
    _survivors = missionNamespace getVariable "INF_currentSurvivors";
    {
        if (side _x != side _unit && alive _x && _unit distance _x < 1.5) then {
            _dir = _unit getRelDir _x;
            _unit setDir (_unit getDir getPosATLVisual _x);
            _unit playMove "AwopPercMstpSgthWnonDnon_throw";
            sleep .5;
            if (vehicleVarName _unit == _alpha) then {
                _x setDammage 1;
                sleep .75;
            } else {
                _x setDamage ((getDammage _x) + .65);
                sleep .75;
            };
        };
    } forEach _survivors;
    !alive _unit || count _survivors <= 0;    
    };
};

/* SPAWN FIX
     if (diag_tickTime - _baseTime > 5 && _initPos distance (getPosATL _unit) < 2) then {
        _unit setDammage 1;
    };
*/