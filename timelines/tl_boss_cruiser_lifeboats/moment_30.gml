var dir = 144;
inst[3] = instance_create_layer(obj_enemy_cruiser.x + 12 + random(130), obj_enemy_cruiser.y + dir, "Instances2", obj_enemy_lifeboat);

inst[3].vspeed = 20;
inst[3].targetx = inst[3].x;
inst[3].targety = inst[3].y + 256 + 128;