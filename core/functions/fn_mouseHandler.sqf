params ["_display","_mouseBtn","","","_shift","_ctrl","_alt"];

if (side player == Independent) then {
    switch (_mouseBtn) do {
    case 0: { [player] spawn INF_fnc_zombieAttack };
    case 1: { };
    default { };
    };
};