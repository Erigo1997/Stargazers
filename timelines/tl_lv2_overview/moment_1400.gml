spawnPosition = room_height/2 + 128 - random(256);
var inst;
inst = instance_create_layer(room_width, spawnPosition, "Instances", obj_indicator_cargo);
inst.alarm[0] = 90;