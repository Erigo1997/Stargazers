/// @description Attempt purchase
audio_play_sound(snd_gui_buy, 10, false);
obj_controller_leveltransition.alarm[1] = 1;
with (obj_controller_tooltip) {
	event_user(1);	
}
instance_destroy();