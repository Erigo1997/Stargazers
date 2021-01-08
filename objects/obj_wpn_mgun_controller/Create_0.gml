/// @description Create machinegun objects - left or right.
instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_left);
instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_right);

isLeft = true;

// Variables for use by events
cooldown = 1;
alarm[0] = 30;

// Values for settings
generatorCost = 2;
