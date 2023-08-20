/// @description Press Button
// You can write your code in this editor
if !disabled {
	sprite_index = spr_button_open_pressed;
	var _duration_s = 0.5;
	alarm_set(0, _duration_s * 60);
	audio_play_sound(snd_button, 10, false);
}


