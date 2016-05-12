params ["_unit"];

//Setup Unit Side
_westCenter = createCenter West;
_survGroup = createGroup West;
[_unit] joinSilent _survGroup;
[] call INF_fnc_updateTeams;
//[_unit, "SURVIVOR"] call INF_S_fnc_setTeam;

/* Setup Event Handlers */
[_unit] call INF_fnc_setupEVH;

if (!isPlayer _unit) then {
    
    /* AI Attributes */
    _unit setBehaviour "AWARE";
    _unit setAnimSpeedCoef 1;
    
} else {

    /* Abilities */
    _unit setVariable ["INF_SpeedBoosts",2,false];
    _unit setVariable ["INF_PlayerMines",2,false];
    _unit setVariable ["INF_PlayerHeals",3,false];

    /* Perks and Abilities */
    _unit call INF_fnc_removePerks;
    _unit call INF_fnc_survPerkHUD;
    
};