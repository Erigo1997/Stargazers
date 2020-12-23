/// @description Spawn crosshairs
if (!instance_exists(obj_playership)) {
	alarm[1] = 60;
	exit;
}
crosshair = instance_create_layer(obj_playership.x - 128 + random(256), obj_playership.y - 128 + random(256), "Instances2", obj_sfx_enemycrosshair);
alarm[2] = 10;
