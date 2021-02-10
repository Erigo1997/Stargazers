with (obj_controller_level1) {
	tml[2].timeline_running = false;
	tml[3].timeline_running = false;
	tml[1].timeline_speed = 0.2;
}
var spawnPosition = room_height/2 - spr_enemy_cruiser - 256;
var inst;
inst = instance_create_layer(room_width + 8, spawnPosition, "Instances", obj_enemy_cruiser);
with (inst) {
	hspeed = -global.cruiserspeed;
	waveDistance = 0.5;
	deathTrigger = obj_controller_level1;
}