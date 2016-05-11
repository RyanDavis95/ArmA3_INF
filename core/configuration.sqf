/* Identifiers */
player setVariable ["steam64ID",getPlayerUID player,false];
player setVariable ["realname",profileName,true];

/* Setup */
player setVariable ["INF_playedMusic",[],false];
player setVariable ["INF_OriginalSide",playerSide,false];

_survAbilities = getArray (missionConfigFile >> "INF_Settings" >> "survivorAbilities");
_survAbility1 = _survAbilities select 0;
_survAbility2 = _survAbilities select 1;
_survAbility3 = _survAbilities select 2;
_survAbility4 = _survAbilities select 3;
player setVariable ["INF_survAbility1",_survAbility1,false];
player setVariable ["INF_survAbility2",_survAbility2,false];
player setVariable ["INF_survAbility3",_survAbility3,false];
player setVariable ["INF_survAbility4",_survAbility4,false];

_zomAbilities = getArray (missionConfigFile >> "INF_Settings" >> "survivorAbilities");
_zomAbility1 = _zomAbilities select 0;
_zomAbility2 = _zomAbilities select 1;
_zomAbility3 = _zomAbilities select 2;
_zomAbility4 = _zomAbilities select 3;
player setVariable ["INF_zomAbility1",_zomAbility1,false];
player setVariable ["INF_zomAbility2",_zomAbility2,false];
player setVariable ["INF_zomAbility3",_zomAbility3,false];
player setVariable ["INF_zomAbility4",_zomAbility4,false];


player setVariable ["INF_A1CoolDown",false];
player setVariable ["INF_A2CoolDown",false];
player setVariable ["INF_A3CoolDown",false];
player setVariable ["INF_A4CoolDown",false];

player setVariable ["INF_playerJumping",false,false];
INF_CurrentPerkLayers = [];
INF_zombieAttacking = false;

player setVariable ["INF_PerkOneBaseLocation",[safeZoneX + (.05 * (3/4)), safeZoneY + safeZoneH - (safeZoneH / 24 * (4/3)) - .05],false];
player setVariable ["INF_PerkOneTitleLocation",[safeZoneX + (.05 * (3/4)),safeZoneY + safeZoneH - (safeZoneH / 24 * (4/3)) - .05 - (safeZoneH / 24 * (4/3)) * (1/4)],false];

KK_fnc_setPosAGLS = {
	params ["_obj", "_pos", "_offset"];
	_offset = _pos select 2;
	if (isNil "_offset") then {_offset = 0};
	_pos set [2, worldSize]; 
	_obj setPosASL _pos;
	_pos set [2, vectorMagnitude (_pos vectorDiff getPosVisual _obj) + _offset];
	_obj setPosASL _pos;
};