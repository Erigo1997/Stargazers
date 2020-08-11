/// @description Check if dead.

if (hitpoints <= 0) {
	instance_destroy();
}

if (waveDistance != 0) {
	if (waveDown) {
		vspeed += 1;
	}

	if (!waveDown) {
		vspeed -= 1;
	}
	if (vspeed < -15 || vspeed > 15) {
		waveDown = !waveDown;
	}
}
