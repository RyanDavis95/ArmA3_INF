params ["_show"];

if (_show) then {
    "StatInfo" call BIS_fnc_rscLayer;
    "StatInfo" cutRsc ["statInfo","PLAIN"];
    _infoDiag = uiNamespace getVariable "StatInfo";
} else {

    ("StatInfo" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];   
};
