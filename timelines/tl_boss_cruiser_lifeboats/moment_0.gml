var dir = 64

inst[0] = instance_create_layer(obj_enemy_cruiser.x + 12 + random(130), obj_enemy_cruiser.y + dir, "Instances2", obj_enemy_lifeboat);

inst[0].vspeed = -20;
inst[0].targetx = inst[0].x;
inst[0].targety = inst[0].y - 256 - 64;