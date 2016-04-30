private ["_survivors","_posFound","_survivorPositions", "_survPosCount"];
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
_survivorPositions = [];
_posFound = false;
_xCoord = 0;
_yCoord = 0;


{
    _survivorPositions pushBack (getPosATL _x);
} forEach _survivors;

_survPosCount = count _survivorPositions - 1;

while{_posFound == false} do {
    _xCoord = (_x select 0) + 50;
    _yCoord = (_x select 1) + 50;
    {
        if (![_xCoord,_yCoord,0] distance _x < 100 || ![_xCoord,_yCoord,0] distance _x > 45) then {
            
        };
        if (condition) then {
            
        };
        
    } forEach _survivorPositions;
    
};

(_this select 0) setPos [0,0,0];




_survivorPos = _survivorPositions select (round (random _survPosCount));

_xRand = [random[-100,-75,-50],random[50,75,100]] call BIS_fnc_selectRandom;
_yRand = [random[-100,-75,-50],random[50,75,100]] call BIS_fnc_selectRandom;

_xCoord = (_survivorPos select 0) + _xRand;
_xCoord = (_survivorPos select 1) + _yRand;


{
    if ([_xCoord,_yCoord,0] distance _x < 75) then {
        
        _survivorPos ... getPosATL _x
    } else {
        
    };
    
} forEach _survivorPositions;