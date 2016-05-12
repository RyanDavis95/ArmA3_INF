params["_unit"];

_team = _unit getVariable "INF_unitTeam";
//if (isNil _team) exitWith {hint "Unit has no team"};
hint str _team;
_team