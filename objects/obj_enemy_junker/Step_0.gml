/// @description Check if dead.

if (hitpoints <= 0) {
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
		vspeed += 0.4;
	}

	if (!waveDown) {
		vspeed -= 0.4;
	}
	if (vspeed < -(waveDistance * 15) || vspeed > (waveDistance * 15)) {
		waveDown = !waveDown;
	}
}
