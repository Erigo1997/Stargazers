/// @description Check if dead.

if (hitpoints <= 0) {
	instance_destroy();
}

if (waveDistance != 0) {
	if (waveDown) {
		vspeed += 0.4;
	}

	if (!waveDown) {
		vspeed -= 0.4;
	}
	if (vspeed < -(waveDistance * 15) || vspeed > (waveDistance * 15)) {
		waveDown = !waveDown;
	}
}
