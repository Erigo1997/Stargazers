/// @description Tech tree
if instance_exists(obj_controller_player.ctrl_techtree) {
	obj_controller_player.ctrl_techtree.alarm[0] = 1;
	obj_controller_player.ctrl_weapon.ctrl_techtree.alarm[0] = 1;
}

instance_create_layer(800, 768, "Instances2", obj_btn_inflate);