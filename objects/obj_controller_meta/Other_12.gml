/// @description Weapon selected
obj_controller_background.starFlux = 10;

// To give a squirt of power
obj_controller_player.rubies += 60;

currentLevelInt++;
instance_destroy(currentLevel);
instance_create_layer(0,0,"Instances",obj_controller_leveltransition);

instance_destroy(obj_controller_weaponselect);
