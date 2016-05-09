params ["_unit"];

//Setup Unit Side
_eastCenter = createCenter Independent;
_zomGroup = createGroup Independent;
[_unit] joinSilent _zomGroup;


/* Update Team Vars */
call INF_fnc_getUnitTeams;
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
missionNamespace setVariable ["INF_CurrentSurvivors", _survivors - [_unit], true];
_zombies = missionNamespace getVariable "INF_CurrentZombiesList";
missionNamespace setVariable ["INF_CurrentZombiesList", _zombies pushBack _unit, true];


// Damage Vars
_unit setVariable ["INF_faceDmg",0,false];
_unit setVariable ["INF_neckDmg",0,false];
_unit setVariable ["INF_headDmg",0,false];
_unit setVariable ["INF_pelvisDmg",0,false];
_unit setVariable ["INF_abdomenDmg",0,false];
_unit setVariable ["INF_diaphragmDmg",0,false];
_unit setVariable ["INF_chestDmg",0,false];
_unit setVariable ["INF_bodyDmg", 0,false];
_unit setVariable ["INF_armsDmg",0,false];
_unit setVariable ["INF_handsDmg",0,false];
_unit setVariable ["INF_legsDmg",0,false];
_unit setVariable ["INF_overallDmg",0,false];

//EventHandlers

_unit removeAllEventHandlers "HandleDamage";
_unit removeAllEventHandlers "MPKilled";
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleZomDamage;}];    
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"; _this call INF_fnc_cleanUp;}];

//Increased Speed
_unit setAnimSpeedCoef 1.25;

//Appearance
_unit call INF_fnc_removeGear;
_unit call INF_fnc_BloodEffects;
_unit call INF_fnc_glowEffect;
_unit setMimic "hurt";

/* Perks and Abilities */
_unit call INF_fnc_removePerks;
_unit call INF_fnc_zomPerkHUD;