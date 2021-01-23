/// @description Draw self and price
draw_sprite(sprite_index, status, self.x, self.y);

draw_set_font(fnt_shop)
draw_rectangle_color(self.x - 2, self.y - 2 - 12, self.x - 2 + string_width(name) + 2, self.y - 2, c_black, c_black, c_black, c_black, false);
draw_text(self.x, self.y -16, name);
if (status == 0) {
	if (obj_controller_player.rubies >= price) {
		draw_text_color(self.x, self.y + 32, price, c_lime, c_lime, c_lime, c_lime, 1);
	} else {
		draw_text_color(self.x, self.y + 32, price, c_red, c_red, c_red, c_red, 1);
	}
} else if (status == 1) {
	draw_text_color(self.x, self.y + 32, "Bought", c_yellow, c_yellow, c_yellow, c_yellow, 1);
} else if (status == 2) {
	draw_text_color(self.x, self.y + 32, "Unavailable", c_red, c_red, c_red, c_red, 1);
}
