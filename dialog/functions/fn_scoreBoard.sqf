"scoreBoard" call BIS_fnc_rscLayer;
"scoreBoard" cutRsc ["scoreBoard","PLAIN"];
disableSerialization;
_scoreBoard = uiNamespace getVariable "scoreBoard";

waitUntil { !isNull _scoreBoard };
//_eh = (_scoreBoard displayCtrl 2201) ctrlAddEventHandler ["mouseZChanged",{hint "hello";true;}];
//hint str _eh;



// disableSerialization;


// _scoreBoard = uiNamespace getVariable "scoreBoard";
// if (_show) then {
//     _index = 0;
//     player setVariable ["INF_ScoreBoardSelected",_index];
//     {      
//        _index = (_scoreBoard displayCtrl 2201) lbAdd (str _x);
//     } forEach playableUnits;
    
//     //_eh = (_scoreBoard displayCtrl 2201) ctrlAddEventHandler ["mouseZChanged",{hint "hello";true;}];

//     // _index = player getVariable "INF_ScoreBoardSelected";    
//     // _scoreBoard = uiNamespace getVariable "scoreBoard"; 
//     // (_scoreBoard displayCtrl 2201) lbSetCurSel (_index + 1);
//     // player setVariable ["INF_ScoreBoardSelected",_index + 1];
     
//     //player setVariable ["INF_ScoreBoardEH",_eh];
    
// } else {
//     ("scoreBoard" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
//     _eh = player getVariable "INF_ScoreBoardEH";
//     (_scoreBoard displayCtrl 2201) ctrlRemoveEventHandler ["mouseZChanged", _eh];
// };