/*
    Sets Team Public Variables
    Returns [Survivors List, Zombies List]

*/
private ["_tmpSurvivors", "_tmpZombies"];
_tmpSurvivors = [];
_tmpZombies = [];

{
    if (side _x == Independent) then {          
        _tmpZombies pushBack _x;
        [_x,"ZOMBIE"] call INF_S_fnc_setTeam;
    } else {      
        _tmpSurvivors pushBack _x;
        [_x,"SURVIVOR"] call INF_S_fnc_setTeam;
    };          
} forEach playableUnits;

missionNamespace setVariable ["INF_CurrentPlayers",_tmpSurvivors + _tmpZombies,true];
missionNamespace setVariable ["INF_CurrentSurvivors",_tmpSurvivors,true];
missionNamespace setVariable ["INF_CurrentZombies",_tmpZombies,true];

[_tmpSurvivors,_tmpZombies]