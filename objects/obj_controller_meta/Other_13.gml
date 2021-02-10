/// @description Go through level transition
currentLevelInt++;
instance_destroy(currentLevel);
instance_create_layer(0,0,"Instances",obj_controller_leveltransition);
// Level transition will start alarm 0, starting next level.