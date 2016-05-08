"PlayerHUD" call BIS_fnc_rscLayer;
"PlayerHUD" cutRsc ["playerHUD","PLAIN"];
disableSerialization;
_hudDiag = uiNamespace getVariable "playerHUD";

/* Rank Settings */
_rank = profileNamespace setVariable ["INF_PlayerRank",0];
_rank = profileNamespace getVariable ["INF_PlayerRank",0];
_rankNames = getArray (missionConfigFile >> "INF_Settings" >> "Ranks");

(_hudDiag displayCtrl 2200) ctrlSetText ((_rankNames select _rank select 0) +" " + profileName);
(_hudDiag displayCtrl 2201) ctrlSetText (format ["resources\images\ranks\%1.paa",_rank]);


"abilitiesHUD" call BIS_fnc_rscLayer;
"abilitiesHUD" cutRsc ["abilitiesHUD","PLAIN"];
_aHud = uiNamespace getVariable "abilitiesHUD";

_ability1 = _aHud displayCtrl 4104;
_ability1 progressSetPosition 1;