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
                        class keyHandler {};
                        class mouseHandler {};
                        class getUnitTeams {};
                        class hudSetup {};
                        class hudUpdate {};
            };
            
            class Survivors {
                        file = "core\survivors";
                        class healSelf {};
                        class layMine {};
                        class speedBoost {};
                        class spawnUAV {};       
            };
            
            class Zombies {
                      file = "core\zombies";
                        class zombieAttack {};     
                        class BloodEffects {};
                        class handleZomDamage {};
                        class spawnThunderbolt {};        
                            
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
                      
              
            };
            
};
