/// @description Initialize Player Variables
// Overall meta vars
rubies = 0;
hitpoints = 3;
invulnerable = false;
speedfactor = 20;
attackspeedfactor = 1;

// Shield vars
shield = 1;
shieldmax = 1;
shieldRechargeTime = 180;
shieldalarm = false;

// Generator functions
generator = 120;
maxGenerator = 120;
generatorbust = false;
generatorpause = false;
generatorRestartFrom = 0;
superReady = false;
superOn = false;

// Combo vars
combo = 0;
comboBoost = false;


magnetRadius = 60; // Radius to collect rubies

// Phasegear
phasegear = false;
phasegearReady = true;
phasegearDuration = 30;
phasegearCooldown = 150;

instance_create_layer(0, 0, "Instances", obj_controller_techtree_player); // Create a player techtree object