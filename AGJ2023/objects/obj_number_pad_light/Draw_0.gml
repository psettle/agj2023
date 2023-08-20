var _sprite_color;
if (_color == "red") {
	_sprite_color = spr_red;
} else {
	_sprite_color = spr_green;
}

draw_sprite_ext(_sprite_color, curr_image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);