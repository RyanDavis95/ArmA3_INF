/* Initialize AI Units */
{
    _x setVariable ["INF_OriginalSide",side _x,false];
       if !(isPlayer _x) then {  
           [_x] call INF_fnc_initAI;
       }; 
} forEach playableUnits;

[] spawn INF_fnc_initAlphaZombie;