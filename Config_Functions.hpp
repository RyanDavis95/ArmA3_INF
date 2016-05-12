class Infection_Client_Core {
    
      tag = "INF";
      
      
            class Core {
                
                file = "core";
                
                class initSurvivor {};
                class initZombie {};             
                class setupEVH {};             
            };
      
            class Functions {
            
                        file = "core\functions";
                        
                        class ActionJump {};
                        class animSync {};
                        class findRespawnPoint {};
                        class generatePos {};
                        class getNearestEnemy {};
                        class keyDownHandler {};
                        class KeyUpHandler {};
                        class mouseHandler {};
                        class playMusic {};
                        class removeGear {};
                        class removeGlow {};
                        class updateTeams {};            
            };
            
            class Survivors {
                        file = "core\survivors";
                        
                        class handleSurvDamage {};
                        class healSelf {};                       
                        class layMine {};
                        class spawnUAV {};
                        class speedBoost {};
                        class survPerkHUD {};    
            };
            
            class Zombies {
                
                      file = "core\zombies";
                      
                      class BloodEffects {};
                      class glowEffect {};
                      class handleZomDamage {};
                      class spawnThunderbolt {}; 
                      class zombieAttack {};
                      class zomPerkHUD {};                       
            };
            
            class Dialog_Controls {
                
                      file = "dialog\functions";
                      
                      class abilitiesUpdate {};  
                      class abilityCooldown {};
                      class hudSetup {};
                      class hudUpdate {};
                      class removePerks {};
                      class scoreBoard {};   
            };
            
};

class Infection_Server {
    
        tag = "INF_S";
            
            class AI {
                      file = "server\AI";
                      class AIzomAttack {}; // RF
                      class forceSprint {}; // Outdated
                      class smartZombies {};// RF
                      class trackUnit {};   //RF   
            };
            
            class functions {
                file = "server\functions";
                    class getSurvivors {};  // RF
                    class getTeam {};
                    class getZombies {};    // RF
                    class setTeam {};
                    class setupRelations {};// RF      
            };
            
            class session {
                file = "server\session";
                      class getStartLoc {}; // RF
                      class initAlphaZom {};// RF
                      class matchCleanUp {};// Unimplemented
                      class startRound {};  // RF
                      class zoneSpawn {};   // RF
                         
            };
               
};