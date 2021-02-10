/// @description Create machinegun objects - left or right.

// References
ctrl_techtree = instance_create_layer(0, 0, "Instances", obj_controller_techtree_ccan); // Create a techtree object
leftweapon = obj_wpn_ccan_left;
rightweapon = obj_wpn_ccan_right;

instance_create_layer(0, 0, "Weapons", leftweapon);
instance_create_layer(0, 0, "Weapons", rightweapon);

isLeft = true;

// Variables for use by events
cooldown = 1;
alarm[0] = 30;

// Values for settings
generatorCost = 10;
numberOfShot = 4;

// Set attackspeedfactor
obj_controller_player.attackspeedfactor = 30;