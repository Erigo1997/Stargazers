/// @description Run Energy Dependent Techs
if (obj_controller_techtree_mgun.upg_munitionunload) {
	if (obj_controller_player.generator < obj_controller_player.maxGenerator/2 || obj_controller_player.superOn) {
		unload = true;
	} else {
		unload = false;
	}
} else {
	unload = false;
}

if (obj_controller_techtree_mgun.upg_chamberoverload && overload < overloadMax && !mouse_check_button(mb_left)) {
	overload++;
}