/// @description Play a small sound & use tooltip
audio_play_sound(snd_gui_rollover, 10, false);

obj_controller_tooltip.tooltipFull = "Gain 20% crystals and start next level"
with (obj_controller_tooltip) {
	event_user(0);	
}
