/// @description Spawn spawner
// inflate player crystals 20%
obj_controller_player.rubies = round(obj_controller_player.rubies * 1.2);

obj_controller_spawner.level = 2;

if instance_exists(obj_controller_techtree_player) {
	obj_controller_techtree_player.alarm[1] = 1
}
if instance_exists(obj_controller_techtree_mgun) {
	obj_controller_techtree_mgun.alarm[1] = 1;
}
if instance_exists(obj_controller_techtree_ccan) {
	obj_controller_techtree_ccan.alarm[1] = 1;
}

obj_controller_level1.alarm[0] = 30; // Initiate