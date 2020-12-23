/// @description Turn towards player

if (instance_exists(obj_playership)) {
	if (instance_exists(crosshair)) {
		image_angle = point_direction(x, y, crosshair.x, crosshair.y);	
	} else {
		image_angle = point_direction(x, y, obj_playership.x, obj_playership.y);
	}


	if (shooting = true && cooldown <= 0) {
		if (!instance_exists(crosshair))
			exit; // If crosshair hasn't be created, something is wrong.
		var inst = instance_create_layer(x, y, "Bullets", obj_bullet_enemy_small);
		var gox = crosshair.x - 40 + random(80);
		var goy = crosshair.y - 40 + random(80);
		with (inst) {
			speed = 25;
			direction = point_direction(x, y, gox, goy);
		}
		cooldown = 3;
	}
	cooldown--;
}