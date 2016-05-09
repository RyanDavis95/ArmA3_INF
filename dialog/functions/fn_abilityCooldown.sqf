disableSerialization;
params ["_control","_slot", "_ability"];

_aTime = _ability select 1; // Ability Total Time
_svrTime = serverTIme;
_svrTimeElp = 0;

switch (_slot) do {
    case 1: {
        waitUntil { 
        sleep .1;
        _svrTimeElp = serverTime - _svrTime;
        _ratio = _svrTimeElp / _aTime;
        _control progressSetPosition _ratio;
        _svrTimeElp >= _aTime};
        player setVariable ["INF_A1CoolDown",false,false];  
    };
       
    case 2: { 
        _coolDownRem = player getVariable "INF_A2CoolDownRem"
    
    
    
    };
    
    
    
    case 3: { 
        _coolDownRem = player getVariable "INF_A3CoolDownRem"
    
    
    
    };
    
    
    
    case 4: { 
        _coolDownRem = player getVariable "INF_A4CoolDownRem"
    
    
    
    };
    
    
    
    default { };
};