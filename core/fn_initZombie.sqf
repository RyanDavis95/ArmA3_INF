params ["_unit"];

// Update Lists
_survivors = missionNamespace getVariable "INF_CurrentSurvivors";
missionNamespace setVariable ["INF_CurrentSurvivors", _survivors - [_unit], true];

_zombies = missionNamespace getVariable "INF_CurrentZombies";
missionNamespace setVariable ["INF_CurrentZombies", _zombies pushBack _unit, true];


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
_unit removeAllEventHandlers "AnimChanged";
_unit removeAllEventHandlers "HandleDamage";
//_unit addEventHandler ["AnimChanged", {_this call INF_fnc_ForceSprint}];
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleZomDamage; _this call INF_fnc_BloodEffects;}];    
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];

//Increased Speed
_unit setAnimSpeedCoef 1.25;

//Appearance
_unit call INF_fnc_removeGear;
_unit call INF_fnc_BloodEffects;

//Setup Unit Side
_eastCenter = createCenter civilian;// if no other east unit exists in the mission
_zomGroup = createGroup civilian;
[_unit] joinSilent _zomGroup;//_targetGroup could be 'group player' for example