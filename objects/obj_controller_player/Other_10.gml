/// @description Trap the gen
if (superReady) {
	// Create some SFX
	for (i = 0; i < (120 - generatorRestartFrom)/5; i += 1) {
		var inst;
		inst = instance_create_layer(obj_playership.x - 32, obj_playership.y + random(64), "Instances", obj_sfx_shimmer);
		with (inst) {
			speed = 6 + random(5)
			direction = 170 + random(20)
			image_speed = 0;
		}
	}
	superReady = false;
	superOn = true;
	alarm[3] = (120 - generatorRestartFrom) * 2;
}