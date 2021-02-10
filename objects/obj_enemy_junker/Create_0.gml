/// @description Initialize variables.
hitpoints = 16;
image_speed = 0;
waveDistance = 0; // If 0, the ship wont wave.
waveFactor = 15;
waveSpeed = 0.1;
waveDown = true; // Used to wave.

// Target x and y to send the ship a certain place
targetx = 0;
targety = 0;

// If set, this ship will charge towards the player (if in front) or simply to end of room upon targets death.
sacrifice = false;
sacrificeFor = noone;
charge = false;

crashImmune = false // If hitting the player ship, this will die.

// Give this var a value to call User Event 10, which will change level, upon death.
deathTrigger = noone;


rubycount = 2 + random(5);