/// @description Spawn cruiser
var spawnPosition = room_height/2 - spr_enemy_cruiser - 256;
var inst;
inst = instance_create_layer(room_width + 8, spawnPosition, "Instances", obj_enemy_cruiser);
with (inst) {
	hspeed = -obj_controller_spawner.cruiserSpeed;
}