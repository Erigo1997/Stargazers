/// @description
var i;
i = 9;
repeat(10) {
	tml[i] = instance_create_layer(0, 0, "Instances", obj_tmldummy);
	i--;
}

tml[0].timeline_index = tl_lv2_overview;
tml[0].timeline_running = true;

ctrl1 = instance_create_layer(0, 0, "Instances", obj_tml_controller_squad);