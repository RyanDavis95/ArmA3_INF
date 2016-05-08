#define ratio 3/4
#define halfway 1/2


class scoreBoard {
    idd = 2300;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadout = 0;
    name = "scoreBoard";
    onLoad = "uiNamespace setVariable ['scoreBoard',_this select 0];";
    objects[] = {};
    controls[] = {
        INF_ScoreBoardBackground_Background,
        INF_ScoreBoardListbox_Listbox
    };
    class INF_ScoreBoardBackground_Background : INF_RscBackground {
      idc = 2200;
        x = 0;
        y = 0;
        h = 1;
        w = 1;
        colorBackground[] = {.5,.5,.5,0.8}; 
    };
    class INF_ScoreBoardListbox_Listbox : RscListBox{
        idc = 2201
        x = 0;
        y = 0;
        h = 1;
        w = 1;
        onLoad = "(_this select 0) ctrlAddEventHandler ['mouseZChanged',{hint 'hello'}];";
        //onMouseZChanged = "hint 'hello'";
        //colorBackground[] = {0,0,0,0.8};
        //text = "";
    };
};