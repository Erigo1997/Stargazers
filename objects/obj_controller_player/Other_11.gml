/// @description Increase combo, gives bonuses.
combo++;

// Gives 30 crystals
if (combo % 4 == 0) {
	var inst = instance_create_layer(obj_playership.x + 24, obj_playership.y - 32, "Instances2", obj_combo_bonus_crystals);
	inst.direction = 180;
	inst.speed = 18;
	rubies += 30;
}

// Give a little generator boost
if (combo % 5 == 0) {
	comboBoost = true;
	alarm[4] = 30;
}