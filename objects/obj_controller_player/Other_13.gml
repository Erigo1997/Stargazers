/// @description Take Damage
invulnerable = true;
alarm[6] = 30; // Remove invul
hitpoints -= 1;
var ouch = choose(snd_player_dmg1, snd_player_dmg2, snd_player_dmg3, snd_player_dmg4);
audio_play_sound(ouch, 15, false);
