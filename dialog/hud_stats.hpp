#define ratio 3/4


class playerHUD {
    idd = 2100;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadout = 0;
    name = "playerHUD";
    onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]";
    objects[] = {};
    controls[] = {
        INF_RscBackground_HUD,
        INF_RscBackground_Title,
        INF_RscText_Name,
        INF_RscProgress_HUDExperience,
        INF_RscProgress_HUDHealth,
        INF_RscPicture_HUDRank,
        INF_RscText_HUDHealth,   
    };
    class INF_RscBackground_HUD : INF_RscBackground {
        x = safeZoneW + safeZoneX - 0.6 * ratio;
        y = safeZoneY + safeZoneH - 0.15;
        h = .145;
        w = .595 * ratio;
        colorBackground[] = {0,0,0,0.5};  
    };
    class INF_RscBackground_Title : INF_RscBackground {
        x = safeZoneW + safeZoneX -0.6 * ratio;
        y = safeZoneY + safeZoneH - 0.175;
        h = .025;
        w = .595 * ratio;
        colorBackground[] = {1,0.6,0,.85};      
    };
    class INF_RscText_Name : RscText {
        idc = 2200;
        x = (safeZoneW + safeZoneX - (0.6 * ratio));
        y = safeZoneY + safeZoneH - 0.175;
        h = .025;
        w = .595 * ratio;
        colorBackground[] = {0,0,0,0};
        text = "";
        sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
        style = ST_CENTER;
        colorText[] = {0, 0, 0, 1};
        shadow = 0;
    };
    class INF_RscPicture_HUDRank : RscPicture {
        idc = 2201;
        style = ST_PICTURE_OAR;
        text = "";      
        x = safeZoneW + safeZoneX - (0.6 * ratio);
        y = safeZoneY + safeZoneH - 0.15;
        h = .145 * (3/4);
        w = .595 * ratio;        
    };
    class INF_RscProgress_HUDExperience : INF_RscProgress {
        idc = 2202;
        x = safeZoneW + safeZoneX - (0.6 * ratio * (7/8));
        y = safeZoneY + safeZoneH - (0.15 * 2/8);
        h = .145 * (1/8);
        w = .595 * ratio * (3/4); 
    };
};
