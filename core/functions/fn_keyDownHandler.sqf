params ["_display","_key","_shift","_ctrl","_alt"];
_handled = false;


if (side player != Independent) then {
    //Survivor Abilities
    _survAbility1 = player getVariable "INF_survAbility1";
    _survAbility2 = player getVariable "INF_survAbility2";
    _survAbility3 = player getVariable "INF_survAbility3";
    _survAbility4 = player getVariable "INF_survAbility4";
    switch (_key) do {
        case 2: {_handled = true; [1,_survAbility1] spawn INF_fnc_abilitiesUpdate; };
        case 3: {[player] spawn INF_fnc_layMine; [2,_ability2] call INF_fnc_abilitiesUpdate; _handled = true; };
        case 4: {[player] spawn INF_fnc_healSelf;  [3,_ability3] call INF_fnc_abilitiesUpdate; _handled = true; };
        case 5: {[player] spawn INF_fnc_spawnUAV;  [4,_ability4] call INF_fnc_abilitiesUpdate; _handled = true; };
        };    
} else {
    //Zombie Abilities
    _zomAbility1 = player getVariable "INF_zomAbility1";
    _zomAbility2 = player getVariable "INF_zomAbility2";
    _zomAbility3 = player getVariable "INF_zomAbility3";
    _zomAbility4 = player getVariable "INF_zomAbility4";
    switch (_key) do {
        case 2: {_handled = true; [1,_zomAbility1] spawn INF_fnc_abilitiesUpdate;};
    };  
};
//Universal Actions
switch (_key) do {
        //case 15:{ true call INF_fnc_scoreBoard; _handled = true;};
        case 57:{ [player] spawn INF_fnc_ActionJump; _handled = true;};
        default {_handled = false;};
};

_handled