/* Setup Server Variables */
[] call compile PreprocessFileLineNumbers "server\configuration.sqf";
{
    _x setVariable ["INF_OriginalSide",side _x,false];
} forEach playableUnits;

/* Start Match */
"INF_StartNewMatch" addPublicVariableEventHandler {[] spawn INF_S_fnc_startRound};
publicVariableServer "INF_StartNewMatch";