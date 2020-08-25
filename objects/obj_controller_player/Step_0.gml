/// @description Recharge generator if it isn't on zero. Kill player.

if (superOn) {
	generator = maxGenerator;
}

// Waits three secs to reboot the generator
if (!generatorbust && generator == 0) {
	generatorbust = true;
	alarm[0] = 90;
}

// Recharge
if (!generatorpause && !generatorbust && generator < maxGenerator) {
	generator += 2;
	if (generator == (maxGenerator - 2) || generator == (maxGenerator - 1)) {
		superReady = true;
		alarm[2] = 5;
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
	instance_destroy(obj_playership);
	hitpoints = 3;
	// Stop spawning.
	if (instance_exists(obj_controller_spawner)) {
		obj_controller_spawner.alarm[0] = -1;
		obj_controller_background.starSpeedtarget = 0;
	}
}