var dir = 64;
inst[2] = instance_create_layer(obj_enemy_cruiser.x + 12 + random(130), obj_enemy_cruiser.y + dir, "Instances2", obj_enemy_lifeboat);

inst[2].vspeed = -20;
inst[2].targetx = inst[2].x;
inst[2].targety = inst[2].y - 256 - 128;
