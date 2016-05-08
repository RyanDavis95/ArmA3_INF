params ["_display","_key","_shift","_ctrl","_alt"];
_handled = false;

//Universal Actions
switch (_key) do {
        //case 15:{ false call INF_fnc_scoreBoard; _handled = true;};
        default {_handled = false;};
};

_handled