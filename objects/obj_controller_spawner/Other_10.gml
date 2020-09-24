/// @description Stops spawning.
if (instance_exists(obj_aux_spawnMarker)) {
	instance_destroy(obj_aux_spawnMarker);
}
alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;