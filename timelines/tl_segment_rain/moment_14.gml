var inst;
var r = random_range(1, 10)
if (r <= 2) {
	var spawnPosition = random_range(4, room_height/2 - 64);
	inst = instance_create_layer(room_width, spawnPosition, "Instances", obj_enemy_junker);
	with(inst) {
		hspeed = global.junkerspeed;
		direction = 180;
		waveDistance = 0.5;
		waveFactor = 5;
		waveSpeed = 0.1;
	}
	var spawnPosition = random_range(room_height/2, room_height - 84);
	inst = instance_create_layer(room_width, spawnPosition, "Instances", obj_enemy_junker);
	with(inst) {
		hspeed = global.junkerspeed;
		direction = 180;
		waveDistance = 0.5;
		waveFactor = 5;
		waveSpeed = 0.1;
	}
} else {
	var spawnPosition = random_range(4, room_height - 84);
	inst = instance_create_layer(room_width, spawnPosition, "Instances", obj_enemy_junker);
	with(inst) {
		hspeed = global.junkerspeed;
		direction = 180;
		waveDistance = 0.5;
		waveFactor = 5;
		waveSpeed = 0.1;
	}
}