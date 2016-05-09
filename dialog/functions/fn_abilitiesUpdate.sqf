params["_abilitySlot","_ability"];
disableSerialization;

if (side player != independent) then {
    
switch (_abilitySlot) do {
    case 1: {
        _perk1 = uiNamespace getVariable "sprintPerk";
        _control = _perk1 displayCtrl 4104;
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

} else {
    switch (_abilitySlot) do {
    case 1: {
        _perk1 = uiNamespace getVariable "lightningPerk";
        hint str _perk1;
        _control = _perk1 displayCtrl 9104;
        _coolingDown = player getVariable "INF_A1CoolDown";
            if (!_coolingDown) then {         
                [player] spawn INF_fnc_spawnThunderbolt;
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
    
    
};