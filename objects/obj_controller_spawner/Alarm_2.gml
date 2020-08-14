/// @description Spawns plinker wavers
if (auxcount > 0) {
	var inst;
	inst = instance_create_layer(room_width + 128, auxspawn, "Instances", obj_enemy_plinker);
		with(inst) {
			hspeed = -obj_controller_spawner.junkerspeed;
			waveDistance = 1
		}
	alarm[2] = 8
	auxcount--;
} else {
	alarm[0] = 20 + random(30);
}
