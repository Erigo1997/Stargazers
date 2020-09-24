/// @description Turn towards player

if (instance_exists(obj_playership)) {
	image_angle = point_direction(x, y, obj_playership.x, obj_playership.y);
	
	if (shooting = true && cooldown <= 0) {
		var inst = instance_create_layer(x, y, "Bullets", obj_bullet_enemy_small);
		with (inst) {
			speed = 25;
			direction = point_direction(x, y, obj_playership.x, obj_playership.y);
		}
		cooldown = 3;
	}
	cooldown--;
}