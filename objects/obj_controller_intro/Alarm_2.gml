/// @description Spawn player
// Create player ship and other controllers in order.
instance_create_layer(room_width + 128, room_height/2 - 60, "Instances", obj_playership);
var inst;
inst = instance_create_layer(0, 0, "Instances", obj_wpn_mgun_controller);
with (inst) {
	isLeft = true;
}
obj_controller_background.starFlux = 40;
obj_controller_level.alarm[0] = 1; // Initiate level 1.
