/// @description Start game
instance_create_layer(0,0,"Instances",obj_controller_intro);
with (obj_controller_musicplayer) { // Play combat music
	event_user(1);
}
instance_destroy();