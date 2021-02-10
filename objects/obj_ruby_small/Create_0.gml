/// @description
if (global.cbmode) {
	sprite_index = spr_ruby_small_cb;
}

collected = false;
image_speed = 0;
rotateLeft = choose(true,false);

image_angle = random(360);

hspeed = global.junkerspeed * -1;