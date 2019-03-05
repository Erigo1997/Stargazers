/// @description Moves the gun to a spot on the playership depending on whether there is recoil or not.

switch (recoil) {
	case 0:
		x = obj_playership.x + 52;
		y = obj_playership.y + 10;
		break;
	case 1:
		x = obj_playership.x + 52;
		y = obj_playership.y + 15;
		break;
}