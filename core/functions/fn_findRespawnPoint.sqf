private ["_survivors","_survivorPositions","_survPosCount","_survivorGroups","_tmpGroup"];
params ["_unit"];

[] call INF_fnc_getUnitTeams;
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
_zombies = missionNamespace getVariable "INF_CurrentZombies";

_survivorPositions = [];
_survivorGroups = [];
_tmpGroup = [];

{
    _survivorPositions pushBack (getPosATL _x);
} forEach _survivors;

{
    if ((count _survivorPositions - 1) > 0) then {       
        _tmpGroup pushBack _x;
        for "_i" from 1 to _survPosCount step 1 do {   
        _curr = _survivorPositions select _i;                     
            if (_curr distance _x < 25) then {                                           
                  _tmpGroup pushBack _curr;
              };
        };  
        _survivorGroups pushBack _tmpGroup;
        _survivorPositions = _survivorPositions - _tmpGroup;
        _tmpGroup = [];
    };
} forEach _survivorPositions;


/* Spawn Distance Vars */
private["_fract","_multiplier","_xCoord","_yCoord","_genPos","_posFound","_survivorPos","_xRand","_yRand"];
_fract = count _survivorGroups/10;
_multiplier = 100 * _fract;
_posFound = false;

if (count _survivorGroups > 0) then {
  while { !_posFound } do {
    _posFound = true;
    _survivorPos = _survivorGroups select (round (random ((count _survivorGroups) - 1))) select 0;
    
    _xRand,_yRand = 0;
    /* Generate Spawn Point */
    _xRand = [random[100,random 100,0],random[0,random -100,-100]] call BIS_fnc_selectRandom;
    if (_xRand < -90) then {
        _yRand = [random[25,10,0], random[0,-10,-25]] call BIS_fnc_selectRandom;
    };
    if (_xRand > -90 && _xRand < -50) then {
        _yRand = [random[50,25,15], random[-15,-25,-50]] call BIS_fnc_selectRandom;
    };
    if (_xRand > -50 && _xRand < -25) then {
        _yRand = [random[65,50,35], random[-35,-50,-65]] call BIS_fnc_selectRandom;
    };
    if (_xRand > -25 && _xRand < -10) then {
        _yRand = [random[85,75,50], random[-50,-75,-85]] call BIS_fnc_selectRandom;
    };
    if (_xRand > -10 && _xRand < 0) then {
        _yRand = [random[100,90,75], random[-75,-90,-100]] call BIS_fnc_selectRandom;
    };
    if (_xRand > 0 && _xRand < 10) then {
        _yRand = [random[100,90,75], random[-75,-90,-100]] call BIS_fnc_selectRandom;
    };
    if (_xRand > 10 && _xRand < 25) then {
        _yRand = [random[85,75,50], random[-50,-75,-85]] call BIS_fnc_selectRandom;
    };
    if (_xRand > 25 && _xRand < 50) then {
        _yRand = [random[65,50,35], random[-35,-50,-65]] call BIS_fnc_selectRandom;
    };
    if (_xRand > 50 && _xRand < 90) then {
        _yRand = [random[50,25,15], random[-15,-25,-50]] call BIS_fnc_selectRandom;
    };
    if (_xRand > 90) then {
        _yRand = [random[25,10,0], random[0,-10,-25]] call BIS_fnc_selectRandom;
    };

    _xCoord = (_survivorPos select 0) + _xRand;
    _yCoord = (_survivorPos select 1) + _yRand;
    _genPos = [_xCoord,_yCoord,0];  
    {

        if (_genPos distance (_x select 0) < 50 || surfaceIsWater _genPos) then {
            _posFound = false;
        };
    } forEach _survivorGroups;
  };
  _unit setPosATL _genPos;
};

