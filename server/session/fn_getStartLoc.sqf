/*
    Starting Locations must be named as 'startingPosition_'

*/
private["_markers","_startPositions","_selectedPos"];

_markers = allMapMarkers;
_startPositions = [];
{   
    _a = toArray _x;
    _a resize 17;
    if (toString _a == "startingPosition_") then {
        _startPositions pushBack _x;
    };
} forEach _markers;

_selectedPos = _startPositions call BIS_fnc_selectRandom;
//if (isNil _selectedPos) exitWith {hint "Start Locations not found"};

_selectedPos