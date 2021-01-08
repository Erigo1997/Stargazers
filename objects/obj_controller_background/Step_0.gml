/// @description Send stars left
// If it's time to create a new star, create one and send it down. Otherwise increase time since last star.
if (starSpeed > 0.1 && timeSinceLastStar > starFlux) {
	var inst;
	var sspeed = starSpeed;
	// Depth 10 means the stars will be in the background of the game.
	//inst = instance_create_depth(-100 + random(room_width + 300), -10, 20, obj_back_largestar);
	inst = instance_create_layer(room_width + 4, random(room_height), "BackgroundObj", obj_back_largestar);
	with (inst) {
		speed = sspeed;
		direction = 180;
	}
	timeSinceLastStar = 0;
} else {
	timeSinceLastStar += random(100);
}

if (starSpeed < starSpeedtarget) {
	starSpeed += 1;
}
if (starSpeed > starSpeedtarget) {
	starSpeed -= 1;
}
if (instance_exists(obj_back_largestar)) {
	obj_back_largestar.direction = 180;
	obj_back_largestar.speed = starSpeed;
}
