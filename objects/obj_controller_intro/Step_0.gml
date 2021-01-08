/// @description

// Show buttons when time to present
if (present) {
	instance_create_layer(0, 0, "Instances", obj_controller_weaponselect);
	present = false;
}