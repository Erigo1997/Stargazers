/// @description Create machinegun objects - left or right.
isLeft = true;

if (isLeft) {
	instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_left);
} else {
	instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_right);
}


// Variables for use by events
cooldown = 0;

// Values for settings
generatorCost = 3;