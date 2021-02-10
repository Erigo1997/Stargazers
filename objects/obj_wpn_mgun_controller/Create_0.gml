/// @description Create machinegun objects - left or right.

// References
ctrl_techtree = instance_create_layer(0, 0, "Instances", obj_controller_techtree_mgun); // Create a techtree object
instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_left);
instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_right);

isLeft = true;

// Variables for use by events
cooldown = 1;
alarm[0] = 30;

// Values for settings
generatorCost = 2;

// Set attackspeedfactor
obj_controller_player.attackspeedfactor = 8;
unload = false;

// Overloading
overload = 0;
overloadMax = 50;
