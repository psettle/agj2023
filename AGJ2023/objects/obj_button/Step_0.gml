/// @description Insert description here
// You can write your code in this editor
if disabled {
	sprite_index = spr_button_covered;	
} else if alarm_get(0) >= 0 {
	sprite_index = spr_button_open_pressed;
} else {
	sprite_index = spr_button_open;
}


