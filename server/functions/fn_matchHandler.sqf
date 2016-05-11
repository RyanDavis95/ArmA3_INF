_selectedPos = [] call INF_fnc_getStartLoc;
hint "Working! :)";
{
    if !(isPlayer _x) then {  
        _handle = [_x] spawn INF_fnc_initAISurvivor;
        waitUntil { scriptDone _handle;};
    } else {
        _handle = [_x] spawn INF_fnc_initSurvivor;
        waitUntil { scriptDone _handle;};         
    };
        
    _location = getMarkerPos _selectedPos;
    _area = getMarkerSize _selectedPos;
    _genPos = [_location,_area] call INF_fnc_generatePos;
    _x setPosATL _genPos;
        
} forEach playableUnits;


[] spawn INF_fnc_initAlphaZombie;