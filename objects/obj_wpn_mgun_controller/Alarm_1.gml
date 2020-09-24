/// @description Create gun
if (isLeft) {
	instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_left);
} else {
	instance_create_layer(0, 0, "Weapons", obj_wpn_mgun_right);
}
ready = true;
