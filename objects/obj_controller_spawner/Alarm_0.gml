/// @description Spawns waves of enemies and calls itself.

var choice = choose("echelon", "pyramid");

switch (choice) {
	// Four plinkers in an echelon.
	case "echelon":
		var spawnPosition = random_range(4, room_height - 300);
		var inst;
		for (var i = 0; i < 4; i++) {
			inst = instance_create_layer(room_width + i * 40, spawnPosition + i * 75, "Instances", obj_enemy_junker);
			with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
			}
		}
		alarm[0] = 20 + random(30);
		break;
	// Four plinkers in a diamond shape.
	case "pyramid":
		var spawnPosition = random_range(4, room_height - 424);
		var inst;
		var r1 = 40 + random(40)
		inst = instance_create_layer(room_width + r1, spawnPosition, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
		}
		inst = instance_create_layer(room_width, spawnPosition + 90, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
		}
		inst = instance_create_layer(room_width + 120, spawnPosition + 90, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
		}
		inst = instance_create_layer(room_width + r1, spawnPosition + 180, "Instances", obj_enemy_junker);
		with(inst) {
				hspeed = -obj_controller_spawner.junkerspeed;
		}
		alarm[0] = 20 + random(30);
		break;

}