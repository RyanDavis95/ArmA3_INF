params ["_display","_key","_shift","_ctrl","_alt"];
_handled = false;
//Survivor Abilities
hint str (side player);
if (side player != Independent) then {
    switch (_key) do {
        case 2: {[player] spawn INF_fnc_speedBoost; _handled = true;};
        case 3: {[player] spawn INF_fnc_layMine; _handled = true;};
        case 4: {[player] spawn INF_fnc_healSelf; _handled = true;};
        case 5: {[player] spawn INF_fnc_spawnUAV; _handled = true;};
        case 57: {[player] spawn INF_fnc_ActionJump; _handled = true;};
        default {_handled = false;};
        };    
} else {
    //Zombie Abilities
    switch (_key) do {
        case 2: {[player] spawn INF_fnc_spawnThunderbolt; _handled = true;};
        case 57: {[player] spawn INF_fnc_ActionJump; _handled = true;};
        default {_handled = false;};
    };  
};

_handled