/// @description
if (!collected) {
	audio_play_sound(choose(snd_ruby1, snd_ruby2, snd_ruby3, snd_ruby4), 5, false);
	collected = true;
	image_index = 1;
	alarm[0] = 5;
}