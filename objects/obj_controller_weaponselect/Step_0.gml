/// @description Create buttons
timer++;
if (timer == 1) {
	var but = instance_create_layer(128, 64, "Instances", obj_button);
	var ad = instance_create_layer(128 + 64, 300, "Instances2", obj_ad_random);
	with (but) {
		title = "random \nand\n50 rubies";
		description = " ";
		but.ad = ad;
		result = choose(obj_wpn_mgun_controller, obj_wpn_ccan_controller);
		resultbonus = true;
	}
}

if (timer == 6) {
	var but = instance_create_layer(608, 64, "Instances", obj_button);
	var ad = instance_create_layer(608 + 64, 300, "Instances2", obj_ad_mgun);
	with (but) {
		title = "weighted\nautomatic\ncannon";
		description = " ";
		but.ad = ad;
		result = obj_wpn_mgun_controller;
	}
}

if (timer == 11) {
	var but = instance_create_layer(1088, 64, "Instances", obj_button);
	var ad = instance_create_layer(1088 + 64, 300, "Instances2", obj_ad_ccan);
	with (but) {
		title = "cluster\ncannon";
		description = " ";
		but.ad = ad;
		result = obj_wpn_ccan_controller;
	}
	timer = 32;
}