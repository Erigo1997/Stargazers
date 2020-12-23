/// @description Rotate a little bit

if (rotateLeft && !collected) {
	image_angle += 1;
} else {
	image_angle -= 1;
}

if (collected) {
	move_towards_point( 0, 0, movespeed);
	movespeed += 1;
} else {
	hspeed = approach(hspeed, -obj_controller_spawner.junkerspeed, 0.2);
	vspeed = approach(vspeed, 0, 0.2);
}

if (self.x < 10 && self.y < 10) {
	obj_controller_player.rubies++;
	instance_destroy(self);
}

if (self.x < 0) {
	instance_destroy(self);
}

