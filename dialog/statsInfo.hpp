#define ratio 3/4
#define halfway 1/2


class statInfo {
    idd = 2300;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadout = 0;
    name = "statInfo";
    onLoad = "uiNamespace setVariable ['respawnScreen',_this select 0]";
    objects[] = {};
    controls[] = {
        INF_RscBackground_Respawn
    };
    class INF_RscBackground_Respawn : INF_RscBackground {
      idc = 2201;
        x = 0;
        y = 0;
        h = 1;
        w = 1;
        colorBackground[] = {1,1,1,0.8}; 
    };
};