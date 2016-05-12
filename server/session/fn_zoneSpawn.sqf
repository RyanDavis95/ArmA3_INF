_selectedPos = [] call INF_S_fnc_getStartLoc;
{
     _handle = [_x] spawn INF_fnc_initSurvivor;
     waitUntil { scriptDone _handle;}; 
        
    _location = getMarkerPos _selectedPos;
    _area = getMarkerSize _selectedPos;

    _genPos = [_location,_area] call INF_fnc_generatePos;
    [_x,_genPos, 0] call KK_fnc_setPosAGLS;
           
} forEach playableUnits;