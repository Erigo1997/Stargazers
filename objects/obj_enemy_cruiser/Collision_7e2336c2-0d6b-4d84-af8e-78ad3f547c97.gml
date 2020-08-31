/// @description Take Damage

// Inherit the parent event
event_inherited();

var inst;
	inst = instance_create_layer(16, 16, "Instances", obj_enemy_cruiserturret);
	var localSpeed = self.speed;
	with (inst) {
		speed = localSpeed;
		direction = 180;
	}
	
var inst;
	inst = instance_create_layer(16, 240, "Instances", obj_enemy_cruiserturret);
	var localSpeed = self.speed;
	with (inst) {
		speed = localSpeed;
		direction = 180;
	}