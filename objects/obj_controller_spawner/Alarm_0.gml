/// @description Spawns waves of enemies and calls itself.

var choice = choose("plinkwaver", "echelon", "pyramid", "waver");

switch (choice) {
	// Three plinkers waving
	case "plinkwaver":
		auxspawn = random_range(4, room_height - 650);
		auxcount = 3;
		alarm[2] = 1;
		break;
	// Four junkers waving up and down.
	case "waver":
		auxspawn = random_range(4, room_height - 650);
		auxcount = 4;
		alarm[1] = 1;
		break;
	// Four junkers in an echelon.
	case "echelon":
		var spawnPosition = random_range(4, room_height - 300);
		var inst;
		for (var i = 0; i < 4; i++) {
			inst = instance_create_layer(room_width + i * 40, spawnPosition + i * 75, "Instances", obj_enemy_junker);
			with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
			}
		}
		// Set Spawn marker.
		inst = instance_create_layer(room_width + 4 * 64, 0, "Instances", obj_aux_spawnMarker);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed;
		}
		break;
	// Four junkers in a diamond shape.
	case "pyramid":
		var spawnPosition = random_range(4, room_height - 424);
		var inst;
		var r1 = 64
		inst = instance_create_layer(room_width + r1, spawnPosition, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
				waveDistance = 0.3;			
		}
		inst = instance_create_layer(room_width, spawnPosition + 90, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
				waveDistance = 0.3;	
		}
		inst = instance_create_layer(room_width + 120, spawnPosition + 90, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
				waveDistance = 0.3;	
		}
		inst = instance_create_layer(room_width + r1, spawnPosition + 180, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
				waveDistance = 0.3;	
		}
		// Set Spawn marker.
		inst = instance_create_layer(room_width + 64 * 3, 0, "Instances", obj_aux_spawnMarker);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed;
		}
		break;
	case "cruiser":
		var spawnPosition = room_height/2 - spr_enemy_cruiser - 256;
		var inst;
		inst = instance_create_layer(room_width + 8, spawnPosition, "Instances", obj_enemy_cruiser);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed + 12;
		}
		alarm[0] = 60;
}