/* Clean Up Shit */
_handle = [] spawn INF_S_fnc_matchCleanUp;
waitUntil { scriptDone _handle; };

/* Spawn Survivors in New Area */
_handle = [] spawn INF_S_fnc_zoneSpawn;
waitUntil { scriptDone _handle; };

/* Select First Zombie*/
_handle = [] spawn INF_S_fnc_initAlphaZom;
waitUntil { scriptDone _handle; };