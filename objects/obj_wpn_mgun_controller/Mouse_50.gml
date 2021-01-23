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
		
		// Shoot weapon
		var currentGun = noone;
		if (isLeft) {
			currentGun = obj_wpn_mgun_left;
		} else {
			currentGun = obj_wpn_mgun_right;
		}
		inst = instance_create_layer(currentGun.x + 24, currentGun.y, "Bullets", obj_bullet_player);
		if (obj_controller_techtree_mgun.upg_piercingammunition) {
			inst.piercing = true;
		}
		if (obj_controller_techtree_mgun.upg_fragmentationheads) {
			inst.fragmentation = 1;
			if (obj_controller_techtree_mgun.upg_shatterheads) {
				inst.fragmentation = 2;
			}
		}
		with (inst) {
			speed = 35;
			if (!obj_controller_techtree_mgun.upg_precisionfiring) 
			{
				direction = 350 + random(20);
			} else {
				direction = 360;
			}
		}
		if (obj_controller_techtree_mgun.upg_muzzlebarrels) {
			inst = instance_create_layer(currentGun.x + 24, currentGun.y, "Bullets", obj_bullet_player);
			inst.small = true;
			inst.speed = 25;
			inst.direction = 360 + 3
			inst = instance_create_layer(currentGun.x + 24, currentGun.y, "Bullets", obj_bullet_player);
			inst.small = true;
			inst.speed = 25;
			inst.direction = 360 - 3
			if (obj_controller_techtree_mgun.upg_muzzlestorm) {
				inst = instance_create_layer(currentGun.x + 24, currentGun.y, "Bullets", obj_bullet_player);
				inst.small = true;
				inst.speed = 25;
				inst.direction = 360 + 5
				inst = instance_create_layer(currentGun.x + 24, currentGun.y, "Bullets", obj_bullet_player);
				inst.small = true;
				inst.speed = 25;
				inst.direction = 360 - 5
			}
		}
		// Creates muzzleflash effect and moves the gun with recoil effect.
		inst = instance_create_layer(currentGun.x + 24, currentGun.y, "Bullets", obj_sfx_muzzleflash);
		with (inst) {
			image_angle = -90;
		}
		currentGun.recoil = 1;
		currentGun.alarm[0] = 2;
		
		// Code that must occur regardless of side happens here.
		isLeft = !isLeft;
		obj_controller_shake_minor.shake = true;
		audio_play_sound(snd_mgun, 10, false);
		cooldown = 1;
		if (overload > 0) {
			alarm[0] = 1;
			overload --;
			overload --;
		} else if (!unload) {
			alarm[0] = obj_controller_player.attackspeedfactor;
		} else {
			alarm[0] = obj_controller_player.attackspeedfactor/2;
		}
	}
}