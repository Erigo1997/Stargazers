/// @description Phasegear
if (phasegear && phasegearReady) {
	for (i = 0; i < 40; i += 1) {
	var inst;
	inst = instance_create_layer(obj_playership.x, obj_playership.y + random(64), "Instances", obj_sfx_shimmer);
	with (inst) {
		speed = 6 + random(5)
		direction = 170 + random(20)
		image_speed = 0;
		}
	}
	phasegearReady = false;
	invulnerable = true;
	alarm[7] = phasegearCooldown;
	alarm[8] = phasegearDuration;
}