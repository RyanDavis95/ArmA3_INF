/*
	File: initPlayerLocal.sqf
	Description:
	Starts the initialization of the player.
*/

if(!hasInterface) exitWith {}; //This is a headless client

_handle = [] execVM "client\initClient.sqf";
waitUntil { isNull _handle; }; // Initialization of Client Complete
