params ["_display","_key","_shift","_ctrl","_alt"];
_handled = false;

_ability1 = player getVariable "INF_Ability1";
_ability2 = player getVariable "INF_Ability2";
_ability3 = player getVariable "INF_Ability3";
_ability4 = player getVariable "INF_Ability4";

//Survivor Abilities
if (side player != Independent) then {
    switch (_key) do {
        case 2: {_handled = true; [1,_ability1] spawn INF_fnc_abilitiesUpdate; };
        case 3: {[player] spawn INF_fnc_layMine; [2,_ability2] call INF_fnc_abilitiesUpdate; _handled = true; };
        case 4: {[player] spawn INF_fnc_healSelf;  [3,_ability3] call INF_fnc_abilitiesUpdate; _handled = true; };
        case 5: {[player] spawn INF_fnc_spawnUAV;  [4,_ability4] call INF_fnc_abilitiesUpdate; _handled = true; };
        };    
} else {
    //Zombie Abilities
    switch (_key) do {
        case 2: {[player] spawn INF_fnc_spawnThunderbolt; _handled = true;};
    };  
};
//Universal Actions
switch (_key) do {
        //case 15:{ true call INF_fnc_scoreBoard; _handled = true;};
        case 57:{ [player] spawn INF_fnc_ActionJump; _handled = true;};
        default {_handled = false;};
};

_handled