params["_unit"];
private ["_alpha","_baseTime","_initPos"];

_alpha = missionNamespace getVariable "INF_AlphaZombie";
_baseTime = diag_tickTime;
_initPos = getPosATL _unit;

waitUntil { sleep 1;
_survivors = missionNamespace getVariable "INF_currentSurvivors";
    {
        if (side _x != Independent && alive _x && _unit distance _x < 1.5) then {
            _dir = _unit getRelDir _x;
            _unit setDir _dir;
            _unit playMove "AwopPercMstpSgthWnonDnon_throw";
            sleep 2;
            if (vehicleVarName _unit == _alpha) then {
                _x setDammage 1;
            } else {
                _x setDamage ((getDammage _x) + .65);
            };
        };
    } forEach _survivors;
    if (diag_tickTime - _baseTime > 5 && _initPos distance (getPosATL _unit) < 2) then {
        _unit setDammage 1;
    };
    !alive _unit || count _survivors <= 0;    
};
