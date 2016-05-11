class Infection_Client_Core
{
      tag = "INF";
      
      
            class Core {
                file = "core";
                class initZombie {};
                class initSurvivor {};
                class setupEVH {};
              
            }
      
            class Functions {
            
                        file = "core\functions";
                        class removeGear {};
                        class ActionJump {};
                        class findRespawnPoint {};
                        class playMusic {};
                        class keyDownHandler {};
                        class KeyUpHandler {};
                        class mouseHandler {};
                        class updateTeams {};
                        class animSync {};
                        class cleanUp {};
                        class generatePos {};
                        
            };
            
            class Survivors {
                        file = "core\survivors";
                        class healSelf {};
                        class layMine {};
                        class speedBoost {};
                        class spawnUAV {};
                        class handleSurvDamage {};
                        class survPerkHUD {};     
            };
            
            class Zombies {
                      file = "core\zombies";
                        class zombieAttack {};     
                        class BloodEffects {};
                        class handleZomDamage {};
                        class spawnThunderbolt {};        
                        class glowEffect {};
                        class zomPerkHUD {};
            };
            
            class Server {
                      file = "server";
                      class initAI {};
                      class initAISurvivor {};
                      class initAIZombie {};
                      class initAlphaZombie {};
                      
            };
            
            class AI {
                      file = "server\AI";
                      class automatedAttack {};
                      class trackSurvivor {}; 
                      class forceSprint {};
            };
            
            class ServerFunctions {
                      file = "server\functions";
                      class nearestUnit {};
                      class getStartLoc {};
                      class matchhandler {};
            };
            
            class Dialog {
                      file = "dialog\functions";
                      class scoreBoard {};
                      class hudSetup {};
                      class hudUpdate {};   
                      class abilitiesUpdate {};  
                      class abilityCooldown {};
                      class removePerks {};       
            };
            
};
