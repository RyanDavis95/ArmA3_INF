params["_unit","_sides"];
private["_dist","_tmpDist","_closest"];

_dist = 100000;
_closest = objNull;

for [{_i = 0},{_i < count _sides},{_i=_i+1}] do {  
    {
        _tmpDist = _unit distance _x;
        if (side _x == (_sides select _i) && _tmpDist < _dist) then {
            _closest = _x;
            _dist = _tmpDist;
        };   
    } forEach playableUnits;
};

_closest