/// @description Spawns single enemies to aid the Cruiser

var choice = choose("plinker", "junker");
var inst;
switch (choice) {
	// Single plinker waving
	case "plinker":
		auxspawn = random_range(4, room_height - 70);
		auxcount = 3;
		inst = instance_create_layer(room_width + 8, auxspawn, "Instances", obj_enemy_plinker);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed;
			waveDistance = 0.5;
		}
		alarm[3] = 60;
		break;
	// Single Junker waving
	case "junker":
		auxspawn = random_range(4, room_height - 70);
		auxcount = 3;
		inst = instance_create_layer(room_width + 8, auxspawn, "Instances", obj_enemy_junker);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed;
			waveDistance = 0.5;
		}
		alarm[3] = 60;
		break;
}