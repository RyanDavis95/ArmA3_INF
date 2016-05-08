params["_abilitySlot","_ability"];
disableSerialization;
_aHud = uiNamespace getVariable "abilitiesHUD";
_control = _aHud displayCtrl 4104;

switch (_abilitySlot) do {
    case 1: {
    _coolingDown = player getVariable "INF_A1CoolDown";
        if (!_coolingDown) then {         
            [player] spawn INF_fnc_speedBoost;
            player setVariable ["INF_A1CoolDown",true];
            [_control,_abilitySlot, _ability] spawn INF_fnc_AbilityCooldown;
        };        
    };
    case 2: { 
      
        
        
        
    };
    case 3: { 
        
        
        
        
    };
    case 4: { 
        
        
        
        
    };
    default { };
};