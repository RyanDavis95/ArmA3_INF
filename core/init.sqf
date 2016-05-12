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
            _handle = [player] spawn INF_fnc_initSurvivor;
            waitUntil { scriptDone _handle;};
    };
};

if (hasInterface) then {
        
    /* Player Controls */
    waitUntil { !isNull (findDisplay 46); };
    (findDisplay 46) displayAddEventHandler ["KeyDown", {_this call INF_fnc_keyDownHandler;}];
    (findDisplay 46) displayAddEventHandler ["KeyUp", {_this call INF_fnc_keyUpHandler;}];
    (findDisplay 46) displayAddEventHandler ["MouseButtonDown", {_this call INF_fnc_mouseHandler; true;}];
    
    /* Setup Player HUD */
    [] call INF_fnc_hudSetup;
    addMissionEventHandler ["Draw3D",{_this call INF_fnc_hudUpdate}];
    /* Background Music */
    [] call INF_fnc_playMusic;
    addMusicEventHandler ["MusicStop",{[] call INF_fnc_playMusic}];
};