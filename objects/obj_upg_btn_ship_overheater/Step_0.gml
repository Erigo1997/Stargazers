/// @description Set status
if (obj_controller_techtree_player.upg_overheater) {
	status = 1;
} else if (obj_controller_techtree_player.upg_shieldaccelerator) {
	status = 0;
} else {
	status = 2;
}