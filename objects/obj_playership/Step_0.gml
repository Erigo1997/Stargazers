/// @description Move ship. Set sprite.

// Move ship towards mouse.
move_towards_point(mouse_x - 32, mouse_y - 32, min(point_distance(x + 32, y + 32, mouse_x, mouse_y)/5, obj_controller_player.speedfactor));

if (obj_controller_player.invulnerable && obj_controller_player.shield > 0) {
	image_index = 3;
} else if (obj_controller_player.invulnerable) {
	image_index = 4;
} else if (obj_controller_player.shield == 1) {
	image_index = 2;
} else if (obj_controller_player.shield == 2) {
	image_index = 5;
} else if (obj_controller_player.shield > 2) {
	image_index = 6;
} else {
	image_index = 0;
}