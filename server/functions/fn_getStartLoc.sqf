_markers = allMapMarkers;
_startingPositions = [];
{
    
    _a = toArray _x;
    _a resize 17;
    if (toString _a == "startingPosition_") then {
        _startingPositions pushBack _x;
    };
} forEach _markers;

_selectedPos = _startingPositions call BIS_fnc_selectRandom;

_selectedPos