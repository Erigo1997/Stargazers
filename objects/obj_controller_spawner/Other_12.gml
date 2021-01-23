/// @description Spawn cargo ship
var spawnPosition = room_height/2 + 128 - random(256);
var inst;
inst = instance_create_layer(room_width + 8, spawnPosition, "Instances", obj_enemy_cargo);
with (inst) {
	hspeed = -obj_controller_spawner.junkerspeed * 1.25;
	waveDistance = 0.5;
}