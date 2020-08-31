/// @description Increase combo, gives bonuses.
combo++;

// Give a little generator boost
if (combo % 5 == 0) {
	comboBoost = true;
	alarm[4] = 30;
}