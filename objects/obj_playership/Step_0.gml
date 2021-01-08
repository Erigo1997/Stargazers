/// @description Move ship. Set sprite.

// Move ship towards mouse.
move_towards_point(mouse_x - 32, mouse_y - 32, min(point_distance(x + 32, y + 32, mouse_x, mouse_y)/15, global.playerMaxSpeed));

if (obj_controller_player.invulnerable) {
	image_index = 3;
} else if (obj_controller_player.shield > 0) {
	image_index = 2;
} else {
	image_index = 0;
}