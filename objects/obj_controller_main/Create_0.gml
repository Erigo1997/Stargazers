// Create controllers neccessary for game to function.
randomize(); // Randomize seed
instance_create_layer(0, 0, "Instances", obj_controller_background);
instance_create_layer(0, 0, "Instances", obj_testController);
instance_create_layer(0, 0, "Instances", obj_controller_player);
instance_create_layer(16, 16, "Instances", obj_controller_shake_minor);
instance_create_layer(0, 0, "Instances", obj_controller_spawner);
instance_create_layer(0, 0, "Instances", obj_controller_level1);
instance_create_layer(0, 0, "Instances", obj_controller_debug);
instance_create_layer(0, 0, "Instances", obj_controller_musicplayer);
instance_create_layer(0, 0, "Instances", obj_controller_mainmenu);
instance_create_layer(0, 0, "Tooltip", obj_controller_tooltip);

