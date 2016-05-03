params["_unit"];
private ["_bluefor","_alpha"];
_alpha = missionNamespace getVariable "INF_AlphaZombie";
_players = missionNamespace getVariable "INF_currentPlayers";

waitUntil { sleep 1;
    {  
        if (side _x != Independent && alive _x && _unit distance _x < 2.5) then {
            _unit playMove "AwopPercMstpSgthWnonDnon_throw";
            sleep 2;
            if (vehicleVarName _unit == _alpha) then {
                _x setDammage 1;
            } else {
                _x setDamage ((getDammage _x) + .75);
            };
        };
    } forEach _players; false;      
};
