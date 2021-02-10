/// @description Runs triggerDeath if it's set to something.
if (deathTrigger != noone) {
	with (deathTrigger) {
		event_user(10);
	}
}