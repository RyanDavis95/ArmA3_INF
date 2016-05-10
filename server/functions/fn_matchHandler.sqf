_selectedPos = [] call INF_fnc_getStartLoc;

{
if !(isPlayer _x) then {  
    _x call INF_fnc_initAISurvivor;
} else {
    _x call INF_fnc_initSurvivor;           
};
     
_location = getMarkerPos _selectedPos;
_area = getMarkerSize _selectedPos;
_genPos = [_location,_area] call INF_fnc_generatePos;
_x setPosATL _genPos;
        
} forEach playableUnits;    

hint "wtf";

[] spawn INF_fnc_initAlphaZombie;