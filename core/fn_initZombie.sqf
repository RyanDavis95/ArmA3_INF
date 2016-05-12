params ["_unit"];

//Setup Unit Side
_civCenter = createCenter Independent;
_zomGroup = createGroup Independent;
[_unit] joinSilent _zomGroup;
[] call INF_fnc_updateTeams;

[_unit, "ZOMBIE"] call INF_S_fnc_setTeam;
/* Setup Event Handlers */
[_unit] call INF_fnc_setupEVH;

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

if (!isPlayer _unit) then {

    // AI attributes
    _unit setbehaviour "CARELESS";
    _unit disableAI "FSM";
    _unit disableAI "SUPPRESSION";
    _unit disableAI "AUTOCOMBAT";
    _unit disableAI "COVER";

    //Zombie AI
    [_unit] spawn INF_fnc_smartZombies;
} else {
    
    /* Perks and Abilities */
    _unit call INF_fnc_removePerks;
    _unit call INF_fnc_zomPerkHUD;  
};

/* Effects */
_unit setAnimSpeedCoef 1.5;
_unit call INF_fnc_removeGear;
_unit call INF_fnc_BloodEffects;
_unit call INF_fnc_glowEffect;
_unit setMimic "hurt";

// Set Position near Survivors
_unit spawn INF_fnc_findRespawnPoint;

_survivors = [] call INF_S_getSurvivors;
if (count _survivors <= 0) then {
    publicVariableServer "INF_StartNewMatch";
};