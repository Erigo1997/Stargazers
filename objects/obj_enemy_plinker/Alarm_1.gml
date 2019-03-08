/// @description Shoot.

alarm[1] = 30;

if (instance_exists(obj_playership)) {
	var inst = instance_create_depth(x + 32, y + 32, -5, obj_bullet_enemy_small);
		with (inst) {
			speed = 20;
			direction = point_direction(x, y, obj_playership.x, obj_playership.y);
		}
}