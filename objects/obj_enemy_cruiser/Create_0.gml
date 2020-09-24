/// @description Inherit Junker Initialize variables

// Inherit the parent event
event_inherited();
hitpoints = 100;

var inst;
	inst = instance_create_layer(self.x + 38, self.y + 19, "Instances2", obj_enemy_cruiserturret);
	var localSpeed = -self.hspeed;
	with (inst) {
		hspeed = -obj_controller_spawner.cruiserSpeed;
	}
	
var inst;
	inst = instance_create_layer(self.x + 38, self.y + 239, "Instances2", obj_enemy_cruiserturret);
	var localSpeed = -self.hspeed;
	with (inst) {
		hspeed = -obj_controller_spawner.cruiserSpeed;
	}