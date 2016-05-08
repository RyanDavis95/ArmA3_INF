/* Identifiers */
player setVariable ["steam64ID",getPlayerUID player,false];
player setVariable ["realname",profileName,true];

/* Setup */
player setVariable ["INF_playedMusic",[],false];
player setVariable ["INF_OriginalSide",playerSide,false];

_abilities = getArray (missionConfigFile >> "INF_Settings" >> "survivorAbilities");

_ability1 = _abilities select 0;

player setVariable ["INF_Ability1",_ability1,false];
player setVariable ["INF_Ability2",_ability1,false];
player setVariable ["INF_Ability3",_ability1,false];
player setVariable ["INF_Ability4",_ability1,false];

player setVariable ["INF_A1CoolDown",false];
player setVariable ["INF_A2CoolDown",false];
player setVariable ["INF_A3CoolDown",false];
player setVariable ["INF_A4CoolDown",false];