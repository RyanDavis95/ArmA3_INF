params["_unit"];
private["_team"];
//if !(_unit in playableUnits) exitWith {hint "Bad paramater passed"};

_team = [_unit] call INF_S_fnc_getTeam;


_unit removeAllEventHandlers "MPRespawn";
_unit removeAllEventHandlers "MPKilled";
_unit removeAllEventHandlers "HandleDamage";

if (_team == "ZOMBIE") then {
    
    /* Respawn */
    _unit addMPEventHandler["MPRespawn",
    {_this call INF_fnc_initZombie;}]; 
    
    /* Damage */
    _unit addEventHandler["HandleDamage",
    {_this call INF_fnc_HandleZomDamage}];
    
    /* Killed */
    _unit addMPEventHandler["MPKilled",
    {(_this select 0) removeAllEventHandlers "HandleDamage"; 
    _this call INF_fnc_cleanUp;}]; 
};

if (_team == "SURVIVOR") then {
    
    /* Respawn */
    _unit addMPEventHandler["MPRespawn",
    {_this call INF_fnc_initSurvivor;}];
     
     /* Damage */
     _unit addEventHandler["HandleDamage",
     {_this call INF_fnc_HandleSurvDamage}];
     
     /* Killed */
     _unit addMPEventHandler["MPKilled",
     {(_this select 0) removeAllEventHandlers "HandleDamage"}];
};