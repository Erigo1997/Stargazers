// Create controllers neccessary for game to function.
randomize(); // Randomize seed
instance_create_layer(0, 0, "Instances", obj_controller_background);
instance_create_layer(0, 0, "Instances", obj_controller_player);
instance_create_layer(16, 16, "Instances", obj_controller_shake_minor);
instance_create_layer(0, 0, "Instances", obj_controller_debug);
instance_create_layer(0, 0, "Instances", obj_controller_musicplayer);
instance_create_layer(0, 0, "Instances", obj_controller_mainmenu);
instance_create_layer(0, 0, "Tooltip", obj_controller_tooltip);
instance_create_layer(0, 0, "Instances", obj_controller_particle);
instance_create_layer(0, 0, "Instances", obj_controller_meta);

global.junkerspeed = 12;
global.cruiserspeed = 4;
global.cbmode = false;