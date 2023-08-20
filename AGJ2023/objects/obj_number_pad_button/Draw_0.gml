draw_self();
var _sprite_num;
switch (_number) {
	case 0:
        _sprite_num = spr_zero;
    break;
		
	case 1:
        _sprite_num = spr_one;
    break;
	
	case 2:
        _sprite_num = spr_two;
    break;
	
	case 3:
        _sprite_num = spr_three;
    break;
	
	case 4:
		_sprite_num = spr_four;
    break;
	
	case 5:
        _sprite_num = spr_five;
    break;
	
	case 6:
        _sprite_num = spr_six;
    break;
	
	case 7:
        _sprite_num = spr_seven;
    break;
	
	case 8:
        _sprite_num = spr_eight;
    break;
	
	case 9:
        _sprite_num = spr_nine;
    break;
}
draw_sprite_ext(_sprite_num, curr_image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);

