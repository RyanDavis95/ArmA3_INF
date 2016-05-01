params ["_unit"];


/* Setup */
_unit setVariable ["INF_OriginalSide",side _unit,false];

/* Abilities */
_unit setVariable ["INF_SpeedBoosts",2,false];
_unit setVariable ["INF_PlayerMines",2,false];
_unit setVariable ["INF_PlayerHeals",3,false];