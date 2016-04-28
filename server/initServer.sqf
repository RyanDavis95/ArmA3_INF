{
          
       if (side _x == West) then {
           //_x call INF_fnc_createSurvivor;
           
       };   
          
       if (side _x == East) then {
           _x call INF_fnc_createZombie;
           _x addMPEventHandler["MPRespawn",{_this call INF_fnc_createZombie}];
       };
          
} forEach playableUnits;
