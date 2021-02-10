/// @description Start next level
switch (currentLevelInt) {
	case 1:
	currentLevel = instance_create_layer(0, 0, "Instances", obj_controller_level1);
	break;
	case 2:
	currentLevel = instance_create_layer(0, 0, "Instances", obj_controller_level2);
	break;
}