#define ratio 3/4

class sprintPerk {
    idd = 4100;
    duration = 10e10;
    movingEnable = 0;
    fadeIn = 0;
    faceOut = 0;
    name = "sprintPerk";
    onLoad = "uiNamespace setVariable ['sprintPerk',_this select 0]";
    objects[] = {};
    controls[] = {
        INF_RscText_sprintPerkTitle,
        INF_RscFrame_sprintPerkFrame,
        INF_RscBackground_sprintPerkBG,
        INF_RscPicture_sprintPerkPicture      
    };
    class INF_RscText_sprintPerkTitle : RscText {
        idc = 4101;
        h = (safeZoneH / 24 * (4/3)) * (1/4);
        w = safeZoneW / 25;        
        x = 0;
        y = 0;
        colorBackground[] = {0,.5,.8,.85};
        style = ST_CENTER;
        text = "[1]";
        sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)"; 
        colorText[] = {1, 1, 1, 1};
        shadow = 0;
    }; 
    class INF_RscFrame_sprintPerkFrame : RscText {
        idc = 4102;
        style = ST_WITH_RECT;
        h = safeZoneH / 24 * (4/3);
        w = safeZoneW / 25;        
        x = 0;
        y = 0;
        colorText[] = {0,0,0,1};
        colorBackground[] = {0,0,0,1}; 
            
    };
    class INF_RscBackground_sprintPerkBG : INF_RscBackground {
        idc = 4103;
        h = safeZoneH / 24 * (4/3);
        w = safeZoneW / 25;        
        x = 0;
        y = 0;
        colorBackground[] = {0,0,0,.2};      
    };
    class INF_RscPicture_sprintPerkPicture : INF_RscProgress {
        idc = 4104;
        h = safeZoneH / 24 * (4/3);
        w = safeZoneW / 25;        
        x = 0;
        y = 0;
        texture = "resources\images\abilities\sprint_CA.paa";
    };
};