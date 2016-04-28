private ["_unit","_velocity","_xVec","_yVec","_zVec"];

_unit = _this param [0,objNull];

if (isTouchingGround _unit) then {
    //_unit playMove "AovrPercMrunSrasWrflDf";
    
    _velocity = velocity _unit;
    _xVec = _velocity select 0;
    _yVec = _velocity select 1;
    _zVec = _velocity select 2;
    
    _unit setVelocity [_xVec,_yVec,_zVec + 4.5];
};