/// @description Insert description here
// You can write your code in this editor
draw_self();

if show_label {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	var _width = bbox_right - bbox_left;
	draw_text(bbox_left + _width / 2, bbox_bottom + 12, label);
}