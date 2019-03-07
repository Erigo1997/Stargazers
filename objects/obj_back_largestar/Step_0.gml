// Stars moving against mouse movement creates illusion of backdrop movement.
if (instance_exists(obj_playership)) {
	x = createx - obj_playership.x/6
}

if (y > room_height) {
	instance_destroy();
}