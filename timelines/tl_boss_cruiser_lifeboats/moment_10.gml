var dir = 144;
inst[1] = instance_create_layer(obj_enemy_cruiser.x + 12 + random(130), obj_enemy_cruiser.y + dir, "Instances2", obj_enemy_lifeboat);


inst[1].vspeed = 20;
inst[1].targetx = inst[1].x;
inst[1].targety = inst[1].y + 256 + 64;
