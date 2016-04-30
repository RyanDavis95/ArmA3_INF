KeyHandlerFNC = {
    private ["_key"];
    _key = _this param [1,0];

    switch (_key) do {
        case 57: { [player] call INF_fnc_ActionJump;};
        case 2: {[player] execVM "client\core\abilities\speedBoost.sqf";};
        case 3: {[player] execVM "client\core\abilities\layMine.sqf"};
        case 4: {[player] execVM "client\core\abilities\healSelf.sqf"};
        default {};
    };
};