if (isServer) then { //isDedicated for dedicated server
    [] execVM "server\initServer.sqf";
} else {
    [] execVM "client\initClient.sqf";
};