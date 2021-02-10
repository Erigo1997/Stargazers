/// @description Destroy children
event_inherited();

timeline_running = false;

if (instance_exists(cannonNW)) {
	cannonNW.hitpoints = 0;
}

if (instance_exists(cannonSW)) {
	cannonSW.hitpoints = 0;
}

if (instance_exists(cannonNE)) {
	cannonNE.hitpoints = 0;
}

if (instance_exists(cannonSE)) {
	cannonSE.hitpoints = 0;
}
