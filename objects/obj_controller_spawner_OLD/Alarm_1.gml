/// @description Spawn junker wavers
if (auxcount > 0) {
	var inst;
	inst = instance_create_layer(room_width + 128, auxspawn, "Instances", obj_enemy_junker);
		with(inst) {
			hspeed = -obj_controller_spawner.junkerspeed;
			waveDistance = 1
		}
	alarm[1] = 8;
	auxcount--;
} else {
	// Set Spawn marker.
	inst = instance_create_layer(room_width + 64 * 4, 0, "Instances", obj_aux_spawnMarker);
	with (inst) {
		hspeed = -obj_controller_spawner.junkerspeed;
	}
}
