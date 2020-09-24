/// @description Check spawnmarker.
if (x <= room_width) {
	obj_controller_spawner.alarm[0] = obj_controller_spawner.relieftime;
	instance_destroy(self);
}