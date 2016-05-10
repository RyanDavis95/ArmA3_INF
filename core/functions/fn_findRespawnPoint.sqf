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

    _survPos = _survivorGroups select (round (random ((count _survivorGroups) - 1))) select 0;
    _genPos = [_survPos,[100,100]] call INF_fnc_generatePos;

    {

        if (_genPos distance (_x select 0) < 50 || surfaceIsWater _genPos) then {
            _posFound = false;
        };
    } forEach _survivorGroups;
  };
  _unit setPosATL _genPos;
};

