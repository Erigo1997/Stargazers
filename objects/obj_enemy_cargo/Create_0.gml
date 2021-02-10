/// @description Insert description here
// You can write your code in this editor

if (global.cbmode) {
	sprite_index = spr_enemy_cargo_cb
}

// Inherit the parent event
event_inherited();

rubycount = 16 + random(10);
hitpoints = 10;