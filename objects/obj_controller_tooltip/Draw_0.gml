/// @description Draw tooltip
draw_set_font(fnt_tooltip);
if (tooltipCurrent != "" && tooltipCurrent != " ") {
	draw_rectangle_color(mouse_x + 12, mouse_y + 16, mouse_x + 12 + string_width(tooltipCurrent) + 4, mouse_y + 16 + 20, c_black, c_black, c_black, c_black, false);
	draw_text(mouse_x + 16, mouse_y + 16, tooltipCurrent);
}