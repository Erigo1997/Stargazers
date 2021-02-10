/// @description Recharge generator if it isn't on zero. Kill player.

// Don't allow gen to flow under or over.
if (generator < 0) {
	generator = 0;
}

if (generator > 120) {
	generator = 120;
}

if (superOn) {
	generator = maxGenerator;
}

// Waits three secs to reboot the generator
// If we have Overheater, we convert the shield into energy instead.
if (!generatorbust && generator == 0) {
	if (shield > 0 && obj_controller_techtree_player.upg_overheater) {
		shield--;
		generator = 50;
		// ------- TODO: Play some SFX ------------
	} else {
		generatorbust = true;
		alarm[0] = 150;
		combo = 0;
	}
}

// If Shield is below max, set alarm
if (shield < shieldmax && !shieldalarm) {
	shieldalarm = true;
	alarm[5] = shieldRechargeTime;
}

// Recharge Generator
if (!generatorpause && !generatorbust && generator < maxGenerator) {
	combo = 0;
	generator += 1;
	if (generator > maxGenerator) {
		generator = maxGenerator;
	}
	if (generator == (maxGenerator - 2) || generator == (maxGenerator - 1)) {
		superReady = true;
		alarm[2] = 10;
	}
}

// Recharges with ComboBoost
if (comboBoost) {
	if (generator < maxGenerator) {
	generator += 3;
		if (generator > maxGenerator) {
			generator = maxGenerator;
		}
	}
}

// Kills player.
if (hitpoints <= 0) {
	instance_create_layer(0, 0, "Mask", obj_whitemask);
	var inst;
	var myspeed = obj_playership.speed;
	var mydir = obj_playership.direction;
	inst = instance_create_layer(obj_playership.x, obj_playership.y, "Instances", obj_sfx_playershippiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 0;
	}
	inst = instance_create_layer(obj_playership.x, obj_playership.y, "Instances", obj_sfx_playershippiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 1;
	}
	inst = instance_create_layer(obj_playership.x, obj_playership.y, "Instances", obj_sfx_playershippiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 2;
	}
	inst = instance_create_layer(obj_playership.x, obj_playership.y, "Instances", obj_sfx_playershippiece);
	with (inst) {
		speed = myspeed;
		direction = mydir;
		image_speed = 0;
		image_index = 3;
	}
	
	audio_play_sound(snd_player_death, 15, false); // Play death sound
	
	instance_destroy(obj_wpn_mgun_controller); // Destroys controllers that in turn destroy objects.
	instance_destroy(obj_wpn_ccan_controller);
	
	instance_destroy(obj_playership);
	hitpoints = 3;
	
	// Stop spawning.
	if (instance_exists(obj_controller_level1)) {
		with (obj_controller_level1) {
			event_user(0); // Stops timelines
		}
	}

	instance_destroy();

	
}