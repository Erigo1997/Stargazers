/// @description

if (instance_exists(righttop) && instance_exists(rightbottom) && instance_exists(lefttop) && instance_exists(leftbottom)) {
	exit;
}

var inst = noone;
var goX, goY;
turn = (turn + 1) % 4;
switch (turn) {
	case 0:
	if (!instance_exists(righttop)) {
		goX = 1374;
		goY = 127;
		righttop = instance_create_layer(room_width, goY, "Instances", obj_enemy_plinker);
		with(righttop) {
			targetx = goX;
			targety = goY;
		}
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 74;
			targety = goY;
			sacrifice = true;
		}
		inst.sacrificeFor = righttop;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY - 70;
			sacrifice = true;
		}
		inst.sacrificeFor = righttop;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY + 70;
			sacrifice = true;
		}
		inst.sacrificeFor = righttop;
	} else {
		event_user(0);
	}
	break;
	case 1:
	if (!instance_exists(rightbottom)) {
		goX = 1374;
		goY = 701;
		rightbottom = instance_create_layer(room_width, goY, "Instances", obj_enemy_plinker);
		with(rightbottom) {
			targetx = goX;
			targety = goY;
		}
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 74;
			targety = goY;
			sacrifice = true;
		}
		inst.sacrificeFor = rightbottom;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY - 70;
			sacrifice = true;
		}
		inst.sacrificeFor = rightbottom;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY + 70;
			sacrifice = true;
		}
		inst.sacrificeFor = rightbottom;
	} else {
		event_user(0)
	}
	break;
	case 2:
	if (!instance_exists(lefttop)) {
		goX = 1182;
		goY = 219;
		lefttop = instance_create_layer(room_width, goY, "Instances", obj_enemy_plinker);
		with(lefttop) {
			targetx = goX;
			targety = goY;
		}
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 74;
			targety = goY;
			sacrifice = true;
		}
		inst.sacrificeFor = lefttop;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY + 70;
			sacrifice = true;
		}
		inst.sacrificeFor = lefttop;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY - 70;
			sacrifice = true;
		}
		inst.sacrificeFor = lefttop;
	} else {
		event_user(0)
	}
	break;
	case 3:
	if (!instance_exists(leftbottom)) {
		goX = 1182;
		goY = 572;
		leftbottom = instance_create_layer(room_width, goY, "Instances", obj_enemy_plinker);
		with(leftbottom) {
			targetx = goX;
			targety = goY;
		}
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 74;
			targety = goY;
			sacrifice = true;
		}
		inst.sacrificeFor = leftbottom;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY - 70;
			sacrifice = true;
		}
		inst.sacrificeFor = leftbottom;
		inst = instance_create_layer(room_width, goY, "Instances", obj_enemy_junker);
		with(inst) {
			targetx = goX - 50;
			targety = goY + 70;
			sacrifice = true;
		}
		inst.sacrificeFor = leftbottom;
	} else {
		event_user(0)
	}
	break;
}