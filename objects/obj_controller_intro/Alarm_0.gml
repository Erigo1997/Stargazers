/// @description Player zooms past
var inst;
inst = instance_create_layer(-128, room_height/2 - 60, "Instances", obj_playershipcinematic);
with (inst) {
	speed = 60;
	direction = 0;
	image_speed = 0;
	image_index = 0;
}
alarm[1] = 10;