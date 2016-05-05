#define ratio 3/4


class playerHUD {
    idd = 2200;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadout = 0;
    name = "respawnDialog";
    onLoad = "uiNamespace setVariable ['respawnDialog',_this select 0]";
    objects[] = {};
    controls[] = {
        INF_RscBackground_Respawn
    };
    class INF_RscBackground_Respawn : INF_RscBackground {
      
      
    };
};


