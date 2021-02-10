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
	if (!superOn) {
		draw_sprite(spr_generatorbar, (120 - generator)/2, obj_playership.x - 32, obj_playership.y);
	} else {
		draw_sprite(spr_generatorbar, 61, obj_playership.x - 32, obj_playership.y);	
	}
	
	// Draw combo
	if (combo > 2) {
		draw_set_font(fnt_general);
		draw_text(obj_playership.x + 24, obj_playership.y - 32, combo); 
	}
	
	// Draw rubies
	draw_set_font(fnt_general);
	draw_text(60, 10, rubies);
	if (global.cbmode) {
		draw_sprite(spr_ruby_large_cb, 0, 20, 14);
	} else {
		draw_sprite(spr_ruby_large, 0, 20, 14);
	}
	
	// Draw phasegear
	if (phasegear) {
		if (phasegearReady) {
			draw_sprite(spr_phasegearstatus, 0, obj_playership.x, obj_playership.y + 66);
		} else {
			draw_sprite(spr_phasegearstatus, 1, obj_playership.x, obj_playership.y + 66);
		}
	}
	
}

