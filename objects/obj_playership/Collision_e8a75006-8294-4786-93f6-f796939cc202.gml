/// @description Take Damage
if (obj_controller_player.invulnerable) { exit }

image_index = 1;
alarm[0] = 1;
with (obj_controller_player) {
	event_user(3);
}

// Create some SFX
for (i = 0; i < 5; i += 1) {
	var inst;
	inst = instance_create_layer(other.x, other.y, "Instances", obj_sfx_debris);
	with (inst) {
		speed = 1 + random(3)
		direction = 45 + random(90)
		image_speed = 3;
	}
}

if (!other.crashImmune) {
	other.hitpoints = 0;
}