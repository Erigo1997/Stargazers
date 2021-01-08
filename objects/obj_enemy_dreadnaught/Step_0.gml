/// @description Check if dead.

if (hitpoints <= 0) {
	// Increase combo
	with (obj_controller_player) {
			event_user(1); // Combo function
	}
	
	// Create level transition controller
	instance_create_layer(0, 0, "Instances", obj_controller_leveltransition);
	
	// Create rubies
	for (i = 0; i < 80 + random(10); i++) {
		var inst;
		inst = instance_create_layer(self.x + random(sprite_width), self.y + random(sprite_height), "Instances", obj_ruby_small);
		with (inst) {
			hspeed = -obj_controller_spawner.junkerspeed - 6 + random(10);
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

// Stop moving when introduced.
if (x < room_width - (sprite_width - 2)) {
	hspeed = 0;
}

// Move all turrets.
if (instance_exists(cannonUP)) {
	cannonUP.x = self.x + 25;
	cannonUP.y = self.y + 190;
}

if (instance_exists(cannonMID)) {
	cannonMID.x = self.x + 25;
	cannonMID.y = self.y + 448;
}

if (instance_exists(cannonDW)) {
	cannonDW.x = self.x + 25;
	cannonDW.y = self.y + 708;
}