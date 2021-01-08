/// @description Inherit Junker Initialize variables

// Inherit the parent event
event_inherited();
hitpoints = 250;


cannonNW = instance_create_layer(self.x + 38, self.y + 19, "Instances2", obj_enemy_cruiserturret);
	
cannonSW = instance_create_layer(self.x + 38, self.y + 239, "Instances2", obj_enemy_cruiserturret);

cannonNE = instance_create_layer(self.x + 200, self.y + 19, "Instances2", obj_enemy_cruiserturret);

cannonSE = instance_create_layer(self.x + 200, self.y + 239, "Instances2", obj_enemy_cruiserturret);