/// @description Rotate a little bit

if (rotateLeft) {
	image_angle += 1;
} else {
	image_angle -= 1;
}

if (collected) {
	move_towards_point( 0, 0, movespeed);
	movespeed += 1;
}

if (self.x < 10 && self.y < 10) {
	instance_destroy(self);
}

image_index = 0;
