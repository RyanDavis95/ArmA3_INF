private ["_unit","_tmpStamina"];

_unit = _this param [0,objNull];
_tmpStamina = getStamina _unit;


_unit setAnimSpeedCoef 1.15;
_unit enableStamina false;

sleep 10;

_unit enableStamina true;
_unit setAnimSpeedCoef 1;
_unit setStamina (_tmpStamina - 10);