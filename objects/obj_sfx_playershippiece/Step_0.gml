/// @description Rotate and fade out.
image_angle = image_angle + rotateSpeed;

image_alpha -= 0.01;
if (image_alpha < 0) {
	instance_destroy();
}