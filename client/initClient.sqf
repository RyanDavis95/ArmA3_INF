
waitUntil { !isNull (findDisplay 46); };
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call KeyHandlerFNC;false;"];
(findDisplay 46) displayAddEventHandler ["MouseButtonDown", "_this call MouseHandlerFNC;false;"];



player setVariable ["INF_SpeedBoosts",2,false];
player setVariable ["INF_PlayerMines",2,false];
player setVariable ["INF_PlayerHeals",3,false];


/* Start Background Music */
call INF_fnc_playMusic;
addMusicEventHandler ["MusicStop",{call INF_fnc_playMusic}];

//player addAction ["Shock", INF_fnc_spawnThunderbolt];s