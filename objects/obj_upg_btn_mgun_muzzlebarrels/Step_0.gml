/// @description Set status
if (obj_controller_techtree_mgun.upg_muzzlebarrels) {
	status = 1;
} else if (obj_controller_techtree_mgun.upg_precisionfiring) {
	status = 0;
} else {
	status = 2;
}