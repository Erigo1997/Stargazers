/// @description Create machinegun objects - one left and one right. Initialize variables.
instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_left);
instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_right);

// Variables for use by events
cooldown = 0;
shotside = 0;

// Values for settings
generatorCost = 2;