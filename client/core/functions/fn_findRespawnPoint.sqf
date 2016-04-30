private ["_survivors","_survivorPositions","_survPosCount","_survivorGroups","_tmpGroup"];

_unit = _this select 0;
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
_zombies = missionNamespace getVariable "INF_CurrentZombies";
_survivorPositions = [];
_survPosCount = 0;
_survivorGroups = [];
_tmpGroup = [];

if (side (_unit)==west) then {
    _survivors = _survivors - [_unit];
    missionNamespace setVariable ["INF_CurrentSurvivors",_survivors,true];
    _zombies = _zombies + [_unit];
    missionNamespace SetVariable ["INF_CurrentZombies",_zombies,true];
};

{
    _survivorPositions pushBack (getPosATL _x);
} forEach _survivors;

{
    _survPosCount = (count _survivorPositions) - 1;
    if (_survPosCount > 0) then {
        
        _tmpGroup pushBack _x;

        for "_i" from 1 to _survPosCount step 1 do {   
        _curr = _survivorPositions select _i;   
                     
            if (_curr distance _x < 30) then {                                           
                  _tmpGroup pushBack _curr;
              };
        };  
        _survivorGroups pushBack _tmpGroup;
        _survivorPositions = _survivorPositions - _tmpGroup;
        _tmpGroup = [];
    };

} forEach _survivorPositions;


/* Spawn Distance Vars */
private["_fract","_multiplier","_nMin","_pMin","_nMax","_pMax","_nAvg","_pAvg","_posFound"];

_fract = count _survivorGroups/10;
_multiplier = 100 * _fract;
_nMin = -100;
_pMin = 50;
_nMax = -50;
_pMax = 100;
_nAvg = _nMin - _nMax;
_pAvg = _pMax - _pMin;
_genPos = [];
_posFound = false;

while { !_posFound } do {

private["_survivorPos","_lowRand","_highRand","_xRand","_yRand","_xCoord","_yCoord","_zCoord","_genPos","_currGroupPos"];

    _posFound = true;
    _survivorPos = _survivorGroups select (round (random ((count _survivorGroups) - 1))) select 0;
    _lowRand = random [_nMin,_nAvg,_nMax];
    _highRand = random[_pMin,_pAvg,_pMax];
    _xRand = [_lowRand,_highRand] call BIS_fnc_selectRandom;
    _yRand = [_lowRand,_highRand] call BIS_fnc_selectRandom;
    _xCoord = (_survivorPos select 0) + _xRand;
    _yCoord = (_survivorPos select 1) + _yRand;
    _zCoord = 0;
    _genPos = [_xCoord,_yCoord,_zCoord];    
    {
        _currGroupPos = _x select 0;
        if (_genPos distance _currGroupPos < 50 || surfaceIsWater _genPos) then {
            _posFound = false;
        };
    } forEach _survivorGroups;
};
_unit setPosATL _genPos;