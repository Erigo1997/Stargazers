/// @description Attempt purchase

if (obj_controller_player.rubies >= price && status == 0) {
	obj_controller_player.rubies -= price;
	audio_play_sound(snd_gui_buy, 10, false);
	for (i = 0; i < 30; i += 1) {
		var inst;
		inst = instance_create_layer(self.x + random(16), self.y + random(32), "Instances", obj_sfx_shimmer);
		with (inst) {
			speed = 2 + random(4);
			direction = 170 + random(20)
			image_speed = 0;
		}
	}
	with (obj_controller_tooltip) { // Clear tooltip
		event_user(1);	
	}
	obj_controller_techtree_ccan.researched = switchcasename;
	with (obj_controller_techtree_ccan) {
		event_user(0);
	}
} else {
	audio_play_sound(snd_gui_error, 10, false);
}
