/// @description Recharge generator if it isn't on zero.

// Waits three secs to reboot the generator
if (!generatorbust && generator == 0) {
	generatorbust = true;
	alarm[0] = 90;
}

// Recharge
if (!generatorpause && !generatorbust && generator < 60) {
	generator += 2;
}
