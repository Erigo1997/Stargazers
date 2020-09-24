/// @description Spawn boss for level 1
if (instance_exists(obj_controller_spawner)) {
	with (obj_controller_spawner) {
		event_user(1);
	}
}