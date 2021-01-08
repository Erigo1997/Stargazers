/// @description Take Damage
if (obj_controller_player.invulnerable) { exit }

// Check shield.
image_index = 1;
if (obj_controller_player.shield > 0) { // We should play a different sound here when shield is hit.
	obj_controller_player.shield -= 1;
} else {
	with (obj_controller_player) {
		event_user(3);
	}
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


instance_destroy(other);