//private["_hudDiag","xpBar","_currPos","_pastPos","_rank","_rankNames"];
_hudDiag = uiNamespace getVariable "playerHUD";
_xpBar = _hudDiag displayCtrl 2202;
_currPos = progressPosition _xpBar;
_pastPos = player getVariable ["INF_pastPos", -1];

if (_currPos != _pastPos) then {
    
    player setVariable ["INF_pastPos", _currPos];
    //_currPos = (_currPos + .005);
    _rank = profileNamespace getVariable ["INF_PlayerRank",0];
    
    if (_currPos >= 1) then {
        _currPos = _currPos mod 1;
        /* Update Rank Display */
        _rankNames = getArray (missionConfigFile >> "INF_Settings" >> "Ranks");
        profileNamespace setVariable ["INF_PlayerRank", _rank + 1];
        _rank = profileNamespace getVariable ["INF_PlayerRank",0];
        
        (_hudDiag displayCtrl 2200) ctrlSetText ((_rankNames select _rank select 0) +" " + profileName);
        (_hudDiag displayCtrl 2201) ctrlSetText (format ["resources\images\ranks\%1.paa",_rank]);
    };
    _xpBar progressSetPosition _currPos;  
};