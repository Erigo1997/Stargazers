/// @description Spawn boss

// Stop all other spawning
event_user(0);
if (level == 1) {
	var spawnPosition = room_height/2 - spr_enemy_cruiser - 256;
	var inst;
	inst = instance_create_layer(room_width + 8, spawnPosition, "Instances", obj_enemy_cruiser);
	with (inst) {
		hspeed = -obj_controller_spawner.cruiserSpeed;
		waveDistance = 0.5;
	}
} else {
	var inst;
	inst = instance_create_layer(room_width + 8, 0, "Instances", obj_enemy_dreadnaught);
	with (inst) {
		hspeed = -obj_controller_spawner.cruiserSpeed;
	}
}
// Start auxiliary spawning
alarm[3] = 60;