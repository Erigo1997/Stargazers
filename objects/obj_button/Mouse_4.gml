/// @description Create ship, weapon and delete buttons.
audio_play_sound(snd_gui_select, 15, false);

instance_create_layer(room_width + 128, room_height/2 - 60, "Instances", obj_playership);
instance_create_layer(0, 0, "Instances", result);

if (resultbonus) {
	obj_controller_player.rubies += 50;
}

obj_controller_weaponselect.alarm[0] = 10;

with (obj_controller_tooltip) {
	event_user(1);	
}

instance_destroy(obj_button);