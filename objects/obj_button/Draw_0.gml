/// @description Draw self and text
if (!hover) {
	draw_sprite(spr_button, 0, self.x, self.y);
} else {
	draw_sprite(spr_button, 1, self.x, self.y);
}

draw_set_font(fnt_general);
draw_text(self.x + 64, self.y + 64, title);
