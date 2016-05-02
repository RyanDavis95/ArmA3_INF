private ["_tmpCurrentSurvivors", "_tmpCurrentZombies"];
_tmpCurrentSurvivors = [];
_tmpCurrentZombies = [];

{
    if (side _x == civilian) then {          
        _tmpCurrentZombies pushBack _x;
    } else {      
        _tmpCurrentSurvivors pushBack _x;
    };
           
} forEach playableUnits;

missionNamespace setVariable ["INF_CurrentPlayers",_tmpCurrentSurvivors + _tmpCurrentZombies,true];
missionNamespace setVariable ["INF_CurrentSurvivors",_tmpCurrentSurvivors,true];
missionNamespace setVariable ["INF_CurrentZombiesList",_tmpCurrentZombies,true];
