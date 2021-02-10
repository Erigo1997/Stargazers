var inst;
inst = instance_create_layer(room_width + 128, auxspawn, "Instances", obj_enemy_plinker);
with(inst) {
	hspeed = -global.junkerspeed;
	waveDistance = 0.8;
	waveSpeed = 0.3;
}