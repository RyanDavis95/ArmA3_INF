/* Player Controls */
waitUntil { !isNull (findDisplay 46); };
(findDisplay 46) displayAddEventHandler ["KeyDown", {_this call INF_fnc_keyDownHandler;}];
(findDisplay 46) displayAddEventHandler ["KeyUp", {_this call INF_fnc_keyUpHandler;}];
(findDisplay 46) displayAddEventHandler ["MouseButtonDown", {_this call INF_fnc_mouseHandler; true;}];

/* Background Music */
addMusicEventHandler ["MusicStop",{[] call INF_fnc_playMusic}];

/* Respawn as Zombie */
player addMPEventHandler["MPRespawn",{_this call INF_fnc_initZombie; _this call INF_fnc_findRespawnPoint;}];

addMissionEventHandler ["Draw3D",{_this call INF_fnc_hudUpdate}];