private ["_musicArr","_selection","_song","_duration"];
_musicArr = player getVariable "INF_MusicPlaylist";
_count = count _musicArr - 1;
while {true} do {
    
    _selection = _musicArr select (round (random _count));
    _song = _selection select 0;
    _duration = _selection select 1;

    playMusic _song;
    sleep _duration + 1;
    playMusic "";
};