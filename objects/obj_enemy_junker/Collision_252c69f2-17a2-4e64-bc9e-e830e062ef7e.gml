/// @description Take damage.
image_index = 1;
alarm[0] = 1;
hitpoints -= 3;

// Create some SFX
for (i = 0; i < 5; i += 1) {
	var inst;
	inst = instance_create_layer(other.x, other.y, "Instances", obj_sfx_debris);
	with (inst) {
		speed = 1 + random(3)
		direction = 315 + random(90)
		image_speed = 3;
	}
}

instance_destroy(other);