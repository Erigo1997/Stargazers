/// @description Remove tech tree
drawtree = false;

for (i = 0; i < array_length_1d(buttons); i += 1) {
	instance_destroy(buttons[i]);
}