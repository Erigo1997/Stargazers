// Stars moving against mouse movement creates illusion of backdrop movement.
if (instance_exists(obj_playership)) {
	y = createy - obj_playership.y/6
}

if (x < 0) {
	instance_destroy();
}