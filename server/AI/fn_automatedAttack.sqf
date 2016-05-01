params["_unit"];
private ["_bluefor","_alpha"];
_alpha = missionNamespace getVariable "INF_AlphaZombie";
_bluefor = [];

{
     if (side _x == West) then {
        _bluefor pushback _x;
     };
} forEach playableUnits;
    
    waitUntil { {sleep 0.1;
            if (_unit distance _x < 2) then {
                if (alive _x) then {
                    _unit playMove "AwopPercMstpSgthWnonDnon_throw";
                    sleep 1.5;
                    if (_unit isEqualTo _alpha) then {
                        _x setDammage 1;
                        hint "true";
                    }else {
                        _x setDamage ((getDammage _x) + .33);
                        //hint format["%1\n%2",_unit,_alpha];
                    };
                    
                } else {
                    _bluefor = _bluefor - [_x];
                };
            }; count _bluefor == 0 || not alive _unit;
        } forEach _bluefor;   
     }; 