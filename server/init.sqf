private ["_tmpCurrentSurvivors", "_tmpCurrentZombies"];
_tmpCurrentSurvivors = [];
_tmpCurrentZombies = [];

{
    _x setVariable ["INF_OriginalSide",side _x,false];
    _tmpCurrentSurvivors pushBack [_x];
         
} forEach playableUnits;

missionNamespace setVariable ["INF_CurrentPlayers",_tmpCurrentSurvivors + _tmpCurrentZombies,true];
missionNamespace setVariable ["INF_CurrentSurvivors",_tmpCurrentSurvivors,true];
missionNamespace setVariable ["INF_CurrentZombies",[],true];

/* Initialize AI Units */
{
       if !(isPlayer _x) then {  
           [_x] call INF_fnc_initAI;
       }; 
} forEach playableUnits;

[] spawn INF_fnc_initAlphaZombie;