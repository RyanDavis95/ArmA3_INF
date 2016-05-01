params ["_display","_key","_shift","_ctrl","_alt"];

switch (_key) do {
        case 2: {[player] spawn INF_fnc_speedBoost};
        case 3: {[player] spawn INF_fnc_layMine};
        case 4: {[player] spawn INF_fnc_healSelf};
        case 57: {[player] spawn INF_fnc_ActionJump;};
        default {};
};