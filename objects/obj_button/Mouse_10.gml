/// @description Set hover
hover = true;
audio_play_sound(snd_gui_rollover, 15, false);

obj_controller_tooltip.tooltipFull = description;
with (obj_controller_tooltip) {
	event_user(0);	
}