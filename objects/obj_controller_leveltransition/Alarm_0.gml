/// @description Tech tree
if instance_exists(obj_controller_techtree_player) {
	obj_controller_techtree_player.alarm[0] = 1;
}
if instance_exists(obj_controller_techtree_mgun) {
	obj_controller_techtree_mgun.alarm[0] = 1;
}
if instance_exists(obj_controller_techtree_ccan) {
	obj_controller_techtree_ccan.alarm[0] = 1;
}

instance_create_layer(800, 768, "Instances2", obj_btn_inflate);