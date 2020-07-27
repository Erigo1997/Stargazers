/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08CD8BBA
/// @DnDArgument : "code" "var separate = sprite_get_height(spr_hitpointbar) + 4;$(13_10)var countHeight = 0;$(13_10)if instance_exists(obj_playership) {$(13_10)	for(var inc = 3; inc > 0; --inc) {$(13_10)		if (hitpoints >= inc) {$(13_10)			draw_sprite(spr_hitpointbar, 0, obj_playership.x-16, obj_playership.y - 2 + countHeight);$(13_10)		} else {$(13_10)			draw_sprite(spr_hitpointbar, 1, obj_playership.x-16, obj_playership.y - 2 + countHeight);$(13_10)		}$(13_10)		countHeight += separate;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)/// @description Draw HUD on the player ship"
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
	
}


/// @description Draw HUD on the player ship