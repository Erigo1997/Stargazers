/// @description Turn towards player, check if dead.

if (instance_exists(obj_playership)) {
	if (instance_exists(crosshair)) {
		image_angle = point_direction(x, y, crosshair.x, crosshair.y);	
	} else {
		image_angle = point_direction(x, y, obj_playership.x, obj_playership.y);
	}


	if (shooting = true && cooldown <= 0) {
		if (!instance_exists(crosshair))
			exit; // If crosshair hasn't be created, something is wrong.
		var inst = instance_create_layer(x, y, "Bullets", obj_bullet_enemy_small);
		var gox = crosshair.x - 40 + random(80);
		var goy = crosshair.y - 40 + random(80);
		with (inst) {
			speed = 25;
			direction = point_direction(x, y, gox, goy);
		}
		cooldown = 3;
	}
	cooldown--;
}


// Check if dead.
if (hitpoints <= 0) {
	// Increase combo
	with (obj_controller_player) {
			event_user(1); // Combo function
	}
	
	// Create rubies
	for (i = 0; i < 1 + random(3); i++) {
		var inst;
		inst = instance_create_layer(self.x + random(64), self.y + random(64), "Instances", obj_ruby_small);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed - 5 + random(10);
			vspeed = -5 + random(10);
		}
	}
	
	// Create debris
	var inst;
	var myspeed = self.speed;
	var mydir = self.direction;
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserturretpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 0;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserturretpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 1;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserturretpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 2;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserturretpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 3;
	}
	instance_destroy();
}