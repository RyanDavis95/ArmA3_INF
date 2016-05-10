params ["_centerPos", "_area"];

_xRand,_yRand = 0;  

_length = _area select 0;
_width = _area select 1;

/* Generate Spawn Point */
_xRand = [random[_length,random _length,0],random[0,random -_length,-_length]] call BIS_fnc_selectRandom;
_ratio = _xRand / _length;


if (_ratio < -0.9) then {
    _yRand = [random[0.25*_width,0.1*_width,0], random[0,-10,-25]] call BIS_fnc_selectRandom;
};
if (_ratio > -0.9 && _ratio < -0.5) then {
    _yRand = [random[0.5*_width,0.25*_width,0.15*_width], random[-0.15*_width,-0.25*_width,-0.50*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > -0.5 && _ratio < -0.25) then {
    _yRand = [random[0.65*_width,0.50*_width,0.35*_width], random[-35*_width,-50*_width,-65*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > -0.25 && _ratio < -0.1) then {
    _yRand = [random[0.85*_width,0.75*_width,0.50*_width], random[-0.50*_width,-0.75*_width,-0.85*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > -0.1 && _ratio < 0) then {
    _yRand = [random[1*_width,0.90*_width,0.75*_width], random[-0.75*_width,-0.90*_width,-1*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > 0 && _ratio < 0.1) then {
    _yRand = [random[1*_width,0.90*_width,0.75*_width], random[-0.75*_width,-0.90*_width,-1*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > 0.1 && _ratio < 0.25) then {
    _yRand = [random[0.85*_width,0.75*_width,0.50*_width], random[-0.50*_width,-0.75*_width,-0.85*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > 0.25 && _ratio< 0.5) then {
    _yRand = [random[0.65*_width,0.50*_width,0.35*_width], random[-0.35*_width,-0.50*_width,-0.65*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > 0.50 && _ratio< 0.90) then {
    _yRand = [random[0.50*_width,0.25*_width,0.15*_width], random[-0.15*_width,-0.25*_width,-0.50*_width]] call BIS_fnc_selectRandom;
};
if (_ratio > 0.90) then {
    _yRand = [random[0.25*_width,0.10*_width,0*_width], random[0*_width,-0.10*_width,-0.25*_width]] call BIS_fnc_selectRandom;
};

_xCoord = (_centerPos select 0) + _xRand;
_yCoord = (_centerPos select 1) + _yRand;
_genPos = [_xCoord,_yCoord,0];
    
_genPos