/// @description Shoot.

alarm[1] = 30;

if (instance_exists(obj_playership) && obj_playership.x < self.x && point_distance(self.x, self.y, obj_playership.x, obj_playership.y) < 800) {
	var inst = instance_create_layer(x + 32, y + 32, "Bullets", obj_bullet_enemy);
		with (inst) {
			speed = 25;
			direction = point_direction(x, y, obj_playership.x, obj_playership.y);
		}
}