/// @description Destroy self and spawn the cargo ship
var inst = instance_create_layer(self.x + 8, self.y, "Instances", obj_enemy_cargo);
with (inst) {
	hspeed = -global.junkerspeed * 1.25;
	waveDistance = 0.3;
	waveSpeed = 0.2;
}
instance_destroy();