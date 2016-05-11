/* Setup Server Configuration */
[] call compile PreprocessFileLineNumbers "server\configuration.sqf";

{
    _x setVariable ["INF_OriginalSide",side _x,false];
        /* Initialize AI Units */
        if !(isPlayer _x) then {  
            [_x] call INF_fnc_initAI;
        }; 
} forEach playableUnits;

"INF_StartNewMatch" addPublicVariableEventHandler {[] spawn INF_fnc_matchHandler};
publicVariableServer "INF_StartNewMatch";