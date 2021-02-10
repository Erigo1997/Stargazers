/// @description Remove objects
instance_destroy(ctrl1);

var i;
i = 9;
repeat(10) {
	instance_destroy(tml[i]);
	i--;
}