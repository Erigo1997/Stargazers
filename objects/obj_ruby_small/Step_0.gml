/// @description Rotate a little bit

if (rotateLeft && !collected) {
	image_angle += 1;
} else if (!rotateLeft && !collected) {
	image_angle -= 1;
}

hspeed = approach(hspeed, -obj_controller_spawner.junkerspeed, 0.2);
vspeed = approach(vspeed, 0, 0.1);

if (self.x < 0) {
	instance_destroy(self);
}

if (distance_to_object(obj_playership) < obj_controller_player.magnetRadius) {
	move_towards_point(obj_playership.x + 32, obj_playership.y + 32, max(obj_controller_player.magnetRadius/2 - distance_to_object(obj_playership), obj_controller_spawner.junkerspeed));
}
