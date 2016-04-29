private ["INF_CurrentSurvivors", "INF_CurrentZombies"];
_tmpCurrentSurvivors = [];
_tmpCurrentZombies = [];

{
       if (side _x == West) then {
           //_x call INF_fnc_createSurvivor;
           _tmpCurrentSurvivors pushBack _x;
       };   
          
       if (side _x == East) then {
           _tmpCurrentZombies pushBack _x;
           _x call INF_fnc_createZombie;
           _x addMPEventHandler["MPRespawn",{_this call INF_fnc_createZombie; _this call INF_fnc_findRespawnPoint; }];
       };
          
} forEach playableUnits;

missionNamespace setVariable ["INF_CurrentPlayers",_tmpCurrentSurvivors + _tmpCurrentZombies,true];
missionNamespace setVariable ["INF_CurrentSurvivors",_tmpCurrentSurvivors,true];
missionNamespace setVariable ["INF_CurrentZombies",_tmpCurrentZombies,true];