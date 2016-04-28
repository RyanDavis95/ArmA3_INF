private ["_aUnit","_currAnim"];

_aUnit = _this param [0, objNull];
_currAnim = _this param [1, ""];

if (_currAnim == "AmovPercMrunSnonWnonDf") then {_aUnit playmove "AmovPercMevaSnonWnonDf"};
if (_currAnim == "AmovPercMrunSnonWnonDfl") then {_aUnit playmove "AmovPercMevaSnonWnonDfl"};
if (_currAnim == "AmovPercMrunSnonWnonDfr") then {_aUnit playmove "AmovPercMevaSnonWnonDfr"};
