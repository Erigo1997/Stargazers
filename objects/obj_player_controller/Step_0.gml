/// @description Recharge generator if it isn't on zero.
if (!generatorbust && generator == 0) {
	generatorbust = true;
	alarm[0] = 90;
}
if (!generatorpause && !generatorbust && generator < 60) {
	generator += 1;
}
