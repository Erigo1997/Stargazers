/// @description Deal damaage
if (ignore == other) { exit }; // ignore collision if bullet wants to ignore

/// @description Take damage.
other.image_index = 1; // Set others sprite to flash white
other.alarm[0] = 1; // Changes others sprite back
if (small) {
	other.hitpoints -= 1; // Deal damage
} else {
	other.hitpoints -= 3; // Deal damage
}

// Create some SFX
var sfx_amount = 1;
if (small) {
	sfx_amount = 3;
} else {
	sfx_amount = 8;
}
for (i = 0; i < sfx_amount; i += 1) {
	var inst;
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_debris);
	with (inst) {
		speed = 1 + random(3)
		direction = 315 + random(90)
		image_speed = 3;
	}
}

if (fragmentation > 0) { // create fragmentations
	for (i = 0; i < (2 + random(3)) * fragmentation; i+= 1) {
		inst = instance_create_layer(self.x + 24, self.y, "Bullets", obj_bullet_player);
		inst.ignore = other;
		inst.small = true;
		inst.x += random(16);
		inst.direction = self.direction - 60 + random(120);
		inst.speed = 15;
	}
}

if (piercing) {
	ignore = other;
	sprite_index = spr_bullet_player;
	piercing = false;
} else {
	instance_destroy();
}

