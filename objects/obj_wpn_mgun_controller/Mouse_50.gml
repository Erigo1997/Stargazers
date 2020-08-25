/// @description Shoot. Create bullets, control alarms and cooldowns.
// Make sure we at all have generator to shoot.
if (obj_controller_player.generator > 0) {
	if (cooldown == 0) {
		var inst;
		
		// Here we handle generator usage
		with (obj_controller_player) {
			event_user(0); // Traps the generator if within the timer.
		}
		obj_controller_player.generatorpause = true;
		obj_controller_player.alarm[1] = 5;
		if (obj_controller_player.generator < generatorCost) {
			obj_controller_player.generator = 0;
		} else {
			obj_controller_player.generator -= generatorCost;
		}
		
		// Shoot either left or right gun depending on whose turn it is.
		if (shotside == 1) {
			inst = instance_create_depth(obj_wpn_mgun_left.x + 24, obj_wpn_mgun_left.y, 2, obj_bullet_player);
			with (inst) {
				speed = 35;
				direction = 355 + random(10);
			}
			// Creates muzzleflash effect and moves the gun with recoil effect.
			inst = instance_create_depth(obj_wpn_mgun_left.x + 24, obj_wpn_mgun_left.y, -5, obj_sfx_muzzleflash);
			with (inst) {
				image_angle = -90;
			}
			obj_wpn_mgun_left.recoil = 1;
			obj_wpn_mgun_left.alarm[0] = 2;
			shotside = 0;
		} else if (shotside == 0) {
			inst = instance_create_depth(obj_wpn_mgun_right.x + 24, obj_wpn_mgun_right.y, -5, obj_bullet_player);
			with (inst) {
				speed = 35;
				direction = 355 + random(10);
			}
			inst = instance_create_depth(obj_wpn_mgun_right.x + 24, obj_wpn_mgun_right.y, 2, obj_sfx_muzzleflash);
			with (inst) {
				image_angle = -90;
			}
			obj_wpn_mgun_right.recoil = 1;
			obj_wpn_mgun_right.alarm[0] = 2;
			shotside = 1;
		}
		// Code that must occur regardless of side happens here.
		audio_play_sound(snd_mgun, 10, false);
		cooldown = 1;
		alarm[0] = 6 - global.playerAttackSpeed;
	}
}