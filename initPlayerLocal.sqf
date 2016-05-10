if(!hasInterface) exitWith {}; //This is a headless client

_handle = [] execVM "core\init.sqf";
waitUntil { isNull _handle; }; // Initialization of Client Complete
