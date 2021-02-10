/// @description Spawn spawner
// inflate player crystals 20%
obj_controller_player.rubies = round(obj_controller_player.rubies * 1.2);

if instance_exists(obj_controller_player.ctrl_techtree) {
	obj_controller_player.ctrl_techtree.alarm[1] = 1;
	obj_controller_player.ctrl_weapon.ctrl_techtree.alarm[1] = 1;
}

obj_controller_meta.alarm[0] = 30; // Initiate