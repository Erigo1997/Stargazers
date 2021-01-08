/// @description Inherit Junker Initialize variables

// Inherit the parent event
event_inherited();
hitpoints = 1000;


cannonUP = instance_create_layer(self.x + 25, self.y + 190, "Instances2", obj_enemy_cruiserturret);
	
cannonMID = instance_create_layer(self.x + 25, self.y + 448, "Instances2", obj_enemy_cruiserturret);

cannonDW = instance_create_layer(self.x + 25, self.y + 708, "Instances2", obj_enemy_cruiserturret);