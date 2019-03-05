/// @description Move ship. Ensure ship stays within boundaries of room.

// Move ship towards mouse.
move_towards_point(mouse_x - 32, mouse_y - 32, point_distance(x + 32, y + 32, mouse_x, mouse_y)/10)
/*
if (point_distance(x + 32, y + 32, mouse_x, mouse_y) > 48) {
	move_towards_point(mouse_x - 32, mouse_y - 32, global.playerMaxSpeed)
}
*/

// Ensure ship stays in battlefield.
/* Depreciated code.
if (y < 0) {
	vspeed += global.playerMaxSpeed + 1;
}
if (y > room_height-64) {
	vspeed -= global.playerMaxSpeed + 1;
}
if (x < 0) {
	hspeed += global.playerMaxSpeed + 1;
}
if (x > room_width-64) {
	hspeed -= global.playerMaxSpeed + 1;
}
*/