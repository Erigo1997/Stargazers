/// @description Create machinegun objects - one left and one right. Initialize variables.
instance_create_depth(0, 0, 10, obj_wpn_mgun_left);
instance_create_depth(0, 0, 10, obj_wpn_mgun_right);

cooldown = 0;
shotside = 0;