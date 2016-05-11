params ["_unit"];
/* Setup Initial Client Variables */
[_unit] call compile PreprocessFileLineNumbers "server\configuration.sqf";

_unit removeAllEventHandlers "MPRespawn";
_unit addMPEventHandler["MPRespawn",{_this spawn INF_fnc_findRespawnPoint; _this call INF_fnc_initAIZombie;}];

switch (side _unit) do {
    
    case west: {
            _handle = [_unit] spawn INF_fnc_initAISurvivor;
            waitUntil { scriptDone _handle;};
        };
    case east: {
            _handle = [_unit] spawn INF_fnc_initAISurvivor;
            waitUntil { scriptDone _handle;};
    };
    case independent: {
            _handle = [_unit] spawn INF_fnc_initAIZombie;
            waitUntil { scriptDone _handle;};
    };
    case civilian: {
            _handle = [_unit] spawn INF_fnc_initAISurvivor;
            waitUntil { scriptDone _handle;};
    };
};
