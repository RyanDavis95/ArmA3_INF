/* Setup Initial Client Variables */
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";

switch (playerSide) do {
    
    case west: {
            _handle = [player] spawn INF_fnc_initSurvivor;
            waitUntil { scriptDone _handle;};
        };
    case east: {
            _handle = [player] spawn INF_fnc_initSurvivor;
            waitUntil { scriptDone _handle;};
    };
    case independent: {
            _handle = [player] spawn INF_fnc_initZombie;
            waitUntil { scriptDone _handle;};
    };
    case civilian: {
            hint "Something should go here for JIP";
    };
};

/* Setup Event Handlers */
[] call INF_fnc_setupEVH;

/* Start Background Music */
[] call INF_fnc_playMusic;

/* Setup Player HUD */
[] call INF_fnc_hudSetup;