#define ratio 3/4

class abilitiesHUD {
    idd = 4100;
    duration = 10e10;
    movingEnable = 0;
    fadeIn = 0;
    faceOut = 0;
    name = "abilitiesHUD";
    onLoad = "uiNamespace setVariable ['abilitiesHUD',_this select 0]";
    objects[] = {};
    controls[] = {
        INF_RscText_Ability1Title,
        INF_RscFrame_Ability1Frame,
        INF_RscBackground_Ability1BG,
        INF_RscPicture_Ability1Picture      
    };
    class INF_RscText_Ability1Title : RscText {
        idc = 4101;
        h = (safeZoneH / 24 * (4/3)) * (1/4);
        w = safeZoneW / 25;        
        x = safeZoneX + (.05 * ratio);
        y = safeZoneY + safeZoneH - (safeZoneH / 24 * (4/3)) - .05 - (safeZoneH / 24 * (4/3)) * (1/4);
        colorBackground[] = {0,.5,.8,.85};
        style = ST_CENTER;
        text = "[1]";
        sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)"; 
        colorText[] = {1, 1, 1, 1};
        shadow = 0;
    }; 
    class INF_RscFrame_Ability1Frame : RscText {
        idc = 4102;
        style = ST_WITH_RECT;
        h = safeZoneH / 24 * (4/3);
        w = safeZoneW / 25;        
        x = safeZoneX + (.05 * ratio);
        y = safeZoneY + safeZoneH - (safeZoneH / 24 * (4/3)) - .05;
        colorText[] = {0,0,0,1};
        colorBackground[] = {0,0,0,1}; 
            
    };
    class INF_RscBackground_Ability1BG : INF_RscBackground {
        idc = 4103;
        h = safeZoneH / 24 * (4/3);
        w = safeZoneW / 25;        
        x = safeZoneX + (.05 * ratio);
        y = safeZoneY + safeZoneH - (safeZoneH / 24 * (4/3)) - .05;
        colorBackground[] = {1,1,1,0};      
    };
    class INF_RscPicture_Ability1Picture : INF_RscProgress {
        idc = 4104;
        h = safeZoneH / 24 * (4/3);
        w = safeZoneW / 25;        
        x = safeZoneX + (.050 * ratio);
        y = safeZoneY + safeZoneH - (safeZoneH / 24 * (4/3)) - .05;
        texture = "resources\images\abilities\sprint_CA.paa";
        //colorText[] = {1,1,1,.8};
    };
};