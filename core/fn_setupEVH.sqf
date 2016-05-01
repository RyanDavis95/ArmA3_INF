
/* Player Controls */
waitUntil { !isNull (findDisplay 46); };
(findDisplay 46) displayAddEventHandler ["KeyDown", {_this call INF_fnc_keyHandler; false;}];
(findDisplay 46) displayAddEventHandler ["MouseButtonDown", {_this call INF_fnc_mouseHandler; false;}];

/* Background Music */
addMusicEventHandler ["MusicStop",{[] call INF_fnc_playMusic}];

/* Respawn as Zombie */
player addMPEventHandler["MPRespawn",{_this call INF_fnc_initZombie; _this call INF_fnc_findRespawnPoint;}];