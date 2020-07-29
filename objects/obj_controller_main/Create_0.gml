// Create controllers neccessary for game to function.
instance_create_layer(0, 0, "Instances", obj_controller_background);
instance_create_layer(0, 0, "Instances", obj_testController);
instance_create_layer(0, 0, "Instances", obj_controller_player);
instance_create_layer(0, 0, "Instances", obj_controller_spawner);

// Wait with creating player ship so global vars and guns can initialize.
alarm_set(1, 5);