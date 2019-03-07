// Create controllers neccessary for game to function.
instance_create_layer(0, 0, "Instances", obj_globalvar_controller);
instance_create_layer(0, 0, "Instances", obj_back_controller);

// Wait with creating player ship so global vars and guns can initialize.
alarm_set(1, 5);