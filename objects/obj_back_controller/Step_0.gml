/// @description Send stars down.
// If it's time to create a new star, create one and send it down. Otherwise increase time since last star.
if (timeSinceLastStar > 100) {
	var inst;
	// Depth 10 means the stars will be in the background of the game.
	inst = instance_create_depth(random(room_width), -5, 20, obj_back_largestar);
	with (inst) {
		speed = 12;
		direction = 270;
	}
	timeSinceLastStar = 0;
} else {
	timeSinceLastStar += random(100);
}