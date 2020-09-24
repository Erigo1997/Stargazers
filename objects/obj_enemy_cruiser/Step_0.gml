/// @description Check if dead.

// Stop moving at the middle of the screen.
if (x < room_width/2) {
	hspeed = 0;
}

// Inherit the parent event
event_inherited();

