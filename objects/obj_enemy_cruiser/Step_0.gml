/// @description Check if dead.

if (hitpoints <= 0) {
	// Increase combo
	with (obj_controller_player) {
			event_user(1); // Combo function
	}
	
	// Create rubies
	for (i = 0; i < 30 + random(8); i++) {
		var inst;
		inst = instance_create_layer(self.x + random(sprite_width), self.y + random(sprite_height), "Instances", obj_ruby_small);
		with (inst) {
			hspeed = -global.junkerspeed - 6 + random(10);
			vspeed = -7 + random(12);
		}
	}
	
	// Create debris
	var inst;
	var myspeed = self.speed;
	var mydir = self.direction;
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 0;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 1;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 2;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 3;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 4;
	}
	inst = instance_create_layer(self.x, self.y, "Instances", obj_sfx_cruiserpiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 5;
	}
	
	audio_play_sound(choose(snd_ship_death1, snd_ship_death2, snd_ship_death3), 5, false);
	
	instance_destroy();
}

// Spawn lifeboats if dying
if (hitpoints < 150 && lifeboatSpawn) {
	lifeboatSpawn = false;
	alarm[1] = 5;
}

// Stop moving at the middle of the screen.
if (x < room_width/2) {
	hspeed = 0;
}

// Move all turrets.
if (instance_exists(cannonNW)) {
	cannonNW.x = self.x + 38;
	cannonNW.y = self.y + 19;
}

if (instance_exists(cannonSW)) {
	cannonSW.x = self.x + 38;
	cannonSW.y = self.y + 239;
}

if (instance_exists(cannonNE)) {
	cannonNE.x = self.x + 200;
	cannonNE.y = self.y + 19;
}

if (instance_exists(cannonSE)) {
	cannonSE.x = self.x + 200;
	cannonSE.y = self.y + 239;
}


// Adjust waving.
if (waveDistance != 0) {
	if (waveDown) {
		vspeed += 0.1;
	}

	if (!waveDown) {
		vspeed -= 0.1;
	} 
	
	if (vspeed < -(waveDistance * 10) || vspeed > (waveDistance * 10)) {
		waveDown = !waveDown;
	}
}