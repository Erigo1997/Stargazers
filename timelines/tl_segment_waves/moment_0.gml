auxspawn = random_range(4, 250);
var inst;
inst = instance_create_layer(room_width + 128, auxspawn, "Instances", obj_enemy_junker);
with(inst) {
	hspeed = -global.junkerspeed;
	waveDistance = 0.8;
	waveSpeed = 0.3;
}