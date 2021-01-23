/// @description Set status
if (obj_controller_techtree_player.upg_materialregenerator) {
	status = 1;
} else if (obj_controller_techtree_player.upg_phasegear) {
	status = 0;
} else {
	status = 2;
}