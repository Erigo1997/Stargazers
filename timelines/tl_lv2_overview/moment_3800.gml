with (obj_controller_level2) {
	tml[2].timeline_running = false;
	tml[3].timeline_running = false;
	tml[1].timeline_running = false;
	tml[4].timeline_index = tl_segment_squad;
	tml[4].timeline_running = true;
}
var spawnPosition = 0;
var inst;
inst = instance_create_layer(room_width + 8, spawnPosition, "Instances", obj_enemy_dreadnaught);
with (inst) {
	hspeed = -global.cruiserspeed;
	deathTrigger = obj_controller_level2;
}