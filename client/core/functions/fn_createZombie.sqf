private ["_unit"];

_unit = _this param [0, objNull];

// Damage Vars
_unit setVariable ["INF_faceDmg",0,false];
_unit setVariable ["INF_neckDmg",0,false];
_unit setVariable ["INF_headDmg",0,false];
_unit setVariable ["INF_pelvisDmg",0,false];
_unit setVariable ["INF_abdomenDmg",0,false];
_unit setVariable ["INF_diaphragmDmg",0,false];
_unit setVariable ["INF_chestDmg",0,false];
_unit setVariable ["INF_bodyDmg", 0,false];
_unit setVariable ["INF_armsDmg",0,false];
_unit setVariable ["INF_handsDmg",0,false];
_unit setVariable ["INF_legsDmg",0,false];
_unit setVariable ["INF_overallDmg",0,false];

//EventHandlers
_unit removeAllEventHandlers "AnimChanged";
_unit removeAllEventHandlers "HandleDamage";
//_unit addEventHandler ["AnimChanged", {_this call INF_fnc_ForceSprint}];
_unit addEventHandler["HandleDamage",{_this call INF_fnc_HandleZomDamage; _this call INF_fnc_BloodEffects;}];    
_unit addMPEventHandler["MPKilled",{(_this select 0) removeAllEventHandlers "HandleDamage"}];


//waitUntil { !isNull (findDisplay 46); };


// Blood Effects
_unit call INF_fnc_BloodEffects;

// AI attributes
_unit setbehaviour "CARELESS"; 
//Increased Speed
_unit setAnimSpeedCoef 1.25;

//Appearance
_unit call INF_fnc_removeGear;

//Setup Unit Side
_eastCenter = createCenter east;// if no other east unit exists in the mission
_zomGroup = createGroup east;
[_unit] joinSilent _zomGroup;//_targetGroup could be 'group player' for example

//Attack Script
  [_unit] spawn {
    private ["_unit","_Bluefor"];
    _unit = _this param [0,objNull];
    _bluefor = [];
    {
        if (side _x == West) then {
            _bluefor pushback _x;
        };
    } forEach playableUnits;
    
    waitUntil { {sleep 0.1;
            if (_unit distance _x < 2) then {
                if (alive _x) then {
                    _unit setDir (getDir _x);
                    _unit playMove "AwopPercMstpSgthWnonDnon_throw";
                    sleep 1.5;
                    _x setDamage ((getDammage _x) + .33);
                    
                } else {
                    _bluefor = _bluefor - [_x];
                };
            }; count _bluefor == 0 || not alive _unit;
        } forEach _bluefor;   
     }; 
};  
