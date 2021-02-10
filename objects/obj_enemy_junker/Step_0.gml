/// @description Check if dead.

if (hitpoints <= 0) {
	
	// Check if any upgrades need attention
	if (instance_exists(obj_controller_techtree_ccan) && obj_controller_techtree_ccan.upg_propagation) {	
		// Fire a new shot.
		if (instance_exists(obj_wpn_ccan_controller)) {
			var numshot = obj_wpn_ccan_controller.numberOfShot
		} else { 
			var numshot = 4; 
		}
		for (i = 0; i < obj_wpn_ccan_controller.numberOfShot; i += 1) {
			inst = instance_create_layer(self.x + 32, self.y + 32, "Bullets", obj_bullet_player);
			var dir = 0;
			dir = 350 + random(20);
			with (inst) {
				speed = 20 + random (10);
				direction = dir;
			}
		}
	}
	
	// Increase combo
	with (obj_controller_player) {
			event_user(1); // Combo function
	}
	
	// Create rubies
	for (i = 0; i < rubycount; i++) {
		var inst;
		inst = instance_create_layer(self.x + random(64), self.y + random(64), "Instances", obj_ruby_small);
		with (inst) {
			hspeed = -global.junkerspeed - 5 + random(10);
			vspeed = -5 + random(10);
		}
	}
	
	// Create debris
	var inst;
	var myspeed = self.speed;
	var mydir = self.direction;
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_junkerpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 0;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_junkerpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 1;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_junkerpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 2;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_junkerpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 3;
	}
	instance_destroy();
}

if (waveDistance != 0) {
	if (waveDown) {
		vspeed += waveSpeed;
	}

	if (!waveDown) {
		vspeed -= waveSpeed;
	}
	if (vspeed < -(waveDistance * waveFactor) || vspeed > (waveDistance * waveFactor)) {
		waveDown = !waveDown;
	}
}

if (sacrifice) {
	if (!instance_exists(sacrificeFor) && instance_exists(obj_playership)) {
		targetx = 0;
		targety = 0;
		sacrifice = false;
		if (obj_playership.x < x) {
			direction = point_direction(x, y, obj_playership.x, obj_playership.y);
		} else {
			direction = point_direction(x, y, -64, y);
		}
		charge = true;
	}
}

if (charge && speed < global.junkerspeed * 2.2) {
	speed += 0.5;
}

if (targetx != 0) {
	move_towards_point(targetx - 32, targety - 32, min(point_distance(self.x + 32, self.y + 32, targetx, targety)/15, global.junkerspeed));
}
