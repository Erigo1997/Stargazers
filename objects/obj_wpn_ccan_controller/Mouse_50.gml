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
		obj_controller_player.alarm[1] = 25 - global.playerAttackSpeed; // Unpause generator. Should be longer than cooldown.
		if (obj_controller_player.generator < generatorCost) {
			obj_controller_player.generator = 0;
		} else {
			obj_controller_player.generator -= generatorCost;
		}
		
		// Shoot either left or right gun depending on whose turn it is.
		if (isLeft) {
			for (i = 0; i < 6; i += 1) {
				inst = instance_create_layer(leftweapon.x + 24, leftweapon.y, "Bullets", obj_bullet_player);
				with (inst) {
					speed = 20 + random (10);
					direction = 350 + random(20);
				}
			}
			// Creates muzzleflash effect and moves the gun with recoil effect.
			inst = instance_create_layer(leftweapon.x + 24, leftweapon.y, "Bullets", obj_sfx_muzzleflash);
			with (inst) {
				image_angle = -90;
			}
			leftweapon.recoil = 1;
			leftweapon.alarm[0] = 3;
		} else {
			for (i = 0; i < 6; i += 1) {
				inst = instance_create_layer(rightweapon.x + 24, rightweapon.y, "Bullets", obj_bullet_player);
				with (inst) {
					speed = 20 + random (10);
					direction = 350 + random(20);
				}
			}

			inst = instance_create_layer(rightweapon.x + 24, rightweapon.y, "Bullets", obj_sfx_muzzleflash);
			with (inst) {
				image_angle = -90;
			}
			rightweapon.recoil = 1;
			rightweapon.alarm[0] = 3;
		}
		// Code that must occur regardless of side happens here.
		isLeft = !isLeft;
		obj_controller_shake_minor.shake = true;
		audio_play_sound(snd_ccan, 10, false);
		cooldown = 1;
		alarm[0] = 20 - global.playerAttackSpeed;
	}
}