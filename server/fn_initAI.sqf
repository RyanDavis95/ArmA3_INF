params ["_unit"];
/* Setup Initial Client Variables */
[_unit] call compile PreprocessFileLineNumbers "server\configuration.sqf";

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
            _handle = [_unit] spawn INF_fnc_initAISurvivor;
            waitUntil { scriptDone _handle;};
    };
    case civilian: {
            hint "Something should go here for JIP";
    };
};

/* Setup Event Handlers */
_unit addMPEventHandler["MPRespawn",{_this call INF_fnc_initAIZombie; _this call INF_fnc_findRespawnPoint;}];