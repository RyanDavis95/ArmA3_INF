private ["_unit","_velocity","_xVec","_yVec","_zVec"];

_unit = _this param [0,objNull];
_jumping = _unit getVariable "INF_playerJumping";
if (isTouchingGround _unit && !_jumping) then {
    _unit setVariable ["INF_playerJumping",true,false];
    _velocity = velocity _unit;
    _dir = getDir _unit;

    _xVec = (_velocity select 0) + (sin _dir * .5);
    _yVec = (_velocity select 1) + (cos _dir * .5);
    _zVec = (_velocity select 2) + (random[3,3.5,4.5]);
    
    _unit setVelocity [_xVec,_yVec,_zVec];
    _unit switchMove "AovrPercMrunSrasWrflDf";
	waitUntil{animationState _unit != "AovrPercMrunSrasWrflDf"}; 
    [player,"AovrPercMrunSrasWrflDf",player] remoteExec ["INF_fnc_animSync",0];
    _unit setFatigue ((getFatigue _unit) + .1);
    _unit spawn {
        waitUntil {_landed = false; if (isTouchingGround _this) then {sleep .15; _this setVariable ["INF_playerJumping",false,false]; _landed = true}; _landed };
    };
};