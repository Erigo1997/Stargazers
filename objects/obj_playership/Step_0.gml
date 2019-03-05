/// @description Ensure ship stays within boundaries of room.

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