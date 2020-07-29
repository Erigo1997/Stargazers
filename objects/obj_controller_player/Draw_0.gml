/// @description Draw HUD on the player ship

var separate = sprite_get_height(spr_hitpointbar) + 4;
var countHeight = 0;
if instance_exists(obj_playership) {
	for(var inc = 3; inc > 0; --inc) {
		if (hitpoints >= inc) {
			draw_sprite(spr_hitpointbar, 0, obj_playership.x-16, obj_playership.y - 2 + countHeight);
		} else {
			draw_sprite(spr_hitpointbar, 1, obj_playership.x-16, obj_playership.y - 2 + countHeight);
		}
		countHeight += separate;
	}
	draw_sprite(spr_generatorbar, 60 - generator, obj_playership.x - 32, obj_playership.y);
	
}
