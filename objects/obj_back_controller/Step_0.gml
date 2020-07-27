/// @description Send stars down.
// If it's time to create a new star, create one and send it down. Otherwise increase time since last star.
if (timeSinceLastStar > 100) {
	var inst;
	// Depth 10 means the stars will be in the background of the game.
	//inst = instance_create_depth(-100 + random(room_width + 300), -10, 20, obj_back_largestar);
	inst = instance_create_depth(room_width, random(room_height), 20, obj_back_largestar);
	with (inst) {
		speed = 12;
		direction = 180;
	}
	timeSinceLastStar = 0;
} else {
	timeSinceLastStar += random(100);
}