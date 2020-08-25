/// @description Spawn player
// Create player ship and other controllers in order.
instance_create_layer(room_width + 128, room_height/2 - 60, "Instances", obj_playership);
instance_create_layer(0, 0, "Instances", obj_wpn_mgun_controller);
obj_controller_background.starFlux = 40;
obj_controller_spawner.alarm[0] = 200; // Initiate enemies.
